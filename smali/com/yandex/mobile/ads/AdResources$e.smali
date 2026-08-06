.class Lcom/yandex/mobile/ads/AdResources$e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/AdResources$e$a;,
        Lcom/yandex/mobile/ads/AdResources$e$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Landroid/view/animation/Interpolator;

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 710
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    .line 701
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->b:J

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/AdResources$e;->setBackgroundColor(I)V

    .line 712
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/AdResources$e;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 698
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    new-instance v0, Lcom/yandex/mobile/ads/c$b;

    const/high16 v1, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/yandex/mobile/ads/AdResources$e;->g:F

    iget v4, p0, Lcom/yandex/mobile/ads/AdResources$e;->h:F

    iget v5, p0, Lcom/yandex/mobile/ads/AdResources$e;->i:F

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/c$b;-><init>(FFFFFF)V

    :goto_0
    iget-wide v2, p0, Lcom/yandex/mobile/ads/AdResources$e;->b:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/yandex/mobile/ads/AdResources$e$a;

    invoke-direct {v1, v7}, Lcom/yandex/mobile/ads/AdResources$e$a;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    new-instance v0, Lcom/yandex/mobile/ads/c$b;

    const/high16 v1, 0x42b40000    # 90.0f

    iget v3, p0, Lcom/yandex/mobile/ads/AdResources$e;->g:F

    iget v4, p0, Lcom/yandex/mobile/ads/AdResources$e;->h:F

    iget v5, p0, Lcom/yandex/mobile/ads/AdResources$e;->i:F

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/c$b;-><init>(FFFFFF)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 762
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    mul-int/lit8 v0, v0, 0x5a

    int-to-float v2, v0

    new-instance v0, Lcom/yandex/mobile/ads/c$b;

    iget v3, p0, Lcom/yandex/mobile/ads/AdResources$e;->g:F

    iget v4, p0, Lcom/yandex/mobile/ads/AdResources$e;->h:F

    iget v5, p0, Lcom/yandex/mobile/ads/AdResources$e;->i:F

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/c$b;-><init>(FFFFFF)V

    iget-wide v2, p0, Lcom/yandex/mobile/ads/AdResources$e;->b:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/yandex/mobile/ads/AdResources$e$b;

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/AdResources$e$b;-><init>(Lcom/yandex/mobile/ads/AdResources$e;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 763
    :goto_1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v7, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    .line 764
    return-void

    .line 762
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 763
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 720
    iput p1, p0, Lcom/yandex/mobile/ads/AdResources$e;->i:F

    .line 721
    return-void
.end method

.method public a(FF)V
    .locals 0

    .prologue
    .line 715
    iput p1, p0, Lcom/yandex/mobile/ads/AdResources$e;->g:F

    .line 716
    iput p2, p0, Lcom/yandex/mobile/ads/AdResources$e;->h:F

    .line 717
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 750
    const-wide/16 v0, 0x2

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->b:J

    .line 751
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdResources$e;->e:Landroid/view/animation/Interpolator;

    .line 755
    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/AdResources$e;->removeView(Landroid/view/View;)V

    .line 728
    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    .line 730
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p2}, Lcom/yandex/mobile/ads/AdResources$e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->c:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 734
    :cond_1
    return-void

    .line 732
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdResources$e;->f:Landroid/view/animation/Interpolator;

    .line 759
    return-void
.end method

.method public b(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/AdResources$e;->removeView(Landroid/view/View;)V

    .line 741
    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    .line 743
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p2}, Lcom/yandex/mobile/ads/AdResources$e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    iget-object v1, p0, Lcom/yandex/mobile/ads/AdResources$e;->d:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/AdResources$e;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 747
    :cond_1
    return-void

    .line 745
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
