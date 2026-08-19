.class Lcom/perm/kate/FriendsFragment$15;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 709
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/FriendsFragment;->access$1502(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 696
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 697
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/FriendsFragment;->access$1500(Lcom/perm/kate/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 698
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/perm/kate/FriendsFragment;->access$1502(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 699
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 700
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$15;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/FriendsFragment$15$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$15$1;-><init>(Lcom/perm/kate/FriendsFragment$15;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
