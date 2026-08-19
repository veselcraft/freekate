.class Lcom/perm/kate/photoupload/AlbumUploader$3;
.super Lcom/perm/kate/session/Callback;
.source "AlbumUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AlbumUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AlbumUploader;Landroid/app/Activity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 113
    iget-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/AlbumUploader;->access$100(Lcom/perm/kate/photoupload/AlbumUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 100
    check-cast p1, Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.AlbumUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/AlbumUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-interface {v0, p1}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V

    .line 106
    iget-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-boolean p1, p1, Lcom/perm/kate/photoupload/AlbumUploader;->cancel_notification:Z

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    :cond_0
    return-void
.end method
