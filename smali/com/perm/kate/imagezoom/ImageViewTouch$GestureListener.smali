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
    .param p1, "this$0"    # Lcom/perm/kate/imagezoom/ImageViewTouch;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 100
    .local v0, "scale":F
    move v1, v0

    .line 101
    .local v1, "targetScale":F
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onDoubleTapPost(FF)F

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iput v1, v2, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 104
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/perm/kate/imagezoom/ImageViewTouch;->zoomTo(FFFF)V

    .line 105
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-static {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->access$000(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    .line 106
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->invalidate()V

    .line 107
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget-object v3, v3, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 130
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 132
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    div-float v3, v0, v4

    div-float v4, v1, v4

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/imagezoom/ImageViewTouch;->scrollBy(FFF)V

    .line 134
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->invalidate()V

    .line 136
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouch;->scrollBy(FF)V

    .line 119
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->invalidate()V

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onSingleTap()V

    .line 93
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
