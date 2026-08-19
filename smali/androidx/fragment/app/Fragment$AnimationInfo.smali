.class Landroidx/fragment/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# instance fields
.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mAnimator:Landroid/animation/Animator;

.field mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Landroidx/core/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Landroidx/core/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field mReenterTransition:Ljava/lang/Object;

.field mReturnTransition:Ljava/lang/Object;

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field mStartEnterTransitionListener:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2892
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 2893
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 2894
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2895
    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2896
    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2897
    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    return-void
.end method
