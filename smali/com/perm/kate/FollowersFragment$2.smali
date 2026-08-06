.class Lcom/perm/kate/FollowersFragment$2;
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
    .line 90
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 108
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 109
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 94
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 95
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 96
    if-eqz v1, :cond_1

    .line 97
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 98
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 100
    .local v0, "u":Lcom/perm/kate/api/User;
    iget-object v3, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v3, v3, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    iget-wide v4, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v0    # "u":Lcom/perm/kate/api/User;
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$2;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v2}, Lcom/perm/kate/FollowersFragment;->access$600(Lcom/perm/kate/FollowersFragment;)V

    .line 103
    :cond_1
    return-void
.end method
