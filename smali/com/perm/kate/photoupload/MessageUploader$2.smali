.class Lcom/perm/kate/photoupload/MessageUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "MessageUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MessageUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MessageUploader;Landroid/app/Activity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 91
    iget-object p1, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/MessageUploader;->access$100(Lcom/perm/kate/photoupload/MessageUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.MessageUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->rotate:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientation(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->rotate:Ljava/lang/Integer;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    iget v3, v0, Lcom/perm/kate/photoupload/MessageUploader;->resize_option:I

    invoke-static {v1, v2, v3}, Lcom/perm/kate/photoupload/UploadHelper;->resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    .line 82
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    iget v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->resize_option:I

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/perm/kate/photoupload/MessageUploader;->rotate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/perm/kate/photoupload/MessageUploader;->rotate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader$2;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    invoke-static {v0, p1}, Lcom/perm/kate/photoupload/MessageUploader;->access$000(Lcom/perm/kate/photoupload/MessageUploader;Ljava/lang/String;)V

    return-void
.end method
