.class Lcom/perm/kate/photoupload/AlbumUploader$3;
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
    .line 96
    iput-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/AlbumUploader;->access$100(Lcom/perm/kate/photoupload/AlbumUploader;)V

    .line 114
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 100
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    .line 101
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    const-string v3, "Kate.AlbumUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photo count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    .local v0, "account_id":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 104
    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/AlbumUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-interface {v3, v2}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V

    .line 106
    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-boolean v3, v3, Lcom/perm/kate/photoupload/AlbumUploader;->cancel_notification:Z

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader$3;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 108
    :cond_0
    return-void
.end method
