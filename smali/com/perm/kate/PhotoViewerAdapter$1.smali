.class Lcom/perm/kate/PhotoViewerAdapter$1;
.super Ljava/lang/Object;
.source "PhotoViewerAdapter.java"

# interfaces
.implements Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerAdapter;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter$1;->this$0:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTap()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$1;->this$0:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerAdapter;->access$000(Lcom/perm/kate/PhotoViewerAdapter;)Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$1;->this$0:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerAdapter;->access$000(Lcom/perm/kate/PhotoViewerAdapter;)Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;->onSingleTap()V

    :cond_0
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 5

    .line 266
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------------- scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$1;->this$0:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerAdapter;->access$000(Lcom/perm/kate/PhotoViewerAdapter;)Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$1;->this$0:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerAdapter;->access$000(Lcom/perm/kate/PhotoViewerAdapter;)Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    move-result-object v0

    float-to-double v1, p1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    cmpg-double p1, v1, v3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;->onPhotoZoomed(Z)V

    :cond_1
    return-void
.end method
