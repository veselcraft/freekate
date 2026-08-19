.class public abstract Lcom/perm/kate/imagezoom/ImageViewTouchBase;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
    }
.end annotation


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

.field protected final mMatrixValues:[F

.field protected mMaxZoom:F

.field protected mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field protected mThisHeight:I

.field protected mThisWidth:I

.field private mZoomListener:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 34
    iput-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    const/4 p2, -0x1

    .line 35
    iput p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 37
    new-instance p2, Lcom/perm/kate/imagezoom/RotateBitmap;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->init()V

    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 230
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    .line 231
    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p2, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    :cond_2
    return-void
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v1
.end method

.method protected getCenter(ZZ)Landroid/graphics/RectF;
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 245
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    .line 248
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float v5, v2, p2

    if-gez v5, :cond_1

    sub-float/2addr p2, v2

    div-float/2addr p2, v4

    .line 250
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr p2, v2

    goto :goto_1

    .line 251
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v2, v1

    if-lez v5, :cond_2

    neg-float p2, v2

    goto :goto_1

    .line 253
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v2, p2

    if-gez p2, :cond_3

    .line 254
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_6

    .line 258
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v2, v3, p1

    if-gez v2, :cond_4

    sub-float/2addr p1, v3

    div-float/2addr p1, v4

    .line 260
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float/2addr p1, v0

    goto :goto_3

    .line 261
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v2, v1

    if-lez v3, :cond_5

    neg-float p1, v2

    goto :goto_3

    .line 263
    :cond_5
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, p1

    if-gez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 267
    :goto_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getDisplayBitmap()Lcom/perm/kate/imagezoom/RotateBitmap;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 176
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 177
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Lcom/perm/kate/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 7

    .line 188
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 189
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 190
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 191
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 192
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    const/high16 v5, 0x40800000    # 4.0f

    .line 193
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v6, v1, v3

    .line 194
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 195
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 196
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 197
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v2, v2, v4

    sub-float/2addr v0, v2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, p1

    .line 198
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getScale()F
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    return p1
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 204
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [D

    .line 432
    iget v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-double v3, v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 433
    iget v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-double v3, v3

    const/4 v6, 0x1

    aput-wide v3, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [D

    .line 436
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v2, v5

    .line 438
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v2, v6

    :cond_0
    aput-object v2, v0, v6

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 442
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    :cond_1
    aput-object v2, v0, v1

    return-object v0
.end method

.method protected init()V
    .locals 1

    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected maxZoom()F
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0}, Lcom/perm/kate/imagezoom/RotateBitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 73
    iput p4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    sub-int/2addr p5, p3

    .line 74
    iput p5, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 75
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    iget-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Lcom/perm/kate/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 82
    sget-object p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Layout:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public onSingleTap()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;->onSingleTap()V

    :cond_0
    return-void
.end method

.method protected onZoom(F)V
    .locals 0

    return-void
.end method

.method public onZoomChanged(F)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;->onZoomChanged(F)V

    :cond_0
    return-void
.end method

.method protected panBy(FF)V
    .locals 3

    .line 319
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 321
    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 322
    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget p2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    const/4 p1, 0x1

    .line 323
    invoke-virtual {p0, p1, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method protected postScale(FFF)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 279
    sget-object p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Zoom:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 273
    sget-object p1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Move:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public scrollBy(FF)V
    .locals 0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->panBy(FF)V

    return-void
.end method

.method protected scrollBy(FFF)V
    .locals 9

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 347
    iget-object v7, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;

    move-object v0, v8

    move-object v1, p0

    move v2, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;FJFF)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v0, p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {p1, p2}, Lcom/perm/kate/imagezoom/RotateBitmap;->setRotation(I)V

    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 93
    new-instance v0, Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-direct {v0, p1, p2}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 88
    new-instance v0, Lcom/perm/kate/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    return-void
.end method

.method protected setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V
    .locals 0

    .line 237
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V
    .locals 2

    const-string v0, "image"

    const-string v1, "setImageRotateBitmapReset"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 102
    new-instance v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Lcom/perm/kate/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 114
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getRotation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 121
    iget-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 124
    :cond_2
    sget-object p2, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Reset:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->maxZoom()F

    move-result p2

    iput p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 127
    iget-object p2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mListener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    if-eqz p2, :cond_3

    .line 128
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;->onBitmapChanged(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method

.method public setOnBitmapChangedListener(Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mListener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    return-void
.end method

.method public setOnZoomChangedListener(Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;)V
    .locals 1

    .line 407
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setZoom(I)V
    .locals 0

    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 331
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 333
    iget v2, p1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iput v3, p2, Landroid/graphics/RectF;->top:F

    .line 334
    :cond_1
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    iput v3, p2, Landroid/graphics/RectF;->left:F

    .line 335
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v2

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    sub-float v2, v3, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 336
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v2

    sub-float/2addr v1, v3

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_4

    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 337
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    sub-float v1, v3, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 338
    :cond_5
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    sub-float/2addr v0, v3

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_6

    sub-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method public zoomTo(FF)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 294
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 295
    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 2

    .line 300
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 304
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onZoom(F)V

    const/4 p1, 0x1

    .line 305
    invoke-virtual {p0, p1, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 375
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float/2addr p1, v0

    div-float v6, p1, p4

    .line 376
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 377
    iget-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {p1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
