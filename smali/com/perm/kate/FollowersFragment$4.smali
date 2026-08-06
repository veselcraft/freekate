.class Lcom/perm/kate/FollowersFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "FollowersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FollowersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FollowersFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 152
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 139
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/InterestingPages;

    .line 140
    .local v0, "users_ids":Lcom/perm/kate/api/InterestingPages;
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, v0, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 143
    iget-object v1, v0, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 144
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$4;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/FollowersFragment;->access$700(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V

    .line 146
    :cond_0
    return-void
.end method
