.class Lcom/yandex/mobile/ads/AdResources$CrossView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CrossView"
.end annotation


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field d:I

.field e:I

.field f:I

.field g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 591
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/AdResources$CrossView;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 592
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 574
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->d:I

    .line 575
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    .line 577
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    .line 596
    invoke-direct {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->b()V

    .line 597
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 600
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 574
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->d:I

    .line 575
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    .line 577
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    .line 601
    invoke-direct {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->b()V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundThemeColor"    # Ljava/lang/Integer;

    .prologue
    .line 580
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 574
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->d:I

    .line 575
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->d:I

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    .line 577
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    .line 582
    if-eqz p2, :cond_0

    .line 583
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    .line 584
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->a(I)V

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->b()V

    .line 588
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 605
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(IF)I

    move-result v0

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->d:I

    .line 607
    iget v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->d:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->f:I

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 635
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->a:Landroid/graphics/Paint;

    .line 636
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 637
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 639
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    .line 640
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 641
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 642
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 644
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->c:Landroid/graphics/Paint;

    .line 645
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 646
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 648
    invoke-direct {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->a()V

    .line 649
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/AdResources$CrossView;->a(I)V

    .line 673
    invoke-direct {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->a()V

    .line 674
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->invalidate()V

    .line 675
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 615
    iput p1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    .line 616
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->invalidate()V

    .line 617
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 655
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 657
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 658
    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v1, v2

    .line 659
    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 661
    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v7, v0, v1

    .line 662
    sub-float v1, v6, v7

    sub-float v2, v6, v7

    add-float v3, v6, v7

    add-float v4, v6, v7

    iget-object v5, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 663
    sub-float v1, v6, v7

    add-float v2, v6, v7

    add-float v3, v6, v7

    sub-float v4, v6, v7

    iget-object v5, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 665
    iget v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 667
    iget v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->g:F

    sub-float v0, v6, v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 669
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 682
    sget v0, Lcom/yandex/mobile/ads/AdResources$a;->a:I

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->b(I)V

    .line 687
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 683
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 684
    iget v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->b(I)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 622
    iput p1, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    .line 623
    iget v0, p0, Lcom/yandex/mobile/ads/AdResources$CrossView;->e:I

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->a(I)V

    .line 624
    invoke-direct {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->a()V

    .line 625
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$CrossView;->invalidate()V

    .line 626
    return-void
.end method
