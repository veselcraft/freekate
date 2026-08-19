.class Lcom/perm/kate/MessageThreadFragment$25;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$delete_for_all:Z

.field final synthetic val$message_ids:Ljava/util/ArrayList;

.field final synthetic val$report_spam:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;ZZ)V
    .locals 0

    .line 1685
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$25;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$25;->val$message_ids:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/perm/kate/MessageThreadFragment$25;->val$delete_for_all:Z

    iput-boolean p4, p0, Lcom/perm/kate/MessageThreadFragment$25;->val$report_spam:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1691
    new-instance v4, Lcom/perm/kate/MessageThreadFragment$25$1;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$25;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/MessageThreadFragment$25$1;-><init>(Lcom/perm/kate/MessageThreadFragment$25;Landroid/app/Activity;)V

    .line 1696
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$25;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$25;->val$message_ids:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment$25;->val$delete_for_all:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/perm/kate/MessageThreadFragment$25;->val$report_spam:Z

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$25;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->deleteMessage(Ljava/util/ArrayList;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
