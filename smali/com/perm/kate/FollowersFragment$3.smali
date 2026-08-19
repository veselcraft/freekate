.class Lcom/perm/kate/FollowersFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "FollowersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 131
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 116
    check-cast p1, Ljava/util/ArrayList;

    .line 117
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v2, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 122
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object p1, p1, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 123
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 124
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {p1}, Lcom/perm/kate/FollowersFragment;->access$600(Lcom/perm/kate/FollowersFragment;)V

    :cond_1
    return-void
.end method
