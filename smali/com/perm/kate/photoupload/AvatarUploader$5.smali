.class Lcom/perm/kate/photoupload/AvatarUploader$5;
.super Lcom/perm/kate/session/Callback;
.source "AvatarUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 232
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 217
    :try_start_0
    check-cast p1, Ljava/lang/Long;

    const-string v0, "Kate.AvatarUploader"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object p1, p1, Lcom/perm/kate/photoupload/AvatarUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 226
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    return-void
.end method
