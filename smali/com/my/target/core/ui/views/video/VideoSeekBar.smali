.class public Lcom/my/target/core/ui/views/video/VideoSeekBar;
.super Landroid/view/View;
.source "VideoSeekBar.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->d:I

    .line 22
    const v0, -0x77000001

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setBackgroundColor(I)V

    .line 23
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    const v1, -0xff540e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 28
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoSeekBar$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar$1;-><init>(Lcom/my/target/core/ui/views/video/VideoSeekBar;)V

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->c:I

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->c:I

    int-to-float v1, v1

    mul-float v3, v0, v1

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 42
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->setMeasuredDimension(II)V

    .line 43
    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .prologue
    .line 57
    iput p1, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->d:I

    .line 59
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->a:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->b:I

    .line 65
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/my/target/core/ui/views/video/VideoSeekBar;->c:I

    .line 70
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoSeekBar;->invalidate()V

    .line 71
    return-void
.end method
