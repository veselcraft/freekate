.class Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/imagezoom/ImageViewTouchBase;->scrollBy(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    .prologue
    const/4 v0, 0x0

    .line 347
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    iput-wide p3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    iput p5, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dx:F

    iput p6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dy:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_x:F

    .line 350
    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_y:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    .local v2, "now":J
    iget v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    iget-wide v8, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$startTime:J

    sub-long v8, v2, v8

    long-to-float v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 356
    .local v1, "currentMs":F
    iget v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dx:F

    iget v7, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    invoke-static {v1, v10, v6, v7}, Lcom/perm/kate/imagezoom/easing/Cubic;->easeOut(FFFF)F

    move-result v4

    .line 357
    .local v4, "x":F
    iget v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$dy:F

    iget v7, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    invoke-static {v1, v10, v6, v7}, Lcom/perm/kate/imagezoom/easing/Cubic;->easeOut(FFFF)F

    move-result v5

    .line 358
    .local v5, "y":F
    iget-object v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget v7, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_x:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_y:F

    sub-float v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->panBy(FF)V

    .line 359
    iput v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_x:F

    .line 360
    iput v5, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->old_y:F

    .line 361
    iget v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->val$durationMs:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    .line 362
    iget-object v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget-object v6, v6, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-virtual {v6, v11, v11}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 365
    .local v0, "centerRect":Landroid/graphics/RectF;
    iget v6, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_0

    :cond_2
    iget-object v6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7, v8}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    goto :goto_0
.end method
