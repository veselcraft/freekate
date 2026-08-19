.class public Lcom/perm/kate/imagezoom/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mHeight:I

.field private mRotation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    rem-int/lit16 p2, p2, 0x168

    iput p2, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mRotation:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/perm/kate/imagezoom/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private invalidate()V
    .locals 5

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    iget v1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 54
    iget v2, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapHeight:I

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v2, v2

    int-to-float v2, v2

    .line 55
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 56
    iget v2, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mRotation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v1

    .line 57
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 61
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mWidth:I

    .line 62
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mHeight:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mHeight:I

    return v0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    iget v1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mRotation:I

    if-eqz v1, :cond_0

    .line 69
    iget v1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 70
    iget v2, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapHeight:I

    div-int/lit8 v2, v2, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 72
    iget v1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 73
    iget v1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mRotation:I

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mWidth:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapWidth:I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mBitmapHeight:I

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/RotateBitmap;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/perm/kate/imagezoom/RotateBitmap;->mRotation:I

    .line 26
    invoke-direct {p0}, Lcom/perm/kate/imagezoom/RotateBitmap;->invalidate()V

    return-void
.end method
