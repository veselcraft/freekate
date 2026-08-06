.class public Lcom/perm/kate/imagezoom/ImageViewTouch;
.super Lcom/perm/kate/imagezoom/ImageViewTouchBase;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;,
        Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;
    }
.end annotation


# instance fields
.field protected mCurrentScaleFactor:F

.field protected mDoubleTapDirection:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleFactor:F

.field protected mScaleListener:Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

.field protected mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/imagezoom/ImageViewTouch;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/imagezoom/ImageViewTouch;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onZoomChanged()V

    return-void
.end method

.method private onZoomChanged()V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onZoomChanged(F)V

    .line 163
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-super {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->init()V

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mTouchSlop:I

    .line 34
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureListener:Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

    .line 35
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleListener:Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

    .line 37
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleListener:Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 38
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureListener:Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 40
    iput v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 41
    return-void
.end method

.method protected onDoubleTapPost(FF)F
    .locals 2
    .param p1, "scale"    # F
    .param p2, "maxZoom"    # F

    .prologue
    const/4 v1, 0x1

    .line 75
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    if-ne v0, v1, :cond_1

    .line 76
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleFactor:F

    add-float p2, p1, v0

    .line 84
    .end local p2    # "maxZoom":F
    :goto_0
    return p2

    .line 79
    .restart local p2    # "maxZoom":F
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    goto :goto_0

    .line 83
    :cond_1
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 84
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 56
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 63
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 59
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v2, v1}, Lcom/perm/kate/imagezoom/ImageViewTouch;->zoomTo(FF)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onZoom(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 70
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 71
    :cond_0
    return-void
.end method

.method public setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Lcom/perm/kate/imagezoom/RotateBitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleFactor:F

    .line 48
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .param p1, "z"    # I

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 167
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "targetScale":F
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    sub-float v0, v1, v2

    .line 173
    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 174
    const v0, 0x3f666666    # 0.9f

    .line 189
    :cond_1
    :goto_1
    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 190
    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouch;->zoomTo(FF)V

    .line 191
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onZoomChanged()V

    .line 192
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->invalidate()V

    .line 193
    invoke-super {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setZoom(I)V

    goto :goto_0

    .line 177
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 178
    goto :goto_1

    .line 180
    :pswitch_2
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    add-float v0, v1, v2

    .line 181
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 182
    const/high16 v0, 0x40800000    # 4.0f

    .line 183
    :cond_2
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
