.class Lfr/nicolaspomepuy/discreetapprate/AppRate$4;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0

    .line 546
    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 554
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;->val$mainView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
