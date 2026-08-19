.class Lcom/perm/kate/MessageThreadFragment$6;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$id1:J

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;J)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$text:Ljava/lang/String;

    iput-wide p3, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$id1:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 380
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance v8, Lcom/perm/kate/MessageThreadFragment$6$1;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v8, p0, v0}, Lcom/perm/kate/MessageThreadFragment$6$1;-><init>(Lcom/perm/kate/MessageThreadFragment$6;Landroid/app/Activity;)V

    .line 394
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$id1:J

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$text:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v5

    sget-object v7, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->editMessage(JLjava/lang/String;JLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
