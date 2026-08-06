.class Lcom/perm/kate/MessageThreadFragment$23;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1209
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1210
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 1211
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->showProgressBar(Z)V

    .line 1212
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1187
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 1189
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1190
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Message;

    .line 1191
    .local v6, "m":Lcom/perm/kate/api/Message;
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v6, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    goto :goto_0

    .line 1192
    .end local v6    # "m":Lcom/perm/kate/api/Message;
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, v2, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v4, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JJ)Z

    .line 1193
    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 1194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, v7}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 1198
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v0, v0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v0, :cond_3

    .line 1200
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;)V

    .line 1204
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0, v7}, Lcom/perm/kate/MessageThreadFragment;->showProgressBar(Z)V

    .line 1205
    return-void

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    goto :goto_1

    .line 1202
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$23;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2100(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_2
.end method
