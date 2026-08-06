.class final Lcom/perm/utils/FriendsListsHelper$1;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->loadListsMap(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 44
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 35
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .local v0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->fillListsMap(Ljava/util/ArrayList;)V

    .line 37
    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 38
    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    invoke-interface {v1}, Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;->ready()V

    .line 40
    :cond_0
    return-void
.end method
