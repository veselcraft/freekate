.class Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;FJFFFF)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iput p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    iput-wide p3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$startTime:J

    iput p5, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$oldScale:F

    iput p6, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$incrementPerMs:F

    iput p7, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$centerX:F

    iput p8, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$centerY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 382
    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    iget-wide v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$startTime:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 383
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$oldScale:F

    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$incrementPerMs:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 384
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$centerX:F

    iget v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$centerY:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 385
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->val$durationMs:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
