.class Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/perm/kate/imagezoom/RotateBitmap;

.field final synthetic val$reset:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;Lcom/perm/kate/imagezoom/RotateBitmap;Z)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->val$bitmap:Lcom/perm/kate/imagezoom/RotateBitmap;

    iput-boolean p3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->val$reset:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->val$bitmap:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->val$bitmap:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/RotateBitmap;->getRotation()I

    move-result v2

    iget-boolean v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;->val$reset:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method
