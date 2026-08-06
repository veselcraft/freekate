.class final Lcom/yandex/mobile/ads/nativeads/template/f;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->c:I

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/f;->getCurrentTextColor()I

    move-result v0

    .line 47
    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/k;->a(IF)I

    move-result v0

    .line 49
    iget-object v5, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->b:Landroid/graphics/Paint;

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->c:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/f;->getLineCount()I

    move-result v7

    .line 56
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/template/f;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 60
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v0}, Lcom/yandex/mobile/ads/nativeads/template/f;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 62
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 63
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 65
    invoke-virtual {v8, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 66
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    sub-float/2addr v2, v1

    .line 67
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    add-float/2addr v3, v2

    .line 69
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->d:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v4, p0, Lcom/yandex/mobile/ads/nativeads/template/f;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method
