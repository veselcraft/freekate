.class final Lcom/perm/utils/FriendsListsHelper$6;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->getFriendsList(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/FriendsListsHelper$6;->val$user_id:Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 176
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 167
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 168
    invoke-static {}, Lcom/perm/utils/FriendsListsHelper;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/perm/utils/FriendsListsHelper;->access$300()V

    .line 171
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$6;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/utils/FriendsListsHelper$6;->val$user_id:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/perm/utils/FriendsListsHelper;->access$400(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    goto :goto_0
.end method
