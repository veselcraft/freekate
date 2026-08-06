.class final Lcom/perm/kate/BlackListActivity$6;
.super Lcom/perm/kate/session/Callback;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->AddToBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
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
    .line 149
    iput-object p2, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/perm/kate/BlackListActivity$6;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 168
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already blacklisted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    .line 169
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/perm/kate/BlackListActivity$6$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/BlackListActivity$6$2;-><init>(Lcom/perm/kate/BlackListActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    invoke-interface {v0, v2}, Lcom/perm/kate/BlackListActivity$BlackListCallback;->onCompleted(Z)V

    .line 179
    :cond_1
    return-void

    .line 176
    :cond_2
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/perm/kate/BlackListActivity$6$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/BlackListActivity$6$1;-><init>(Lcom/perm/kate/BlackListActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$6;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/perm/kate/BlackListActivity$BlackListCallback;->onCompleted(Z)V

    .line 163
    :cond_2
    return-void
.end method
