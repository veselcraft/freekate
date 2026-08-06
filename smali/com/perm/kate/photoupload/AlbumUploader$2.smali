.class Lcom/perm/kate/photoupload/AlbumUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "AlbumUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/AlbumUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AlbumUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AlbumUploader;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/AlbumUploader;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 92
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/AlbumUploader;->access$100(Lcom/perm/kate/photoupload/AlbumUploader;)V

    .line 93
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 72
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "upload_url":Ljava/lang/String;
    const-string v1, "Kate.AlbumUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload_url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, v2, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, v2, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget v4, v4, Lcom/perm/kate/photoupload/AlbumUploader;->resize_option:I

    invoke-static {v2, v3, v4}, Lcom/perm/kate/photoupload/UploadHelper;->resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    .line 83
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget v1, v1, Lcom/perm/kate/photoupload/AlbumUploader;->resize_option:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v2, v2, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$2;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-static {v1, v0}, Lcom/perm/kate/photoupload/AlbumUploader;->access$000(Lcom/perm/kate/photoupload/AlbumUploader;Ljava/lang/String;)V

    .line 86
    return-void
.end method
