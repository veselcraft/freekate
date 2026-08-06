.class final Lcom/perm/utils/FriendsListsHelper$8;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->saveCheckedLists(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$list_ids:Ljava/util/ArrayList;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$user_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$list_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 201
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 193
    check-cast v0, Ljava/lang/Integer;

    .line 194
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/utils/FriendsListsHelper$8;->val$list_ids:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/perm/utils/FriendsListsHelper;->access$500(Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 196
    :cond_0
    return-void
.end method
