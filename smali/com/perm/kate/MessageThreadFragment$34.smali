.class Lcom/perm/kate/MessageThreadFragment$34;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1982
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$34;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1985
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$34;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 1986
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$34;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, v2, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v4

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$34;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v5

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$34;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$34;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget v10, v0, Lcom/perm/kate/MessageThreadFragment;->page_size:I

    iget-object v13, v0, Lcom/perm/kate/MessageThreadFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
