.class Lcom/perm/kate/PhotoViewerActrivity$4;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$4;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoZoomed(Z)V
    .locals 1
    .param p1, "isZooming"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$4;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$100(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/ContentLayout;

    move-result-object v0

    iput-boolean p1, v0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    .line 263
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$4;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$200(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 264
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$4;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$300(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 265
    return-void
.end method

.method public onSingleTap()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$4;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$400(Lcom/perm/kate/PhotoViewerActrivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$4;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$500(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 272
    :cond_0
    return-void
.end method
