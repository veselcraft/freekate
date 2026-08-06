.class public Lcom/my/target/core/ui/views/controls/IconButton;
.super Landroid/view/View;
.source "IconButton.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/ColorFilter;

.field private e:F

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->c:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, -0x333334

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->d:Landroid/graphics/ColorFilter;

    .line 52
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->e:F

    .line 54
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->e:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->a:Landroid/graphics/Rect;

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 117
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 118
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->g:I

    iget v2, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 119
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->a:Landroid/graphics/Rect;

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->h:I

    iget v2, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/my/target/core/ui/views/controls/IconButton;->a:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/my/target/core/ui/views/controls/IconButton;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setMeasuredDimension(II)V

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 98
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/my/target/core/ui/views/controls/IconButton;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 87
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->invalidate()V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->performClick()Z

    .line 94
    :cond_0
    :pswitch_3
    iget-object v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->invalidate()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput-object p1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    .line 61
    iget-object v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->e:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p0, Lcom/my/target/core/ui/views/controls/IconButton;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->h:I

    .line 67
    iget-object v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->g:I

    .line 76
    :goto_0
    iget v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->g:I

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/my/target/core/ui/views/controls/IconButton;->h:I

    iget v2, p0, Lcom/my/target/core/ui/views/controls/IconButton;->f:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setMeasuredDimension(II)V

    .line 77
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/controls/IconButton;->requestLayout()V

    .line 78
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->g:I

    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->h:I

    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->h:I

    iput v0, p0, Lcom/my/target/core/ui/views/controls/IconButton;->g:I

    goto :goto_0
.end method
