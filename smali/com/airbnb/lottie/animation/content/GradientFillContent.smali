.class public Lcom/airbnb/lottie/animation/content/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/Content;


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field private colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field private final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field private final hidden:Z

.field private final linearGradientCache:Landroidx/collection/LongSparseArray;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;

.field private final radialGradientCache:Landroidx/collection/LongSparseArray;

.field private final shaderMatrix:Landroid/graphics/Matrix;

.field private final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientFill;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    .line 46
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    .line 49
    new-instance v1, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    .line 64
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getName()Ljava/lang/String;

    .line 65
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->isHidden()Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->hidden:Z

    .line 66
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 67
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    .line 68
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 69
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    .line 71
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getGradientColor()Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 72
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 73
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 75
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 76
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 77
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 79
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getStartPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 80
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 81
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    .line 83
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/GradientFill;->getEndPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 84
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    .line 85
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void
.end method

.method private applyDynamicColorsIfNeeded([I)[I
    .locals 0

    return-object p1
.end method

.method private getGradientHash()I
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 198
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getProgress()F

    move-result v2

    iget v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->cacheSteps:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int v3, v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v2

    :cond_2
    return v3
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .locals 14

    .line 155
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getGradientHash()I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 161
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 162
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 163
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v11

    .line 164
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v12

    .line 165
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v4
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .locals 13

    .line 172
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getGradientHash()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 178
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 179
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 180
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v10

    .line 181
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v11

    .line 182
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 183
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 184
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 185
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    .line 186
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    const v9, 0x3a83126f    # 0.001f

    goto :goto_0

    :cond_1
    move v9, v0

    .line 190
    :goto_0
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 191
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 102
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    .line 105
    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 114
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->type:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v2, v3, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v2

    .line 119
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 120
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 121
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 127
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float p2, p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 128
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 135
    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v2}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 142
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    .line 93
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 94
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    .line 95
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientFillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
