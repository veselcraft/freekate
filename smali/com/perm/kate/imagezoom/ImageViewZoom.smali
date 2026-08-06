.class public Lcom/perm/kate/imagezoom/ImageViewZoom;
.super Lcom/perm/kate/imagezoom/ImageViewTouchBase;
.source "ImageViewZoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;
    }
.end annotation


# instance fields
.field protected mCurrentScaleFactor:F

.field protected mDoubleTapDirection:I

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;

.field protected mScaleFactor:F

.field protected mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/imagezoom/ImageViewZoom;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/imagezoom/ImageViewZoom;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->onZoomChanged()V

    return-void
.end method

.method private onZoomChanged()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->onZoomChanged(F)V

    .line 119
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->init()V

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mTouchSlop:I

    .line 27
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;-><init>(Lcom/perm/kate/imagezoom/ImageViewZoom;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mGestureListener:Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;

    .line 28
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mGestureListener:Lcom/perm/kate/imagezoom/ImageViewZoom$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mGestureDetector:Landroid/view/GestureDetector;

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mDoubleTapDirection:I

    .line 31
    return-void
.end method

.method protected onDoubleTapPost(FF)F
    .locals 2
    .param p1, "scale"    # F
    .param p2, "maxZoom"    # F

    .prologue
    const/4 v1, 0x1

    .line 60
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mDoubleTapDirection:I

    if-ne v0, v1, :cond_1

    .line 61
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mScaleFactor:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mScaleFactor:F

    add-float p2, p1, v0

    .line 69
    .end local p2    # "maxZoom":F
    :goto_0
    return p2

    .line 64
    .restart local p2    # "maxZoom":F
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mDoubleTapDirection:I

    goto :goto_0

    .line 68
    :cond_1
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mDoubleTapDirection:I

    .line 69
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 43
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getScale()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 46
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v2, v1}, Lcom/perm/kate/imagezoom/ImageViewZoom;->zoomTo(FF)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onZoom(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 56
    iput p1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    .line 57
    return-void
.end method

.method public setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Lcom/perm/kate/imagezoom/RotateBitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mScaleFactor:F

    .line 37
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .param p1, "z"    # I

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 123
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 126
    .local v0, "targetScale":F
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    sub-float v0, v1, v2

    .line 129
    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 130
    const v0, 0x3f666666    # 0.9f

    .line 145
    :cond_1
    :goto_1
    iput v0, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    .line 146
    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewZoom;->zoomTo(FF)V

    .line 147
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->onZoomChanged()V

    .line 148
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewZoom;->invalidate()V

    .line 149
    invoke-super {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setZoom(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 134
    goto :goto_1

    .line 136
    :pswitch_2
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    add-float v0, v1, v2

    .line 137
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 138
    const/high16 v0, 0x40800000    # 4.0f

    .line 139
    :cond_2
    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewZoom;->mCurrentScaleFactor:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
