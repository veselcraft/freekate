.class Lcom/perm/kate/FriendsFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 236
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 237
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 220
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 221
    check-cast v0, Ljava/util/ArrayList;

    .line 222
    .local v0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v3, v3, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->createFriends(Ljava/util/ArrayList;J)V

    .line 223
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/FriendsFragment;->access$300(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "friend_list_updated"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 229
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$4;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v2}, Lcom/perm/kate/FriendsFragment;->access$400(Lcom/perm/kate/FriendsFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->fillListsMap(Ljava/util/ArrayList;)V

    .line 231
    :cond_0
    return-void
.end method
