.class Landroidx/transition/Visibility$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# instance fields
.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$overlay:Landroidx/transition/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Landroidx/transition/Visibility;Landroidx/transition/ViewGroupOverlayImpl;Landroid/view/View;)V
    .locals 0

    .line 411
    iput-object p2, p0, Landroidx/transition/Visibility$1;->val$overlay:Landroidx/transition/ViewGroupOverlayImpl;

    iput-object p3, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 414
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$overlay:Landroidx/transition/ViewGroupOverlayImpl;

    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    return-void
.end method
