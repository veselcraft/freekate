.class Landroidx/transition/Fade$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Fade.java"


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/Fade;Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p2, p0, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    .line 135
    iget-object v0, p0, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 136
    iget-object v0, p0, Landroidx/transition/Fade$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/ViewUtils;->clearNonTransitionAlpha(Landroid/view/View;)V

    .line 137
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
