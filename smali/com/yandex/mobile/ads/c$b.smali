.class Lcom/yandex/mobile/ads/c$b;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/Camera;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 57
    iput p1, p0, Lcom/yandex/mobile/ads/c$b;->b:F

    .line 58
    iput p2, p0, Lcom/yandex/mobile/ads/c$b;->c:F

    .line 59
    iput p3, p0, Lcom/yandex/mobile/ads/c$b;->d:F

    .line 60
    iput p4, p0, Lcom/yandex/mobile/ads/c$b;->e:F

    .line 61
    iput p5, p0, Lcom/yandex/mobile/ads/c$b;->f:F

    .line 62
    iput p6, p0, Lcom/yandex/mobile/ads/c$b;->g:F

    .line 63
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v8, 0x0

    .line 73
    iget v0, p0, Lcom/yandex/mobile/ads/c$b;->b:F

    iget v1, p0, Lcom/yandex/mobile/ads/c$b;->c:F

    iget v2, p0, Lcom/yandex/mobile/ads/c$b;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 74
    iget v1, p0, Lcom/yandex/mobile/ads/c$b;->g:F

    add-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 75
    iget v2, p0, Lcom/yandex/mobile/ads/c$b;->f:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    float-to-double v6, v1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 76
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/yandex/mobile/ads/c$b;->a:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 79
    iget-object v3, p0, Lcom/yandex/mobile/ads/c$b;->a:Landroid/graphics/Camera;

    invoke-virtual {v3, v8, v8, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 80
    iget-object v1, p0, Lcom/yandex/mobile/ads/c$b;->a:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 81
    iget-object v0, p0, Lcom/yandex/mobile/ads/c$b;->a:Landroid/graphics/Camera;

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 82
    iget-object v0, p0, Lcom/yandex/mobile/ads/c$b;->a:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 84
    iget v0, p0, Lcom/yandex/mobile/ads/c$b;->d:F

    neg-float v0, v0

    iget v1, p0, Lcom/yandex/mobile/ads/c$b;->e:F

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 85
    iget v0, p0, Lcom/yandex/mobile/ads/c$b;->d:F

    iget v1, p0, Lcom/yandex/mobile/ads/c$b;->e:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 86
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 68
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/c$b;->a:Landroid/graphics/Camera;

    .line 69
    return-void
.end method
