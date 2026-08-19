.class Lcom/perm/kate/photoupload/DocUploader$3;
.super Lcom/perm/kate/session/Callback;
.source "DocUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/DocUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/DocUploader;Landroid/app/Activity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 124
    iget-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-static {p1}, Lcom/perm/kate/photoupload/DocUploader;->access$100(Lcom/perm/kate/photoupload/DocUploader;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 117
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 118
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    iget-object v0, v0, Lcom/perm/kate/photoupload/DocUploader;->callback:Lcom/perm/kate/photoupload/DocUploadCallback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/photoupload/DocUploadCallback;->success(Ljava/lang/Object;)V

    return-void
.end method
