.class public Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableIntegerValue.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 2

    .line 20
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/IntegerKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
