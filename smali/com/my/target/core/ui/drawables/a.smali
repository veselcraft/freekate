.class public final Lcom/my/target/core/ui/drawables/a;
.super Landroid/graphics/drawable/Drawable;
.source "StarsDrawable.java"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/my/target/core/ui/drawables/a;->a()V

    .line 38
    return-void
.end method

.method private static a(IF)Landroid/graphics/Path;
    .locals 8

    .prologue
    const v7, 0x441f4000    # 637.0f

    const/high16 v6, 0x43fa0000    # 500.0f

    const v5, 0x43bf8000    # 383.0f

    const v4, 0x43a48000    # 329.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 152
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 153
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 155
    int-to-float v1, p0

    mul-float v2, v5, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    int-to-float v1, p0

    const v2, 0x43ac8000    # 345.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v4, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    int-to-float v1, p0

    mul-float v2, v6, p1

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    int-to-float v1, p0

    const v2, 0x4423c000    # 655.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v4, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    int-to-float v1, p0

    mul-float v2, v3, p1

    add-float/2addr v1, v2

    mul-float v2, v5, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    int-to-float v1, p0

    const v2, 0x443b8000    # 750.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v7, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    int-to-float v1, p0

    const v2, 0x444a8000    # 810.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v3, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    int-to-float v1, p0

    mul-float v2, v6, p1

    add-float/2addr v1, v2

    const v2, 0x444f4000    # 829.0f

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    int-to-float v1, p0

    const/high16 v2, 0x433e0000    # 190.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v3, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    int-to-float v1, p0

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float v2, v7, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 205
    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 57
    .line 1243
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->c:I

    .line 57
    iput v0, p0, Lcom/my/target/core/ui/drawables/a;->d:I

    .line 58
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/my/target/core/ui/drawables/a;->b:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/my/target/core/ui/drawables/a;->e:I

    .line 60
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/my/target/core/ui/drawables/a;->f:I

    .line 61
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    float-to-double v0, v0

    iget v2, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/my/target/core/ui/drawables/a;->i:F

    .line 62
    const/high16 v0, 0x40a00000    # 5.0f

    iget v1, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/my/target/core/ui/drawables/a;->g:I

    .line 63
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    iget v1, p0, Lcom/my/target/core/ui/drawables/a;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 64
    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/ui/drawables/a;->h:Z

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/my/target/core/ui/drawables/a;->h:Z

    .line 68
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/ui/drawables/a;->g:I

    goto :goto_0
.end method

.method private static a(IIILandroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 139
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 141
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 142
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    invoke-static {p0, v0}, Lcom/my/target/core/ui/drawables/a;->a(IF)Landroid/graphics/Path;

    move-result-object v0

    .line 147
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rating is out of bounds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 45
    iput v2, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/my/target/core/ui/drawables/a;->a()V

    .line 53
    return-void

    .line 49
    :cond_1
    iput p1, p0, Lcom/my/target/core/ui/drawables/a;->a:F

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lcom/my/target/core/ui/drawables/a;->c:I

    .line 249
    invoke-direct {p0}, Lcom/my/target/core/ui/drawables/a;->a()V

    .line 250
    return-void
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/my/target/core/ui/drawables/a;->b:F

    .line 255
    invoke-direct {p0}, Lcom/my/target/core/ui/drawables/a;->a()V

    .line 256
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const v8, -0x86ce2

    const v11, -0x333334

    const/4 v1, 0x0

    .line 75
    iget v4, p0, Lcom/my/target/core/ui/drawables/a;->g:I

    move v0, v1

    move v2, v1

    .line 77
    :goto_0
    iget v5, p0, Lcom/my/target/core/ui/drawables/a;->f:I

    if-ge v0, v5, :cond_0

    .line 79
    iget v5, p0, Lcom/my/target/core/ui/drawables/a;->d:I

    invoke-static {v2, v5, v8, p1}, Lcom/my/target/core/ui/drawables/a;->a(IIILandroid/graphics/Canvas;)V

    .line 80
    iget v5, p0, Lcom/my/target/core/ui/drawables/a;->e:I

    add-int/2addr v2, v5

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/my/target/core/ui/drawables/a;->h:Z

    if-eqz v0, :cond_2

    .line 85
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->d:I

    invoke-static {v2, v0, v11, p1}, Lcom/my/target/core/ui/drawables/a;->a(IIILandroid/graphics/Canvas;)V

    .line 87
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->d:I

    iget v5, p0, Lcom/my/target/core/ui/drawables/a;->i:F

    .line 2103
    int-to-float v6, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 2104
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 2105
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2106
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2107
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2109
    invoke-static {v1, v6}, Lcom/my/target/core/ui/drawables/a;->a(IF)Landroid/graphics/Path;

    move-result-object v6

    .line 2111
    new-instance v8, Landroid/graphics/Rect;

    int-to-float v9, v2

    int-to-float v10, v0

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v8, v2, v1, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2117
    int-to-float v9, v0

    mul-float/2addr v5, v9

    float-to-int v5, v5

    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2125
    :goto_1
    if-eqz v0, :cond_1

    .line 2127
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2129
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2131
    invoke-virtual {p1, v0, v3, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 88
    :cond_1
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->e:I

    add-int/2addr v2, v0

    .line 92
    :cond_2
    :goto_2
    if-ge v1, v4, :cond_3

    .line 94
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->d:I

    invoke-static {v2, v0, v11, p1}, Lcom/my/target/core/ui/drawables/a;->a(IIILandroid/graphics/Canvas;)V

    .line 95
    iget v0, p0, Lcom/my/target/core/ui/drawables/a;->e:I

    add-int/2addr v2, v0

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2122
    :catch_0
    move-exception v0

    const-string v0, "cannot build icon: OOME"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 97
    :cond_3
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
