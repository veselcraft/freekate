.class Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lcom/perm/kate/imagezoom/ImageViewTouch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/imagezoom/ImageViewTouch;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x1

    const v5, 0x3f666666    # 0.9f

    .line 146
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    sub-float v0, v2, v3

    .line 147
    .local v0, "span":F
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget v2, v2, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float v1, v2, v3

    .line 149
    .local v1, "targetScale":F
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 150
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/perm/kate/imagezoom/ImageViewTouch;->zoomTo(FFF)V

    .line 151
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 152
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iput v6, v2, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 153
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->invalidate()V

    .line 154
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-static {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->access$000(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    .line 155
    return v6
.end method
