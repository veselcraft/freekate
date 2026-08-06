.class Lcom/perm/kate/photoupload/DocUploader$3;
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
    .line 110
    iput-object p1, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 121
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    invoke-static {v0}, Lcom/perm/kate/photoupload/DocUploader;->access$100(Lcom/perm/kate/photoupload/DocUploader;)V

    .line 122
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 113
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Document;

    .line 114
    .local v0, "doc":Lcom/perm/kate/api/Document;
    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 115
    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader$3;->this$0:Lcom/perm/kate/photoupload/DocUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/DocUploader;->callback:Lcom/perm/kate/photoupload/DocUploadCallback;

    invoke-interface {v1, v0}, Lcom/perm/kate/photoupload/DocUploadCallback;->success(Lcom/perm/kate/api/Document;)V

    .line 116
    return-void
.end method
