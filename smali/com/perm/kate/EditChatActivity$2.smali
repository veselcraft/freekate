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

    .line 168
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11

    .line 172
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 173
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/ChatMember;

    .line 178
    iget-object v5, v4, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    if-eqz v5, :cond_0

    .line 179
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    iget-object v4, v4, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/User;

    .line 185
    iget-wide v6, v5, Lcom/perm/kate/api/User;->uid:J

    iget-object v8, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v8}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    .line 186
    iget-wide v5, v5, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Group;

    const-wide/16 v6, -0x1

    .line 188
    iget-wide v8, v5, Lcom/perm/kate/api/Group;->gid:J

    mul-long v8, v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    :cond_4
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 191
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroups(Ljava/util/ArrayList;)V

    .line 192
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v4}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/perm/kate/db/DataHelper;->recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/User;

    .line 197
    iget-object v4, v4, Lcom/perm/kate/api/User;->invited_by:Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 198
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    :cond_6
    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 209
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 210
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 211
    iget-wide v3, v2, Lcom/perm/kate/api/User;->uid:J

    iget-object v5, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v5}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_7

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 219
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/EditChatActivity;->access$302(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 221
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$2;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {p1}, Lcom/perm/kate/EditChatActivity;->requeryOnUiThread()V

    :cond_9
    return-void
.end method
