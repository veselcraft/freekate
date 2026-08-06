.class public Lcom/my/target/core/ui/views/video/VideoProgressWheel;
.super Landroid/view/View;
.source "VideoProgressWheel.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Lcom/my/target/core/utils/l;

.field private e:Landroid/graphics/RectF;

.field private f:J

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->a:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->b:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->e:Landroid/graphics/RectF;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->f:J

    .line 37
    iput v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    .line 38
    iput v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->h:F

    .line 39
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->i:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->j:Z

    .line 48
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 136
    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->h:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->f:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 142
    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->i:F

    mul-float/2addr v0, v1

    .line 144
    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->h:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->f:J

    move v6, v7

    .line 149
    :goto_0
    iget v3, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    .line 151
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/high16 v3, 0x43b40000    # 360.0f

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->e:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    .line 164
    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->e:Landroid/graphics/RectF;

    .line 165
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 167
    iget v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    if-eqz v6, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->invalidate()V

    .line 173
    :cond_1
    return-void

    :cond_2
    move v6, v4

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/16 v3, 0x1a

    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 54
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    .line 55
    invoke-virtual {v0, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    .line 57
    invoke-virtual {v0, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 62
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 67
    if-eq v4, v6, :cond_4

    .line 70
    if-ne v4, v7, :cond_0

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 78
    :cond_0
    :goto_0
    if-eq v5, v6, :cond_1

    if-ne v4, v6, :cond_3

    :cond_1
    move v0, v1

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setMeasuredDimension(II)V

    .line 90
    return-void

    .line 81
    :cond_3
    if-ne v5, v7, :cond_2

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1116
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingTop()I

    move-result v0

    .line 1117
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingBottom()I

    move-result v1

    .line 1118
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingLeft()I

    move-result v2

    .line 1119
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getPaddingRight()I

    move-result v3

    .line 1121
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    .line 1122
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    .line 1123
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget-object v5, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    .line 1124
    invoke-virtual {v5, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->e:Landroid/graphics/RectF;

    .line 2103
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2104
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2105
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2106
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2108
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x78000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2109
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2110
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2111
    iget-object v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->d:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->invalidate()V

    .line 99
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 180
    if-nez p2, :cond_0

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->f:J

    .line 184
    :cond_0
    return-void
.end method

.method public setDigit(I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->k:I

    .line 189
    return-void
.end method

.method public setMax(F)V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 226
    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->i:F

    .line 228
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 193
    iget-boolean v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->j:Z

    if-eqz v2, :cond_0

    .line 195
    iput v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->j:Z

    .line 199
    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    move p1, v0

    .line 207
    :cond_1
    :goto_0
    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->h:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 220
    :goto_1
    return-void

    .line 202
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    move p1, v1

    .line 204
    goto :goto_0

    .line 212
    :cond_3
    iget v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->g:F

    iget v1, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->f:J

    .line 217
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->h:F

    .line 219
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->invalidate()V

    goto :goto_1
.end method
