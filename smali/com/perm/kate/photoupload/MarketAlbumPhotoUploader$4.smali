.class Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;
.super Lcom/perm/kate/session/Callback;
.source "MarketAlbumPhotoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;Landroid/app/Activity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 140
    iget-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->access$100(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->access$100(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V

    return-void
.end method
