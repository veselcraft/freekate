.class Lcom/perm/utils/FriendsListsHelper$8;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:Ljava/util/ArrayList;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0

    .line 189
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$user_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$list_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 193
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$user_id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$list_ids:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/perm/utils/FriendsListsHelper;->access$500(Ljava/lang/Long;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
