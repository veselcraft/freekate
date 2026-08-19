.class Landroidx/transition/TransitionSet$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "TransitionSet.java"


# instance fields
.field final synthetic val$nextTransition:Landroidx/transition/Transition;


# direct methods
.method constructor <init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V
    .locals 0

    .line 493
    iput-object p2, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;

    invoke-virtual {v0}, Landroidx/transition/Transition;->runAnimators()V

    .line 497
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
