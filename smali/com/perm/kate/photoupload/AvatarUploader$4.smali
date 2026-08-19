.class Lcom/perm/kate/photoupload/AvatarUploader$4;
.super Lcom/perm/kate/session/Callback;
.source "AvatarUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 209
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 190
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 191
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 192
    aget-object p1, p1, v1

    const-string v1, "Kate.AvatarUploader"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hash1="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object p1, p1, Lcom/perm/kate/photoupload/AvatarUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 203
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    return-void
.end method
