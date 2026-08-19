.class Lcom/perm/kate/MessageThreadFragment$15;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$message:Lcom/perm/kate/api/Message;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$15;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$15;->val$message:Lcom/perm/kate/api/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1256
    new-instance v5, Lcom/perm/kate/MessageThreadFragment$15$1;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$15;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/perm/kate/MessageThreadFragment$15$1;-><init>(Lcom/perm/kate/MessageThreadFragment$15;Landroid/app/Activity;)V

    .line 1263
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$15;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1264
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$15;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$15;->val$message:Lcom/perm/kate/api/Message;

    iget-wide v3, v3, Lcom/perm/kate/api/Message;->mid:J

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$15;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->messagesPin(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1265
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$15;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
