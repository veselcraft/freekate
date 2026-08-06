.class Lcom/perm/kate/photoupload/WallUploader$3;
.super Lcom/perm/kate/session/Callback;
.source "WallUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/WallUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/WallUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/WallUploader;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/WallUploader;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/WallUploader;->access$100(Lcom/perm/kate/photoupload/WallUploader;)V

    .line 141
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 130
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .local v0, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    const-string v1, "Kate.WallUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-boolean v1, v1, Lcom/perm/kate/photoupload/WallUploader;->cancel_notification:Z

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader$3;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/WallUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-interface {v1, v0}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V

    .line 135
    return-void
.end method
