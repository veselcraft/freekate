.class Lcom/perm/kate/ProfileFragment$25;
.super Ljava/lang/Thread;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$25;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1361
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$25;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$25;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/perm/utils/FakeCheck;->check(Landroid/app/Activity;Ljava/lang/Long;)V

    .line 1362
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$25;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1363
    invoke-static {}, Lcom/perm/utils/FakeCheck;->isFake()Z

    move-result v0

    .line 1364
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$25;->this$0:Lcom/perm/kate/ProfileFragment;

    if-eqz v0, :cond_0

    const v2, 0x7f0f00e5

    goto :goto_0

    :cond_0
    const v2, 0x7f0f00e4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 1365
    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->reportFakeCheck(Z)V

    return-void
.end method
