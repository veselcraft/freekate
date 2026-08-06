.class public Lcom/perm/utils/ScaleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mDstRectAndInsetsDirty:Z

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    invoke-direct {v0, p1}, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 39
    const/16 v0, 0xa0

    iput v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mTargetDensity:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    .line 208
    iput-object p1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    .line 209
    invoke-direct {p0, p2}, Lcom/perm/utils/ScaleBitmapDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/perm/utils/ScaleBitmapDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lcom/perm/utils/ScaleBitmapDrawable$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v1, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 84
    iget v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v1

    iput v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    .line 85
    iget v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v1

    iput v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    iput v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 114
    iget-boolean v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 117
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v4, v1

    iget v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v6, v1

    iget v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 118
    .local v2, "scale":D
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 119
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 120
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 121
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget v6, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v2

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 123
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "scale":D
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    .line 124
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->computeBitmapSize()V

    .line 219
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    invoke-virtual {v0}, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    iget-object v3, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v3, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    .line 108
    .local v2, "state":Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;
    iget-object v1, v2, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 109
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-direct {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->updateDstRectAndInsetsIfDirty()V

    .line 110
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
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

    .prologue
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

    .prologue
    .line 153
    iget v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mDstRectAndInsetsDirty:Z

    .line 99
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v1, v1, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 129
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v1, v1, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    invoke-virtual {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->invalidateSelf()V

    .line 133
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable;->mBitmapState:Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 138
    invoke-virtual {p0}, Lcom/perm/utils/ScaleBitmapDrawable;->invalidateSelf()V

    .line 139
    return-void
.end method
