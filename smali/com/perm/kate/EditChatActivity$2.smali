.class Lcom/perm/kate/EditChatActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditChatActivity;->showProgressBar(Z)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$300(Lcom/perm/kate/EditChatActivity;)V

    .line 181
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 165
    iget-object v3, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/perm/kate/EditChatActivity;->showProgressBar(Z)V

    move-object v2, p1

    .line 166
    check-cast v2, Ljava/util/ArrayList;

    .line 167
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v2, :cond_2

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "members_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 170
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    iget-object v6, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v6}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 171
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 173
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v4}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/db/DataHelper;->recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 174
    iget-object v3, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v3}, Lcom/perm/kate/EditChatActivity;->requeryOnUiThread()V

    .line 176
    .end local v0    # "members_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method
