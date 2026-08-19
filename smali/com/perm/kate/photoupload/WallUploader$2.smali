.class Lcom/perm/kate/photoupload/WallUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "WallUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/WallUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/WallUploader;Landroid/app/Activity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 95
    iget-object p1, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/WallUploader;->access$100(Lcom/perm/kate/photoupload/WallUploader;)V

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

    const-string v1, "Kate.WallUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->rotate:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 79
    iget-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->rotate:Ljava/lang/Integer;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    iget v3, v0, Lcom/perm/kate/photoupload/WallUploader;->resize_option:I

    invoke-static {v1, v2, v3}, Lcom/perm/kate/photoupload/UploadHelper;->resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    .line 85
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget v1, v0, Lcom/perm/kate/photoupload/WallUploader;->resize_option:I

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/perm/kate/photoupload/WallUploader;->rotate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/perm/kate/photoupload/WallUploader;->rotate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$2;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-static {v0, p1}, Lcom/perm/kate/photoupload/WallUploader;->access$000(Lcom/perm/kate/photoupload/WallUploader;Ljava/lang/String;)V

    return-void
.end method
