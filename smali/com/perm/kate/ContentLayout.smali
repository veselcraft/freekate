.class public Lcom/perm/kate/ContentLayout;
.super Landroid/view/ViewGroup;
.source "ContentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ContentLayout$ViewChangeListener;
    }
.end annotation


# instance fields
.field public is_zooming:Z

.field private mAdapter:Landroid/widget/Adapter;

.field private mAllowLongPress:Z

.field private mBaseScreen:I

.field private mCurrentScreen:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mNextScreen:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field multitouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/ContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/perm/kate/ContentLayout;->mFirstLayout:Z

    const/4 p2, -0x1

    .line 41
    iput p2, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 53
    iput p1, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    .line 60
    iput-object p2, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    .line 211
    iput-boolean p1, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    .line 72
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public static photoSwipeEnabled()Z
    .locals 3

    .line 463
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_swipe_close"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setCurrentScreenInternal(I)V
    .locals 5

    .line 400
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    .line 401
    iput p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    .line 403
    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 405
    iput v2, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    .line 407
    iput p1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    .line 408
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 409
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    sub-int/2addr p1, v0

    if-ne p1, v1, :cond_2

    .line 411
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-le p1, v4, :cond_1

    .line 412
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 413
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 415
    :cond_1
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_b

    .line 416
    iget-object p1, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 419
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-le p1, v4, :cond_3

    .line 420
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 421
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 423
    :cond_3
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-lez p1, :cond_b

    .line 424
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    sub-int/2addr p1, v1

    invoke-interface {v0, p1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 426
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v1, :cond_b

    .line 427
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v3

    .line 428
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v3

    .line 429
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_8

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 430
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 431
    iget v2, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-lez v2, :cond_9

    .line 432
    iget-object v4, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    sub-int/2addr v2, v1

    invoke-interface {v4, v2, p1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object p1, v0

    move-object v0, v3

    .line 436
    :cond_9
    iget-object v2, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v3, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-interface {v2, v3, p1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_b

    .line 438
    iget-object p1, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v2, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/2addr v2, v1

    invoke-interface {p1, v2, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 441
    :cond_a
    iput v2, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    :cond_b
    :goto_3
    return-void
.end method

.method private updateOnLongClickListener()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/ContentLayout;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 3

    .line 196
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 198
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int v2, v0, v1

    if-lez v2, :cond_1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 199
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 202
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 203
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_0

    .line 92
    :cond_0
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 94
    iput v1, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/ContentLayout;->setCurrentScreenInternal(I)V

    .line 96
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onFinishedScroll(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    return v0

    .line 191
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    return v0
.end method

.method public getCurrentScreenView()Landroid/view/View;
    .locals 2

    .line 387
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCount()I
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-nez v0, :cond_0

    .line 222
    iput v1, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    .line 223
    iput v2, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    .line 226
    :cond_0
    iget-boolean v3, p0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    if-eqz v3, :cond_1

    .line 227
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 230
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    if-eqz v5, :cond_2

    return v4

    :cond_2
    const/4 v5, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_a

    goto/16 :goto_3

    .line 236
    :cond_3
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 237
    iget v1, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 238
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    if-le v0, v2, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-le v1, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-nez v6, :cond_6

    if-eqz v2, :cond_c

    :cond_6
    if-eqz v6, :cond_7

    if-nez v2, :cond_7

    .line 244
    iput v4, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto :goto_2

    :cond_7
    if-le v1, v0, :cond_8

    if-eqz v2, :cond_8

    .line 245
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-boolean v0, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/perm/kate/ContentLayout;->photoSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    iput v3, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto :goto_2

    .line 247
    :cond_8
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result p1

    if-le p1, v4, :cond_9

    .line 249
    iput-boolean v4, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    .line 251
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/perm/kate/ContentLayout;->mAllowLongPress:Z

    if-eqz p1, :cond_c

    .line 252
    iput-boolean v5, p0, Lcom/perm/kate/ContentLayout;->mAllowLongPress:Z

    .line 253
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v0, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_3

    .line 267
    :cond_a
    iput v5, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    .line 268
    iput-boolean v5, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    goto :goto_3

    .line 260
    :cond_b
    iput-boolean v4, p0, Lcom/perm/kate/ContentLayout;->mAllowLongPress:Z

    .line 262
    iget-object p1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v4

    iput p1, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    .line 271
    :cond_c
    :goto_3
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    :goto_4
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 133
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    mul-int p1, p1, p2

    .line 135
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    .line 137
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 138
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 139
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5, p1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    move p1, v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-boolean p1, p0, Lcom/perm/kate/ContentLayout;->mFirstLayout:Z

    if-eqz p1, :cond_2

    .line 146
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    mul-int p1, p1, p2

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 147
    iput-boolean p3, p0, Lcom/perm/kate/ContentLayout;->mFirstLayout:Z

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 103
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v1, "ContentLayout can only be used in EXACTLY mode."

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 116
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 125
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    .line 169
    :goto_0
    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-nez v0, :cond_0

    .line 283
    iput v1, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    .line 284
    iput v2, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    .line 286
    :cond_0
    iget-boolean v3, p0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    if-eqz v3, :cond_1

    .line 287
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 289
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 291
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    if-eqz v0, :cond_c

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, p1, :cond_7

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 346
    :cond_3
    iput v4, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto/16 :goto_3

    .line 300
    :cond_4
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    if-ne v0, p1, :cond_d

    .line 301
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 302
    iput v1, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    .line 303
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-gez v0, :cond_5

    if-lez v1, :cond_6

    neg-int v1, v1

    .line 306
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v2, v1

    if-lez v2, :cond_6

    .line 311
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 314
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v0, :cond_d

    .line 315
    invoke-interface {v0}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onScroll()V

    goto/16 :goto_3

    .line 319
    :cond_7
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    if-ne v0, p1, :cond_a

    .line 320
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 322
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_8

    .line 323
    iget v1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-lez v1, :cond_8

    sub-int/2addr v1, p1

    .line 324
    invoke-virtual {p0, v1}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    goto :goto_1

    :cond_8
    const/16 v1, -0x1f4

    if-ge v0, v1, :cond_9

    .line 325
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_9

    .line 326
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    goto :goto_1

    .line 328
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    .line 330
    invoke-virtual {p0, v1}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    .line 334
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    :cond_a
    if-ne v0, v3, :cond_b

    .line 338
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 339
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    if-le v0, v1, :cond_b

    .line 340
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v0, :cond_b

    .line 341
    invoke-interface {v0}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onVerticalSwipe()V

    .line 343
    :cond_b
    :goto_2
    iput v4, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto :goto_3

    .line 295
    :cond_c
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 296
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_d
    :goto_3
    return p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 154
    iget p2, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget p3, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public scrollToScreen(I)V
    .locals 8

    .line 363
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 364
    iget v2, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 365
    :goto_0
    iput p1, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 366
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 367
    iget v1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v2, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 369
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 370
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int p1, p1, v0

    sub-int v5, p1, v3

    .line 372
    iget-object v2, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x168

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 373
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    .line 455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 2

    .line 391
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/perm/kate/ContentLayout;->setCurrentScreenInternal(I)V

    .line 392
    iget p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    mul-int p1, p1, v1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 393
    iget-object p1, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onFinishedScroll(Landroid/view/View;)V

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/ContentLayout;->updateOnLongClickListener()V

    return-void
.end method

.method public setViewChangeListener(Lcom/perm/kate/ContentLayout$ViewChangeListener;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    return-void
.end method
