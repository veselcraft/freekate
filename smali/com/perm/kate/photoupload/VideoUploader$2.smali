.class Lcom/perm/kate/photoupload/VideoUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "VideoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/VideoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/VideoUploader;Landroid/app/Activity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 75
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/VideoUploader;->access$200(Lcom/perm/kate/photoupload/VideoUploader;)V

    .line 76
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object p1, p1, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {p1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 57
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 59
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/photoupload/VideoUploader;->video_id:J

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload_url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Kate.VideoUploader"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v1, p1, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 64
    invoke-static {p1, v0}, Lcom/perm/kate/photoupload/VideoUploader;->access$000(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/photoupload/VideoUploader;->link:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 66
    invoke-static {p1, v0}, Lcom/perm/kate/photoupload/VideoUploader;->access$100(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {p1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    :goto_0
    return-void
.end method
