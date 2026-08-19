.class Lcom/perm/kate/photoupload/AvatarUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "AvatarUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$2;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 104
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$2;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 88
    check-cast p1, Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.AvatarUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$2;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v1, v0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    iget v3, v0, Lcom/perm/kate/photoupload/AvatarUploader;->resize_option:I

    invoke-static {v1, v2, v3}, Lcom/perm/kate/photoupload/UploadHelper;->resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    .line 94
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$2;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget v1, v0, Lcom/perm/kate/photoupload/AvatarUploader;->resize_option:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/perm/kate/photoupload/AvatarUploader;->rotate:I

    if-eqz v1, :cond_0

    .line 95
    iget-object v2, v0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/perm/utils/PhotoOrientationHelper;->fixOrientation(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$2;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$2;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object p1, p1, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/photoupload/AvatarUploader;->access$000(Lcom/perm/kate/photoupload/AvatarUploader;Ljava/lang/String;)V

    return-void
.end method
