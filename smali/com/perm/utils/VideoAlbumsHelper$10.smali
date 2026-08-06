.class final Lcom/perm/utils/VideoAlbumsHelper$10;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$album_id:J

.field final synthetic val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    iput-object p2, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p3, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    iput-wide p4, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$album_id:J

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 210
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 211
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$errorCallback:Lcom/perm/utils/VideoAlbumsHelper$ErrorCallback;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    new-instance v1, Lcom/perm/utils/VideoAlbumsHelper$10$1;

    invoke-direct {v1, p0}, Lcom/perm/utils/VideoAlbumsHelper$10$1;-><init>(Lcom/perm/utils/VideoAlbumsHelper$10;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$10;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 205
    return-void
.end method
