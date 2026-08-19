.class Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field old_x:F

.field old_y:F

.field final synthetic this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

.field final synthetic val$durationMs:F

.field final synthetic val$dx:F

.field final synthetic val$dy:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;FJFF)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    iput-wide p3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    iput p5, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dx:F

    iput p6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dy:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 349
    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_x:F

    .line 350
    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_y:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 355
    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    iget-wide v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 356
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dx:F

    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/perm/kate/imagezoom/easing/Cubic;->easeOut(FFFF)F

    move-result v1

    .line 357
    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dy:F

    iget v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    invoke-static {v0, v3, v2, v4}, Lcom/perm/kate/imagezoom/easing/Cubic;->easeOut(FFFF)F

    move-result v2

    .line 358
    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget v5, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_x:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_y:F

    sub-float v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->panBy(FF)V

    .line 359
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_x:F

    .line 360
    iput v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_y:F

    .line 361
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 365
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    :cond_2
    :goto_0
    return-void
.end method
