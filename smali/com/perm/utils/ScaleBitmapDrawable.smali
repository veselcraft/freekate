.class public Lcom/perm/utils/ScaleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleBitmapDrawable.java"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mDstRectAndInsetsDirty:Z

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    new-instance v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    invoke-direct {v0, p1}, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    const/16 v0, 0xa0

    .line 39
    iput v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mTargetDensity:I

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    .line 208
    iput-object p1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    .line 209
    invoke-direct {p0, p2}, Lcom/perm/utils/ScaleBitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/perm/utils/ScaleBitmapDrawable$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    iget v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v1

    iput v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    .line 85
    iget v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    :goto_0
    return-void
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .locals 10

    .line 114
    iget-boolean v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    int-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    iget v5, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 118
    iget-object v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 119
    iget-object v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 120
    iget-object v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v4, v0

    iget v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->computeBitmapSize()V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v1, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 109
    invoke-direct {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    const/4 v2, 0x0

    .line 110
    iget-object v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    invoke-virtual {v1}, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget v1, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    invoke-virtual {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 164
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
