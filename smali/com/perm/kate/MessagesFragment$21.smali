.class Lcom/perm/kate/MessagesFragment$21;
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

    .line 918
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$21;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 927
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$21;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 928
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v6

    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v8

    iget-object v10, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v11, v10, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v13, v10, Lcom/perm/kate/MessagesFragment;->group_id:J

    move-wide v10, v11

    move-wide v12, v13

    invoke-virtual/range {v5 .. v13}, Lcom/perm/kate/db/DataHelper;->deleteMessageThread(JJJJ)V

    .line 929
    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 930
    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_0
    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v2}, Lcom/perm/kate/MessagesFragment;->access$600(Lcom/perm/kate/MessagesFragment;)V

    .line 935
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 936
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/session/Session;->deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 938
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$21;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
