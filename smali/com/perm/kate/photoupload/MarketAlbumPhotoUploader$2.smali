.class Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "MarketAlbumPhotoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;Landroid/app/Activity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->access$100(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 71
    check-cast p1, Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.MarketAlbumPhotoUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    iget v3, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->resize_option:I

    invoke-static {v1, v2, v3}, Lcom/perm/kate/photoupload/UploadHelper;->resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    .line 77
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    iget v1, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->resize_option:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->rotate:I

    if-eqz v1, :cond_0

    .line 78
    iget-object v2, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-static {v0, p1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->access$000(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;Ljava/lang/String;)V

    return-void
.end method
