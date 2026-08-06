.class public Lcom/perm/kate/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;,
        Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;,
        Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;
    }
.end annotation


# instance fields
.field protected final MAX_ZOOM:F

.field protected final MAX_ZOOM2:F

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x40800000    # 4.0f

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 35
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 37
    new-instance v0, Lcom/perm/kate/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    .line 38
    iput v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->MAX_ZOOM:F

    .line 39
    iput v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->MAX_ZOOM2:F

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x40800000    # 4.0f

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 35
    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 37
    new-instance v0, Lcom/perm/kate/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    .line 38
    iput v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->MAX_ZOOM:F

    .line 39
    iput v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->MAX_ZOOM2:F

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->init()V

    .line 53
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 3
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getCenter(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 230
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 231
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    goto :goto_0
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v2}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 213
    :goto_0
    return-object v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 211
    .local v0, "m":Landroid/graphics/Matrix;
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

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method protected getCenter(ZZ)Landroid/graphics/RectF;
    .locals 11
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 242
    iget-object v7, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v7}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 267
    :goto_0
    return-object v7

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 244
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 245
    .local v2, "height":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 246
    .local v6, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 247
    .local v1, "deltaY":F
    if-eqz p2, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 249
    .local v4, "viewHeight":I
    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    .line 250
    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 257
    .end local v4    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v5

    .line 259
    .local v5, "viewWidth":I
    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    .line 260
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 267
    .end local v5    # "viewWidth":I
    :cond_2
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0, v1, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 251
    .restart local v4    # "viewHeight":I
    :cond_3
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 252
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_1

    .line 253
    :cond_4
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_1

    .line 261
    .end local v4    # "viewHeight":I
    .restart local v5    # "viewWidth":I
    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    .line 262
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_2

    .line 263
    :cond_6
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 264
    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_2
.end method

.method public getDisplayBitmap()Lcom/perm/kate/imagezoom/RotateBitmap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
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

    .prologue
    .line 148
    iget v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Lcom/perm/kate/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "bitmap"    # Lcom/perm/kate/imagezoom/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 188
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 189
    .local v4, "viewWidth":F
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 190
    .local v3, "viewHeight":F
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 191
    .local v5, "w":F
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 192
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 193
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 194
    .local v6, "widthScale":F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 195
    .local v1, "heightScale":F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 196
    .local v2, "scale":F
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 197
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 198
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 199
    return-void
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 204
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/Object;

    .line 431
    .local v1, "ooo":[Ljava/lang/Object;
    new-array v2, v8, [D

    .line 432
    .local v2, "v1":[D
    iget v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-double v4, v4

    aput-wide v4, v2, v6

    .line 433
    iget v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-double v4, v4

    aput-wide v4, v2, v7

    .line 434
    aput-object v2, v1, v6

    .line 435
    new-array v3, v8, [D

    .line 436
    .local v3, "v2":[D
    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v4}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v4}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v3, v6

    .line 438
    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v4}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v3, v7

    .line 440
    :cond_0
    aput-object v3, v1, v7

    .line 441
    const/16 v4, 0x9

    new-array v0, v4, [F

    .line 442
    .local v0, "mm":[F
    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_1

    .line 443
    iget-object v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 444
    :cond_1
    aput-object v0, v1, v8

    .line 445
    return-object v1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    return-void
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 134
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 138
    :goto_0
    return v2

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 136
    .local v1, "fw":F
    iget-object v3, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v3}, Lcom/perm/kate/imagezoom/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 137
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v2, v3, v4

    .line 138
    .local v2, "max":F
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 73
    sub-int v1, p4, p2

    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 74
    sub-int v1, p5, p3

    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 75
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 76
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    iget-object v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Lcom/perm/kate/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 82
    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Layout:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 84
    :cond_1
    return-void
.end method

.method public onSingleTap()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;->onSingleTap()V

    .line 418
    :cond_0
    return-void
.end method

.method protected onZoom(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 310
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 1
    .param p1, "scale_factor"    # F

    .prologue
    .line 411
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;->onZoomChanged(F)V

    .line 413
    :cond_0
    return-void
.end method

.method protected panBy(FF)V
    .locals 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 320
    .local v0, "rect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 321
    .local v1, "srect":Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 322
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    .line 323
    invoke-virtual {p0, v4, v4}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 324
    return-void
.end method

.method protected postScale(FFF)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 278
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 279
    sget-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Zoom:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 280
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 272
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 273
    sget-object v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Move:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 274
    return-void
.end method

.method public scrollBy(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->panBy(FF)V

    .line 315
    return-void
.end method

.method protected scrollBy(FFF)V
    .locals 8
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F
    .param p3, "durationMs"    # F

    .prologue
    .line 344
    move v6, p1

    .line 345
    .local v6, "dx":F
    move v7, p2

    .line 346
    .local v7, "dy":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 347
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$2;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;FJFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 155
    return-void
.end method

.method protected setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBitmapDisplayed:Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/perm/kate/imagezoom/RotateBitmap;->setRotation(I)V

    .line 171
    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I
    .param p3, "reset"    # Z

    .prologue
    .line 93
    new-instance v0, Lcom/perm/kate/imagezoom/RotateBitmap;

    invoke-direct {v0, p1, p2}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    .line 94
    return-void
.end method

.method public setImageBitmapReset(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 88
    new-instance v0, Lcom/perm/kate/imagezoom/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/imagezoom/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    .line 89
    return-void
.end method

.method protected setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "command"    # Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 237
    invoke-virtual {p0, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 238
    return-void
.end method

.method public setImageRotateBitmapReset(Lcom/perm/kate/imagezoom/RotateBitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Lcom/perm/kate/imagezoom/RotateBitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 98
    const-string v1, "image"

    const-string v2, "setImageRotateBitmapReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 101
    .local v0, "viewWidth":I
    if-gtz v0, :cond_1

    .line 102
    new-instance v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$1;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;Lcom/perm/kate/imagezoom/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Lcom/perm/kate/imagezoom/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 114
    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getRotation()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 120
    :goto_1
    if-eqz p2, :cond_2

    .line 121
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 124
    :cond_2
    sget-object v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;->Reset:Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageMatrix(Lcom/perm/kate/imagezoom/ImageViewTouchBase$Command;Landroid/graphics/Matrix;)V

    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 127
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mListener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mListener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    invoke-virtual {p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;->onBitmapChanged(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setOnBitmapChangedListener(Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mListener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    .line 57
    return-void
.end method

.method public setOnZoomChangedListener(Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    .prologue
    .line 407
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mZoomListener:Ljava/lang/ref/WeakReference;

    .line 408
    return-void
.end method

.method public setZoom(I)V
    .locals 0
    .param p1, "z"    # I

    .prologue
    .line 427
    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "bitmapRect"    # Landroid/graphics/RectF;
    .param p2, "scrollRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 328
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 331
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 333
    .local v0, "height":F
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    iput v4, p2, Landroid/graphics/RectF;->top:F

    .line 334
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    iput v4, p2, Landroid/graphics/RectF;->left:F

    .line 335
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 336
    :cond_4
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    sub-float v3, v0, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    sub-float v2, v0, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 337
    :cond_5
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_6

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 338
    :cond_6
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    sub-float v3, v1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    sub-float v2, v1, v4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method public zoomTo(FF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "durationMs"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 293
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 294
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 295
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    .line 296
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 300
    iget v2, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget p1, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 302
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 303
    .local v0, "deltaScale":F
    invoke-virtual {p0, v0, p2, p3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 304
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 305
    invoke-virtual {p0, v3, v3}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 306
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 375
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 376
    .local v7, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 377
    .local v6, "oldScale":F
    iget-object v0, p0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/imagezoom/ImageViewTouchBase$3;-><init>(Lcom/perm/kate/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    return-void
.end method
