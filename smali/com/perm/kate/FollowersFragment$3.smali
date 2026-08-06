.class Lcom/perm/kate/FollowersFragment$3;
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
    .line 112
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 132
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 116
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 117
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 120
    .local v0, "user":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v4, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0    # "user":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v2, v5}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 122
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v2, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v2, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 124
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$3;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v2}, Lcom/perm/kate/FollowersFragment;->access$600(Lcom/perm/kate/FollowersFragment;)V

    .line 126
    :cond_1
    return-void
.end method
