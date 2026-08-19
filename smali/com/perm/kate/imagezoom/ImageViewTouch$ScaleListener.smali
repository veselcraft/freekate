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

    .line 142
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 148
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    .line 149
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget v0, v0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float v0, v0, v1

    .line 151
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v3, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 153
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 154
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    const/4 v0, 0x1

    iput v0, p1, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 155
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 156
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-static {p1}, Lcom/perm/kate/imagezoom/ImageViewTouch;->access$000(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    return v0
.end method
