.class Lcom/perm/kate/BlackListActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
    .locals 0

    .line 196
    iput-object p2, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v2, :cond_0

    .line 214
    check-cast v0, Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 216
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    if-eqz p1, :cond_1

    .line 217
    invoke-interface {p1, v1}, Lcom/perm/kate/BlackListActivity$BlackListCallback;->onCompleted(Z)V

    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$8;->val$activity:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/perm/kate/BlackListActivity$8$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlackListActivity$8$1;-><init>(Lcom/perm/kate/BlackListActivity$8;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/BlackListActivity$8;->val$blackListListener:Lcom/perm/kate/BlackListActivity$BlackListCallback;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 209
    invoke-interface {p1, v0}, Lcom/perm/kate/BlackListActivity$BlackListCallback;->onCompleted(Z)V

    :cond_2
    return-void
.end method
