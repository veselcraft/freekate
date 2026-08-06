.class Lcom/perm/kate/photoupload/DocUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "DocUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/DocUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/DocUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/DocUploader;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/DocUploader;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$2;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader$2;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/DocUploader;->access$100(Lcom/perm/kate/photoupload/DocUploader;)V

    .line 74
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 64
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "upload_url":Ljava/lang/String;
    const-string v1, "Kate.DocUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload_url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader$2;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-static {v1, v0}, Lcom/perm/kate/photoupload/DocUploader;->access$000(Lcom/perm/kate/photoupload/DocUploader;Ljava/lang/String;)V

    .line 67
    return-void
.end method
