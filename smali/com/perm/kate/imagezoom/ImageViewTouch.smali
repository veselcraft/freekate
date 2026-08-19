.class public Lcom/perm/kate/imagezoom/ImageViewTouch;
.super Lcom/perm/kate/imagezoom/ImageViewTouchBase;
.source "ImageViewTouch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/imagezoom/ImageViewTouch;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onZoomChanged()V

    return-void
.end method

.method private onZoomChanged()V
    .locals 1

    .line 164
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onZoomChanged(F)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 5

    .line 33
    invoke-super {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->init()V

    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 35
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureListener:Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

    .line 36
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouch;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleListener:Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

    .line 38
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleListener:Lcom/perm/kate/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureListener:Lcom/perm/kate/imagezoom/ImageViewTouch$GestureListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 41
    iput v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    return-void
.end method

.method protected onDoubleTapPost(FF)F
    .locals 2

    .line 77
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 78
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    add-float/2addr v1, p1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    add-float/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    return p2

    .line 85
    :cond_1
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    const/high16 p1, 0x42480000    # 50.0f

    .line 61
    invoke-virtual {p0, v1, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FF)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected onZoom(F)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    :cond_0
    return-void
.end method

.method public setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mScaleFactor:F

    return-void
.end method

.method public setZoom(I)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    .line 182
    :cond_1
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    add-float/2addr v2, v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v3, v2, v1

    if-lez v3, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    :cond_2
    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 174
    :cond_5
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    .line 191
    :goto_0
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FF)V

    .line 193
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/ImageViewTouch;->onZoomChanged()V

    .line 194
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 195
    invoke-super {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setZoom(I)V

    return-void
.end method
