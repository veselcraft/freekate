.class Lcom/perm/kate/photoupload/WallUploader$3;
.super Lcom/perm/kate/session/Callback;
.source "WallUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/WallUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/WallUploader;Landroid/app/Activity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 142
    iget-object p1, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/WallUploader;->access$100(Lcom/perm/kate/photoupload/WallUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 132
    check-cast p1, Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.WallUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-boolean v0, v0, Lcom/perm/kate/photoupload/WallUploader;->cancel_notification:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/WallUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-interface {v0, p1}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V

    return-void
.end method
