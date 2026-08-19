.class Lcom/perm/kate/FriendsListsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 56
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/FriendsListsFragment;->access$102(Lcom/perm/kate/FriendsListsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 57
    iget-object p1, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-static {p1}, Lcom/perm/kate/FriendsListsFragment;->access$200(Lcom/perm/kate/FriendsListsFragment;)V

    return-void
.end method
