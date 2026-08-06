.class Lfr/nicolaspomepuy/discreetapprate/AppRate$4;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/nicolaspomepuy/discreetapprate/AppRate;->hideAllViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;

    .prologue
    .line 544
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 552
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;->val$mainView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 554
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 559
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 548
    return-void
.end method
