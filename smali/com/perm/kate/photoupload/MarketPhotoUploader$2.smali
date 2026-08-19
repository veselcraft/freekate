.class Lcom/perm/kate/photoupload/MarketPhotoUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "MarketPhotoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketPhotoUploader;Landroid/app/Activity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 89
    iget-object p1, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/MarketPhotoUploader;->access$100(Lcom/perm/kate/photoupload/MarketPhotoUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.MarketPhotoUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->uri:Landroid/net/Uri;

    iget v3, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->resize_option:I

    invoke-static {v1, v2, v3}, Lcom/perm/kate/photoupload/UploadHelper;->resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->uri:Landroid/net/Uri;

    .line 79
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    iget v1, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->resize_option:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->rotate:I

    if-eqz v1, :cond_0

    .line 80
    iget-object v2, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->uri:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MarketPhotoUploader;->uri:Landroid/net/Uri;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$2;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    invoke-static {v0, p1}, Lcom/perm/kate/photoupload/MarketPhotoUploader;->access$000(Lcom/perm/kate/photoupload/MarketPhotoUploader;Ljava/lang/String;)V

    return-void
.end method
