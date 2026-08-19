.class Lcom/perm/kate/MessageThreadFragment$17$1;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$17;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$17;Ljava/lang/String;)V
    .locals 0

    .line 1310
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->this$1:Lcom/perm/kate/MessageThreadFragment$17;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1315
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->this$1:Lcom/perm/kate/MessageThreadFragment$17;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$17;->val$message:Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v6, v0}, Lcom/perm/kate/WallPostActivity;->attachmentsToStrings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1318
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->this$1:Lcom/perm/kate/MessageThreadFragment$17;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->this$1:Lcom/perm/kate/MessageThreadFragment$17;

    iget-wide v2, v1, Lcom/perm/kate/MessageThreadFragment$17;->val$message_id:J

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->val$text:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v7

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->this$1:Lcom/perm/kate/MessageThreadFragment$17;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v9, v1, Lcom/perm/kate/MessageThreadFragment;->editCallback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v7

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->editMessage(JLjava/lang/String;JLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1319
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$17$1;->this$1:Lcom/perm/kate/MessageThreadFragment$17;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
