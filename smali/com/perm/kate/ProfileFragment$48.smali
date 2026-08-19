.class Lcom/perm/kate/ProfileFragment$48;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1796
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1810
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1799
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1802
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 1803
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1804
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$502(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1805
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    const v0, 0x7f0f0525

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_1
    return-void
.end method
