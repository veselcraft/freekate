.class Lcom/perm/kate/FollowersFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "FollowersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 150
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 138
    check-cast p1, Lcom/perm/kate/api/InterestingPages;

    .line 139
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p1, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 142
    iget-object v0, p1, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 143
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/FollowersFragment;->access$700(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V

    :cond_0
    return-void
.end method
