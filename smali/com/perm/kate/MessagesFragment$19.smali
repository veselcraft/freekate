.class Lcom/perm/kate/MessagesFragment$19;
.super Ljava/lang/Thread;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->deleteSelectedDialogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$19;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 783
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v12, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v0, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$19;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 788
    .local v10, "thread_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v10, v11}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v2

    invoke-static {v10, v11}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v6, v6, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-object v8, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v8, v8, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteMessageThread(JJJJ)V

    .line 789
    invoke-static {v10, v11}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    invoke-static {v10, v11}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 792
    :cond_0
    invoke-static {v10, v11}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 794
    .end local v10    # "thread_id":J
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v1}, Lcom/perm/kate/MessagesFragment;->access$300(Lcom/perm/kate/MessagesFragment;)V

    .line 795
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V

    .line 796
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v3}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v12, v0, v2, v3}, Lcom/perm/kate/session/Session;->deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 798
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V

    .line 799
    return-void
.end method
