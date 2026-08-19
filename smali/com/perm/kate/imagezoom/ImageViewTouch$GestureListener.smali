.class Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lcom/perm/kate/imagezoom/ImageViewTouch;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onDoubleTapPost(FF)F

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iput v0, v1, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    .line 107
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-static {v0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->access$000(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    .line 108
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 109
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 134
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x44480000    # 800.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {v2, v0, v1, v3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->scrollBy(FFF)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 138
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    return v0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    .line 121
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onSingleTap()V

    .line 95
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
