.class Lcom/perm/kate/MessageThreadFragment$16;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1271
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1274
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$16$1;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageThreadFragment$16$1;-><init>(Lcom/perm/kate/MessageThreadFragment$16;Landroid/app/Activity;)V

    .line 1281
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1282
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/perm/kate/session/Session;->messagesUnpin(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1283
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$16;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
