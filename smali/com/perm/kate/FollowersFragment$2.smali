.class Lcom/perm/kate/FollowersFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FollowersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 108
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 94
    check-cast p1, Ljava/util/ArrayList;

    .line 95
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    if-eqz p1, :cond_1

    .line 97
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 98
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 100
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v1, v1, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {p1}, Lcom/perm/kate/FollowersFragment;->access$600(Lcom/perm/kate/FollowersFragment;)V

    :cond_1
    return-void
.end method
