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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/perm/kate/ContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/ContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v1, p0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/ContentLayout;->mFirstLayout:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 52
    iput v1, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    .line 58
    iput-object v2, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    .line 59
    iput-object v2, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    .line 209
    iput-boolean v1, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    .line 71
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    .line 72
    return-void
.end method

.method public static photoSwipeEnabled()Z
    .locals 3

    .prologue
    .line 460
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
    .locals 10
    .param p1, "currentScreen"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 397
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    .line 398
    .local v0, "oldCurrentScreen":I
    iput p1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    .line 400
    iget-object v6, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    if-eqz v6, :cond_b

    .line 401
    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-nez v6, :cond_2

    .line 402
    iput v7, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    .line 405
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 406
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    sub-int/2addr v5, v0

    if-ne v5, v9, :cond_3

    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 409
    invoke-virtual {p0, v7}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 410
    invoke-virtual {p0, v7}, Lcom/perm/kate/ContentLayout;->removeViewAt(I)V

    .line 412
    :cond_0
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 413
    iget-object v5, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/perm/kate/ContentLayout;->addView(Landroid/view/View;)V

    .line 440
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 404
    :cond_2
    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    goto :goto_0

    .line 415
    :cond_3
    const/4 v1, 0x0

    .line 416
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v5

    if-le v5, v8, :cond_4

    .line 417
    invoke-virtual {p0, v8}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 418
    invoke-virtual {p0, v8}, Lcom/perm/kate/ContentLayout;->removeViewAt(I)V

    .line 420
    :cond_4
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-lez v5, :cond_1

    .line 421
    iget-object v5, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/perm/kate/ContentLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 423
    .end local v1    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v9, :cond_1

    .line 424
    :cond_6
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {p0, v7}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 425
    .local v2, "v1":Landroid/view/View;
    :goto_2
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v6

    if-le v6, v9, :cond_9

    invoke-virtual {p0, v9}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 426
    .local v3, "v2":Landroid/view/View;
    :goto_3
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v6

    if-le v6, v8, :cond_a

    invoke-virtual {p0, v8}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 427
    .local v4, "v3":Landroid/view/View;
    :goto_4
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->removeAllViews()V

    .line 428
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-lez v5, :cond_7

    .line 429
    iget-object v5, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/perm/kate/ContentLayout;->addView(Landroid/view/View;)V

    .line 430
    move-object v2, v3

    .line 431
    move-object v3, v4

    .line 433
    :cond_7
    iget-object v5, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-interface {v5, v6, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/perm/kate/ContentLayout;->addView(Landroid/view/View;)V

    .line 434
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 435
    iget-object v5, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    iget v6, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/perm/kate/ContentLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    .end local v4    # "v3":Landroid/view/View;
    :cond_8
    move-object v2, v5

    .line 424
    goto :goto_2

    .restart local v2    # "v1":Landroid/view/View;
    :cond_9
    move-object v3, v5

    .line 425
    goto :goto_3

    .restart local v3    # "v2":Landroid/view/View;
    :cond_a
    move-object v4, v5

    .line 426
    goto :goto_4

    .line 438
    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    :cond_b
    iput v7, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    goto/16 :goto_1
.end method

.method private updateOnLongClickListener()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v0

    .line 82
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/ContentLayout;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 195
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 196
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 197
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 200
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 201
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 88
    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/ContentLayout;->scrollTo(II)V

    .line 90
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->postInvalidate()V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v1, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    if-eq v1, v2, :cond_0

    .line 92
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 93
    .local v0, "nextScreen":I
    iput v2, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/perm/kate/ContentLayout;->setCurrentScreenInternal(I)V

    .line 95
    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onFinishedScroll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 178
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    .line 189
    :goto_0
    return v0

    .line 183
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    return v0
.end method

.method public getCurrentScreenView()Landroid/view/View;
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v1, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreenCount()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 215
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 216
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 219
    .local v6, "y":F
    if-nez v0, :cond_0

    .line 220
    iput v3, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    .line 221
    iput v6, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    .line 224
    :cond_0
    iget-boolean v9, p0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    if-eqz v9, :cond_2

    .line 225
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 269
    :cond_1
    :goto_0
    return v11

    .line 228
    :cond_2
    if-ne v0, v12, :cond_3

    iget v9, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    if-nez v9, :cond_1

    .line 232
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 269
    :cond_4
    :goto_1
    iget v9, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    if-nez v9, :cond_1

    move v11, v10

    goto :goto_0

    .line 234
    :pswitch_0
    iget v9, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 235
    .local v4, "xDiff":I
    iget v9, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 236
    .local v7, "yDiff":I
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 238
    .local v2, "touchSlop":I
    if-le v4, v2, :cond_7

    move v5, v11

    .line 239
    .local v5, "xMoved":Z
    :goto_2
    if-le v7, v2, :cond_8

    move v8, v11

    .line 240
    .local v8, "yMoved":Z
    :goto_3
    if-nez v5, :cond_5

    if-eqz v8, :cond_4

    .line 241
    :cond_5
    if-eqz v5, :cond_9

    if-nez v8, :cond_9

    .line 242
    iput v11, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    .line 249
    :cond_6
    :goto_4
    iget-boolean v9, p0, Lcom/perm/kate/ContentLayout;->mAllowLongPress:Z

    if-eqz v9, :cond_4

    .line 250
    iput-boolean v10, p0, Lcom/perm/kate/ContentLayout;->mAllowLongPress:Z

    .line 251
    iget v9, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v12, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v9, v12

    invoke-virtual {p0, v9}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, "currentScreen":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    .end local v1    # "currentScreen":Landroid/view/View;
    .end local v5    # "xMoved":Z
    .end local v8    # "yMoved":Z
    :cond_7
    move v5, v10

    .line 238
    goto :goto_2

    .restart local v5    # "xMoved":Z
    :cond_8
    move v8, v10

    .line 239
    goto :goto_3

    .line 243
    .restart local v8    # "yMoved":Z
    :cond_9
    if-le v7, v4, :cond_a

    if-eqz v8, :cond_a

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v9

    if-ne v9, v11, :cond_a

    iget-boolean v9, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    if-nez v9, :cond_a

    invoke-static {}, Lcom/perm/kate/ContentLayout;->photoSwipeEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 244
    iput v12, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto :goto_4

    .line 245
    :cond_a
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v9

    if-le v9, v11, :cond_6

    .line 247
    iput-boolean v11, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    goto :goto_4

    .line 258
    .end local v2    # "touchSlop":I
    .end local v4    # "xDiff":I
    .end local v5    # "xMoved":Z
    .end local v7    # "yDiff":I
    .end local v8    # "yMoved":Z
    :pswitch_1
    iput-boolean v11, p0, Lcom/perm/kate/ContentLayout;->mAllowLongPress:Z

    .line 260
    iget-object v9, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v10

    :goto_5
    iput v9, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto :goto_1

    :cond_b
    move v9, v11

    goto :goto_5

    .line 265
    :pswitch_2
    iput v10, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    .line 266
    iput-boolean v10, p0, Lcom/perm/kate/ContentLayout;->multitouch:Z

    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 136
    iget v5, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getWidth()I

    move-result v6

    mul-int v1, v5, v6

    .line 138
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v3

    .line 139
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 140
    invoke-virtual {p0, v4}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 143
    .local v2, "childWidth":I
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getPaddingTop()I

    move-result v5

    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 144
    add-int/2addr v1, v2

    .line 139
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 105
    .local v6, "widthMode":I
    if-eq v6, v7, :cond_0

    .line 106
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "ContentLayout can only be used in EXACTLY mode."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 109
    .local v3, "heightMode":I
    if-eq v3, v7, :cond_1

    .line 110
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "ContentLayout can only be used in EXACTLY mode."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v2

    .line 114
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 115
    invoke-virtual {p0, v4}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 118
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_2

    .line 119
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 120
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 124
    .local v1, "childHeightSpec":I
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightSpec":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-boolean v7, p0, Lcom/perm/kate/ContentLayout;->mFirstLayout:Z

    if-eqz v7, :cond_4

    .line 129
    iget v7, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {p0, v7, v10}, Lcom/perm/kate/ContentLayout;->scrollTo(II)V

    .line 130
    iput-boolean v10, p0, Lcom/perm/kate/ContentLayout;->mFirstLayout:Z

    .line 132
    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 162
    iget v2, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 163
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 167
    .local v0, "focusableScreen":I
    :goto_0
    iget v2, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 173
    .end local v0    # "focusableScreen":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 165
    :cond_1
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    .restart local v0    # "focusableScreen":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 276
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 277
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 279
    .local v10, "y":F
    if-nez v0, :cond_0

    .line 280
    iput v9, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    .line 281
    iput v10, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    .line 283
    :cond_0
    iget-boolean v11, p0, Lcom/perm/kate/ContentLayout;->is_zooming:Z

    if-eqz v11, :cond_1

    .line 284
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 346
    :goto_0
    return v11

    .line 285
    :cond_1
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_2

    .line 286
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 288
    :cond_2
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 290
    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_3
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_3

    .line 293
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .line 297
    :pswitch_1
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 298
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    sub-float/2addr v11, v9

    float-to-int v2, v11

    .line 299
    .local v2, "deltaX":I
    iput v9, p0, Lcom/perm/kate/ContentLayout;->mLastMotionX:F

    .line 300
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScrollX()I

    move-result v4

    .line 301
    .local v4, "mScrollX":I
    if-gez v2, :cond_5

    .line 302
    if-lez v4, :cond_4

    .line 303
    neg-int v11, v4

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/perm/kate/ContentLayout;->scrollBy(II)V

    .line 311
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v11, :cond_3

    .line 312
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    invoke-interface {v11}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onScroll()V

    goto :goto_1

    .line 305
    :cond_5
    if-lez v2, :cond_4

    .line 306
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getWidth()I

    move-result v12

    sub-int v1, v11, v12

    .line 307
    .local v1, "availableToScroll":I
    if-lez v1, :cond_4

    .line 308
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/perm/kate/ContentLayout;->scrollBy(II)V

    goto :goto_2

    .line 316
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    .end local v4    # "mScrollX":I
    :pswitch_2
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 317
    iget-object v6, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 318
    .local v6, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v11, 0x3e8

    invoke-virtual {v6, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 319
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    float-to-int v7, v11

    .line 320
    .local v7, "velocityX":I
    const/16 v11, 0x1f4

    if-le v7, v11, :cond_7

    iget v11, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-lez v11, :cond_7

    .line 321
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    .line 330
    :goto_3
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_6

    .line 331
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 332
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/perm/kate/ContentLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 340
    .end local v6    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v7    # "velocityX":I
    :cond_6
    :goto_4
    const/4 v11, 0x0

    iput v11, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto/16 :goto_1

    .line 322
    .restart local v6    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v7    # "velocityX":I
    :cond_7
    const/16 v11, -0x1f4

    if-ge v7, v11, :cond_8

    iget v11, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_8

    .line 323
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    goto :goto_3

    .line 325
    :cond_8
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getWidth()I

    move-result v5

    .line 326
    .local v5, "screenWidth":I
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScrollX()I

    move-result v11

    div-int/lit8 v12, v5, 0x2

    add-int/2addr v11, v12

    div-int v8, v11, v5

    .line 327
    .local v8, "whichScreen":I
    invoke-virtual {p0, v8}, Lcom/perm/kate/ContentLayout;->scrollToScreen(I)V

    goto :goto_3

    .line 334
    .end local v5    # "screenWidth":I
    .end local v6    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v7    # "velocityX":I
    .end local v8    # "whichScreen":I
    :cond_9
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    .line 335
    iget v11, p0, Lcom/perm/kate/ContentLayout;->mLastMotionY:F

    sub-float/2addr v11, v10

    float-to-int v3, v11

    .line 336
    .local v3, "deltaY":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    invoke-static {v12, v13}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v12

    if-le v11, v12, :cond_6

    .line 337
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v11, :cond_6

    .line 338
    iget-object v11, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    invoke-interface {v11}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onVerticalSwipe()V

    goto :goto_4

    .line 343
    .end local v3    # "deltaY":I
    :pswitch_3
    const/4 v11, 0x0

    iput v11, p0, Lcom/perm/kate/ContentLayout;->mTouchState:I

    goto/16 :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/perm/kate/ContentLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 152
    .local v0, "screen":I
    iget v1, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v2, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    const/4 v1, 0x1

    .line 155
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scrollToScreen(I)V
    .locals 9
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 361
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    if-eq p1, v0, :cond_1

    const/4 v6, 0x1

    .line 362
    .local v6, "changingScreens":Z
    :goto_0
    iput p1, p0, Lcom/perm/kate/ContentLayout;->mNextScreen:I

    .line 363
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 364
    .local v7, "focusedChild":Landroid/view/View;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    iget v4, p0, Lcom/perm/kate/ContentLayout;->mBaseScreen:I

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/perm/kate/ContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_0

    .line 365
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScrollX()I

    move-result v1

    .line 367
    .local v1, "mScrollX":I
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 368
    .local v8, "newX":I
    sub-int v3, v8, v1

    .line 369
    .local v3, "delta":I
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mScroller:Landroid/widget/Scroller;

    const/16 v5, 0x168

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 370
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->invalidate()V

    .line 373
    return-void

    .end local v1    # "mScrollX":I
    .end local v3    # "delta":I
    .end local v6    # "changingScreens":Z
    .end local v7    # "focusedChild":Landroid/view/View;
    .end local v8    # "newX":I
    :cond_1
    move v6, v2

    .line 361
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mAdapter:Landroid/widget/Adapter;

    .line 452
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->removeAllViews()V

    .line 453
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .param p1, "currentScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/ContentLayout;->setCurrentScreenInternal(I)V

    .line 389
    iget v0, p0, Lcom/perm/kate/ContentLayout;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/ContentLayout;->scrollTo(II)V

    .line 390
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/perm/kate/ContentLayout$ViewChangeListener;->onFinishedScroll(Landroid/view/View;)V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ContentLayout;->invalidate()V

    .line 394
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 77
    invoke-direct {p0}, Lcom/perm/kate/ContentLayout;->updateOnLongClickListener()V

    .line 78
    return-void
.end method

.method public setViewChangeListener(Lcom/perm/kate/ContentLayout$ViewChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/perm/kate/ContentLayout$ViewChangeListener;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/perm/kate/ContentLayout;->mListener:Lcom/perm/kate/ContentLayout$ViewChangeListener;

    .line 457
    return-void
.end method
