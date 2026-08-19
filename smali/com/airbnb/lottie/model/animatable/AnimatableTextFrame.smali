.class public Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
.super Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.source "AnimatableTextFrame.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;
    .locals 2

    .line 16
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
