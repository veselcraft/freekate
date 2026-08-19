.class Lcom/perm/utils/FriendsListsHelper$3;
.super Ljava/lang/Object;
.source "FriendsListsHelper.java"

# interfaces
.implements Lcom/perm/utils/FriendsListsHelper$FriendsListsCallback;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/utils/FriendsListsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$3;->val$user_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    new-instance v1, Lcom/perm/utils/FriendsListsHelper$3$1;

    invoke-direct {v1, p0}, Lcom/perm/utils/FriendsListsHelper$3$1;-><init>(Lcom/perm/utils/FriendsListsHelper$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
