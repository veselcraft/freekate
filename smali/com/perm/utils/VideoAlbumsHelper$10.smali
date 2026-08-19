.class Lcom/perm/utils/VideoAlbumsHelper$10;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$album_id:J

.field final synthetic val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;J)V
    .locals 0

    .line 200
    iput-object p2, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    iput-wide p4, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$album_id:J

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 209
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 210
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    new-instance v0, Lcom/perm/utils/VideoAlbumsHelper$10$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/VideoAlbumsHelper$10$1;-><init>(Lcom/perm/utils/VideoAlbumsHelper$10;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
