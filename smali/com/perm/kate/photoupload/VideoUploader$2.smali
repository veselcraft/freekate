.class Lcom/perm/kate/photoupload/VideoUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/VideoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/VideoUploader;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/VideoUploader;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/VideoUploader;->access$200(Lcom/perm/kate/photoupload/VideoUploader;)V

    .line 76
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {v0}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    .line 77
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 58
    .local v1, "res":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "upload_url":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Long;

    .line 60
    .local v0, "_video_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 61
    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/photoupload/VideoUploader;->video_id:J

    .line 62
    :cond_0
    const-string v3, "Kate.VideoUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload_url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-static {v3, v2}, Lcom/perm/kate/photoupload/VideoUploader;->access$000(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/VideoUploader;->link:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 66
    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    invoke-static {v3, v2}, Lcom/perm/kate/photoupload/VideoUploader;->access$100(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$2;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {v3}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    goto :goto_0
.end method
