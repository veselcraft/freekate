.class Lcom/perm/kate/photoupload/DocUploader$2;
.super Lcom/perm/kate/session/Callback;
.source "DocUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/DocUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/DocUploader;Landroid/app/Activity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$2;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 73
    iget-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$2;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/DocUploader;->access$100(Lcom/perm/kate/photoupload/DocUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 64
    check-cast p1, Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.DocUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader$2;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-static {v0, p1}, Lcom/perm/kate/photoupload/DocUploader;->access$000(Lcom/perm/kate/photoupload/DocUploader;Ljava/lang/String;)V

    return-void
.end method
