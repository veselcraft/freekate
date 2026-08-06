.class Lcom/perm/kate/photoupload/AvatarUploader$4;
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
    .line 187
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 210
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    .line 211
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 191
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 192
    .local v2, "res":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v3, v2, v5

    .line 193
    .local v3, "src":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, v2, v5

    .line 194
    .local v1, "hash1":Ljava/lang/String;
    const-string v5, "Kate.AvatarUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo src="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hash1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v5, v5, Lcom/perm/kate/photoupload/AvatarUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/perm/kate/photoupload/UploadCallback;->success(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1    # "hash1":Ljava/lang/String;
    .end local v2    # "res":[Ljava/lang/String;
    .end local v3    # "src":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/photoupload/AvatarUploader$4;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-static {v5}, Lcom/perm/kate/photoupload/AvatarUploader;->access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V

    .line 205
    return-void

    .line 198
    :catch_0
    move-exception v4

    .line 199
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    invoke-static {v4}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
