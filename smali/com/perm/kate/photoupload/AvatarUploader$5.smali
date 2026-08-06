.class Lcom/perm/kate/photoupload/AvatarUploader$5;
.super Lcom/perm/kate/session/Callback;
.source "AvatarUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/AvatarUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/AvatarUploader;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 233
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    .line 234
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 218
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    .line 219
    .local v1, "res":Ljava/lang/Long;
    const-string v3, "Kate.AvatarUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/AvatarUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1    # "res":Ljava/lang/Long;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/photoupload/AvatarUploader$5;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {v3}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    .line 228
    return-void

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    invoke-static {v2}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
