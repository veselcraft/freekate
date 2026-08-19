.class Lcom/perm/utils/FriendsListsHelper$1;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;)V
    .locals 0

    .line 31
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->fillListsMap(Ljava/util/ArrayList;)V

    .line 37
    iget-object p1, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 38
    iget-object p1, p0, Lcom/perm/utils/FriendsListsHelper$1;->val$fl_callback:Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;->ready()V

    :cond_0
    return-void
.end method
