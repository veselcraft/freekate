.class Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/imagezoom/ImageViewZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;


# direct methods
.method constructor <init>(Lcom/perm/kate/imagezoom/ImageViewZoom;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/imagezoom/ImageViewZoom;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getScale()F

    move-result v0

    .line 84
    .local v0, "scale":F
    move v1, v0

    .line 85
    .local v1, "targetScale":F
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getMaxZoom()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/perm/kate/imagezoom/ImageViewZoom;->onDoubleTapPost(FF)F

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getMaxZoom()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    iput v1, v2, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    .line 88
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/perm/kate/imagezoom/ImageViewZoom;->zoomTo(FFFF)V

    .line 89
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-static {v2}, Lcom/perm/kate/imagezoom/ImageViewZoom;->access$000(Lcom/perm/kate/imagezoom/ImageViewZoom;)V

    .line 90
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewZoom;->invalidate()V

    .line 91
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 107
    .local v0, "diffX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 109
    .local v1, "diffY":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    div-float v3, v0, v4

    div-float v4, v1, v4

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/imagezoom/ImageViewZoom;->scrollBy(FFF)V

    .line 111
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/ImageViewZoom;->invalidate()V

    .line 113
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    return v2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewZoom;->scrollBy(FF)V

    .line 100
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->invalidate()V

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;->this$0:Lcom/perm/kate/imagezoom/ImageViewZoom;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->onSingleTap()V

    .line 78
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
