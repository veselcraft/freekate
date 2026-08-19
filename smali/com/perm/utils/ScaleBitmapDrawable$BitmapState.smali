.class final Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ScaleBitmapDrawable.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field final mPaint:Landroid/graphics/Paint;

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mThemeAttrs:[I

    .line 172
    iput-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 178
    iput-object p1, p0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 179
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 189
    new-instance v0, Lcom/perm/utils/ScaleBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/perm/utils/ScaleBitmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 194
    new-instance v0, Lcom/perm/utils/ScaleBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Lcom/perm/utils/ScaleBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/perm/utils/ScaleBitmapDrawable$1;)V

    return-object v0
.end method
