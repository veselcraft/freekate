.class Lcom/perm/kate/FriendsFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 736
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 737
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 730
    check-cast p1, Ljava/util/ArrayList;

    .line 731
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/FriendsFragment;->access$1900(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V

    return-void
.end method
