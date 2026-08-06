.class public Lcom/my/target/core/ui/views/FitBitmapImageView;
.super Landroid/widget/ImageView;
.source "FitBitmapImageView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 47
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 50
    if-nez v3, :cond_a

    move v6, v1

    .line 53
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 59
    iget-object v3, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 60
    iget-object v3, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v5, v4

    move v4, v3

    .line 71
    :goto_1
    if-eqz v4, :cond_9

    .line 72
    int-to-float v3, v5

    int-to-float v9, v4

    div-float/2addr v3, v9

    .line 74
    :goto_2
    if-eqz v8, :cond_1

    .line 75
    int-to-float v2, v7

    int-to-float v9, v8

    div-float/2addr v2, v9

    .line 77
    :cond_1
    if-ne v6, v10, :cond_5

    if-ne v0, v10, :cond_5

    .line 79
    invoke-virtual {p0, v7, v8}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setMeasuredDimension(II)V

    .line 103
    :cond_2
    :goto_3
    return-void

    .line 61
    :cond_3
    iget v3, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->b:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->c:I

    if-eqz v3, :cond_4

    .line 63
    iget v4, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->c:I

    .line 64
    iget v3, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->b:I

    move v5, v4

    move v4, v3

    goto :goto_1

    .line 67
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_3

    .line 80
    :cond_5
    if-ne v6, v1, :cond_7

    if-ne v0, v1, :cond_7

    .line 83
    cmpg-float v0, v3, v2

    if-gez v0, :cond_6

    .line 85
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    int-to-float v1, v0

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 90
    :cond_6
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 91
    int-to-float v1, v0

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 94
    :cond_7
    if-ne v6, v1, :cond_8

    if-ne v0, v10, :cond_8

    .line 96
    int-to-float v0, v8

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 97
    invoke-virtual {p0, v0, v8}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setMeasuredDimension(II)V

    goto :goto_3

    .line 98
    :cond_8
    if-ne v6, v10, :cond_2

    if-ne v0, v1, :cond_2

    .line 100
    int-to-float v0, v7

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    invoke-virtual {p0, v7, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    move v6, v3

    goto :goto_0
.end method

.method public setImageData(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 1

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->a:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->b:I

    .line 37
    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->c:I

    .line 38
    iget-object v0, p0, Lcom/my/target/core/ui/views/FitBitmapImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/FitBitmapImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
