.class final Lcom/perm/kate/BlackListActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    iput-object p2, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 216
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    invoke-interface {v0, v1}, Lcom/perm/kate/BlackListActivity$BlackListCallback;->onCompleted(Z)V

    .line 218
    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/perm/kate/BlackListActivity$8$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/BlackListActivity$8$1;-><init>(Lcom/perm/kate/BlackListActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/perm/kate/BlackListActivity$BlackListCallback;->onCompleted(Z)V

    .line 210
    :cond_2
    return-void
.end method
