.class Lcom/perm/kate/FriendsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$3;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 219
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$3;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 200
    check-cast p1, Ljava/util/ArrayList;

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 202
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$3;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v3, v3, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    const-string v2, "ff_createFriends"

    .line 203
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$3;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 206
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$3;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/FriendsFragment;->access$100(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "friend_list_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 212
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$3;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/FriendsFragment;->access$200(Lcom/perm/kate/FriendsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->fillListsMap(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
