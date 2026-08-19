.class Lcom/perm/kate/MutualFriendsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "MutualFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MutualFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MutualFriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 72
    iget-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/MutualFriendsFragment;->users_ids:Ljava/util/ArrayList;

    .line 61
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 63
    iget-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 64
    iget-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$2;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/MutualFriendsFragment;->access$100(Lcom/perm/kate/MutualFriendsFragment;)V

    return-void
.end method
