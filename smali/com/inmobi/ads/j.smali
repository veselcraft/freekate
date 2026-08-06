.class Lcom/inmobi/ads/j;
.super Ljava/lang/Object;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/j$b;,
        Lcom/inmobi/ads/j$a;
    }
.end annotation


# direct methods
.method static a(Lcom/inmobi/ads/InMobiBanner$AnimationType;FF)Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 17
    const/4 v0, 0x0

    .line 19
    sget-object v3, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    if-ne p0, v3, :cond_1

    .line 20
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 22
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 23
    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 24
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 26
    :cond_1
    sget-object v3, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    if-ne p0, v3, :cond_2

    .line 27
    new-instance v0, Lcom/inmobi/ads/j$a;

    div-float v3, p1, v4

    div-float v4, p2, v4

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/j$a;-><init>(FFFFFZ)V

    .line 31
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/j$a;->setDuration(J)V

    .line 32
    invoke-virtual {v0, v7}, Lcom/inmobi/ads/j$a;->setFillAfter(Z)V

    .line 33
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 35
    :cond_2
    sget-object v3, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    if-ne p0, v3, :cond_0

    .line 36
    new-instance v0, Lcom/inmobi/ads/j$b;

    div-float v3, p1, v4

    div-float v4, p2, v4

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/j$b;-><init>(FFFFFZ)V

    .line 40
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/j$b;->setDuration(J)V

    .line 41
    invoke-virtual {v0, v7}, Lcom/inmobi/ads/j$b;->setFillAfter(Z)V

    .line 42
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j$b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
