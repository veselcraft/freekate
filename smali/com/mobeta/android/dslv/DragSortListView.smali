.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScroller;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DropListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragListener;,
        Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$HeightCache;,
        Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastY:I

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 445
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 79
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 100
    iput v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 101
    iput v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 126
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    const/4 v3, 0x1

    .line 182
    iput-boolean v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 193
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 200
    iput v3, v7, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 216
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    new-array v4, v3, [Landroid/view/View;

    .line 222
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v4, 0x3eaaaaab

    .line 234
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 241
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v8, 0x3f000000    # 0.5f

    .line 265
    iput v8, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 273
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$1;

    invoke-direct {v4, v7}, Lcom/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 337
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 343
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 348
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v4, 0x0

    .line 353
    iput-object v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 373
    iput v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    const/high16 v4, 0x3e800000    # 0.25f

    .line 380
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v4, 0x0

    .line 389
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 402
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 412
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 419
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 433
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v6, 0x3

    invoke-direct {v5, v7, v6}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    iput-object v5, v7, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 442
    iput v4, v7, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1698
    iput-boolean v1, v7, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    const/16 v5, 0x96

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/perm/kate/R$styleable;->DragSortListView:[I

    invoke-virtual {v9, v0, v10, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 455
    invoke-virtual {v9, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    const/16 v0, 0x10

    .line 458
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    :cond_0
    const/16 v0, 0x8

    .line 466
    iget v10, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 467
    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    const/4 v0, 0x2

    .line 469
    iget-boolean v10, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    const/16 v0, 0xe

    const/high16 v10, 0x3f400000    # 0.75f

    .line 472
    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 471
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 476
    :goto_0
    iput-boolean v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    const/4 v0, 0x4

    .line 478
    iget v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 482
    invoke-virtual {v7, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    const/16 v0, 0xa

    .line 484
    iget v2, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v9, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    const/16 v0, 0xb

    .line 488
    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v0, 0x6

    .line 492
    invoke-virtual {v9, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/16 v0, 0x11

    .line 496
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    .line 501
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    const/16 v0, 0xd

    .line 504
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v0, 0xf

    .line 507
    invoke-virtual {v9, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    const/4 v0, 0x5

    .line 510
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 513
    invoke-virtual {v9, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v0, 0x7

    .line 516
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 519
    invoke-virtual {v9, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v0, 0x9

    const/high16 v1, -0x1000000

    .line 522
    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 526
    new-instance v15, Lcom/mobeta/android/dslv/DragSortController;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 529
    invoke-virtual {v15, v12}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 530
    invoke-virtual {v15, v13}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 531
    invoke-virtual {v15, v14}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->setBackgroundColor(I)V

    .line 533
    iput-object v15, v7, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 534
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 537
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v5, v10

    goto :goto_1

    :cond_3
    const/16 v11, 0x96

    .line 540
    :goto_1
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    if-lez v5, :cond_4

    .line 544
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-direct {v0, v7, v8, v5}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    :cond_4
    if-lez v11, :cond_5

    .line 548
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-direct {v0, v7, v8, v11}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    :cond_5
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 551
    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 555
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$2;

    invoke-direct {v0, v7}, Lcom/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static synthetic access$100(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method static synthetic access$102(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static synthetic access$1500(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return p0
.end method

.method static synthetic access$1602(Lcom/mobeta/android/dslv/DragSortListView;F)F
    .locals 0

    .line 62
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1616(Lcom/mobeta/android/dslv/DragSortListView;F)F
    .locals 1

    .line 62
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1700(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method static synthetic access$2100(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static synthetic access$2200(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static synthetic access$2300(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static synthetic access$2500(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method static synthetic access$2602(Lcom/mobeta/android/dslv/DragSortListView;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return p0
.end method

.method static synthetic access$3100(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method static synthetic access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static synthetic access$700(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method static synthetic access$900(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method private adjustAllItems()V
    .locals 6

    .line 1861
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1862
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1864
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 1865
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 1868
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 1870
    invoke-direct {p0, v5, v4, v3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 2

    .line 1890
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1892
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 1895
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result p3

    .line 1898
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_1

    .line 1899
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1900
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    :cond_1
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, p3, :cond_2

    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_4

    .line 1905
    :cond_2
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, p3, :cond_3

    .line 1906
    move-object p3, p2

    check-cast p3, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v0, 0x50

    invoke-virtual {p3, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1

    :cond_3
    if-le p1, p3, :cond_4

    .line 1908
    move-object p3, p2

    check-cast p3, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1914
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    .line 1917
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    :cond_5
    if-eq v0, p3, :cond_6

    .line 1922
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private adjustOnReorder()V
    .locals 3

    .line 1552
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1554
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v1, v0, :cond_1

    const/4 v1, 0x0

    .line 1557
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1560
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1563
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 7

    .line 2060
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 2062
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 2063
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 2067
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_0

    sub-int v3, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v3, p2

    move v0, v1

    .line 2072
    :goto_0
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2073
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v2, v5, :cond_1

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v2, v6, :cond_1

    .line 2074
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v4, v2

    :cond_1
    const/4 v2, 0x0

    if-gt p1, p3, :cond_2

    if-le p1, v5, :cond_7

    sub-int/2addr v4, v0

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    if-ne p1, p4, :cond_5

    if-gt p1, v5, :cond_4

    sub-int/2addr v3, v4

    :cond_3
    add-int/2addr v2, v3

    goto :goto_1

    .line 2084
    :cond_4
    iget p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_3

    sub-int/2addr p2, v1

    add-int/2addr v2, p2

    goto :goto_1

    :cond_5
    if-gt p1, v5, :cond_6

    sub-int/2addr v2, v4

    goto :goto_1

    .line 2092
    :cond_6
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p2, :cond_7

    sub-int/2addr v2, v0

    :cond_7
    :goto_1
    return v2
.end method

.method private calcItemHeight(II)I
    .locals 6

    .line 2013
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 2015
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2016
    :goto_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v1, v2

    .line 2017
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 2021
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 2022
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int p2, v4, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 2028
    :cond_2
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, p1, :cond_3

    sub-int p2, v1, v4

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    .line 2034
    :cond_4
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    goto :goto_1

    :cond_5
    add-int/2addr p2, v3

    goto :goto_1

    .line 2040
    :cond_6
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    :goto_1
    return p2
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 0

    .line 2008
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private clearPositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1491
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1492
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1493
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1494
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 5

    .line 1796
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1797
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int p1, p2, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 1799
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1801
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1802
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1805
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v1

    .line 1807
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v4, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 1813
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1817
    :cond_0
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    :cond_1
    if-ge p2, v2, :cond_3

    .line 1818
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 1824
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1828
    :cond_2
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1830
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 1831
    invoke-virtual {p2}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1835
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private destroyFloatView()V
    .locals 2

    .line 2412
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2413
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2415
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 2417
    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2418
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 1668
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1669
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1670
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1671
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1673
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1674
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1675
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2321
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2323
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2325
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2326
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2328
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2331
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2332
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 2335
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2336
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 2340
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 2343
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .line 2310
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2311
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2317
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .line 1522
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1531
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1534
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1535
    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1538
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1540
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1541
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1544
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 1545
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1547
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 755
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 761
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    .line 760
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    .line 764
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 768
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 770
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_0

    .line 771
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    goto :goto_0

    .line 774
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr p1, v5

    sub-int v1, p1, v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 780
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 781
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 782
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 783
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 784
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private dropFloatView()V
    .locals 4

    const/4 v0, 0x2

    .line 1500
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1502
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1503
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 1504
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1507
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1509
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1510
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1511
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1514
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1515
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1517
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private getChildHeight(I)I
    .locals 5

    .line 1927
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1931
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1936
    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p1

    return p1

    .line 1940
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 1946
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1947
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1950
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1951
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1952
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 1956
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    .line 1957
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1958
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 1960
    :cond_4
    aget-object v1, v3, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1964
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 1968
    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1971
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    return v0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .line 1978
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1983
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1986
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1989
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1992
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_3

    return p1

    .line 1997
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_5

    .line 2000
    :cond_4
    invoke-direct {p0, p2}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2001
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_5
    return p1
.end method

.method private getItemHeight(I)I
    .locals 1

    .line 837
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 845
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private getShuffleEdge(II)I
    .locals 7

    .line 919
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 920
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 926
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 930
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 934
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 935
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 936
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 941
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 944
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 946
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_5

    if-gt p1, v5, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 958
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v6, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    .line 960
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v1, v4, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    :cond_5
    :goto_1
    if-gt p1, v5, :cond_6

    .line 968
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v0

    .line 970
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method private measureFloatView()V
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2119
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2120
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2121
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 2101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2103
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2104
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v2

    .line 2107
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2106
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2109
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 2110
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2112
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2114
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 1682
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1684
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    if-nez v0, :cond_1

    .line 1688
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1690
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .line 2352
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2354
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2357
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 2358
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 2361
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    .line 2362
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    if-le v1, v2, :cond_1

    .line 2363
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-ge v1, v2, :cond_2

    .line 2365
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2369
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 2370
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 2371
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2372
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 2376
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v1, :cond_3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 2378
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2380
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    .line 2381
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v3, v1, :cond_4

    sub-int/2addr v1, v3

    .line 2382
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2387
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 2388
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 2389
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2391
    :cond_5
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 2392
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 2393
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    if-ge v0, v5, :cond_7

    .line 2402
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2403
    :cond_7
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_8

    .line 2404
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2408
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return-void
.end method

.method private updatePositions()Z
    .locals 14

    .line 978
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 979
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    sub-int v2, v1, v0

    .line 980
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 983
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 984
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 986
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 988
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 990
    invoke-direct {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v3

    .line 993
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    .line 999
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 1004
    invoke-direct {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    :goto_1
    move v13, v3

    move v3, v0

    move v0, v13

    goto :goto_3

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 1012
    invoke-direct {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 1015
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v5, v2, :cond_2

    move v0, v3

    move v3, v2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_3

    .line 1024
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v5

    :goto_2
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 1032
    invoke-direct {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v6

    .line 1033
    invoke-direct {p0, v2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v7

    .line 1037
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v8, v7, :cond_6

    move v0, v3

    move v3, v7

    goto :goto_3

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_2

    .line 1046
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 1047
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    const/4 v5, 0x0

    .line 1051
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1052
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1053
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1055
    iget-boolean v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v9, :cond_a

    sub-int v9, v3, v0

    .line 1056
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1059
    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v10, v3, :cond_7

    move v13, v3

    move v3, v0

    move v0, v13

    .line 1068
    :cond_7
    iget v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    int-to-float v9, v9

    mul-float v11, v11, v9

    float-to-int v9, v11

    int-to-float v11, v9

    add-int/2addr v3, v9

    sub-int v9, v0, v9

    if-ge v10, v3, :cond_8

    add-int/lit8 v0, v1, -0x1

    .line 1075
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1076
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v3, v10

    int-to-float v0, v3

    mul-float v0, v0, v12

    div-float/2addr v0, v11

    .line 1077
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_4

    :cond_8
    if-ge v10, v9, :cond_9

    .line 1081
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1082
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_4

    .line 1084
    :cond_9
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v3, v1, 0x1

    .line 1085
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-int/2addr v0, v10

    int-to-float v0, v0

    div-float/2addr v0, v11

    add-float/2addr v0, v3

    mul-float v0, v0, v12

    .line 1086
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_4

    .line 1093
    :cond_a
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1094
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1098
    :goto_4
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 1100
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1101
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move v1, v2

    goto :goto_5

    .line 1102
    :cond_b
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-lt v0, v9, :cond_c

    .line 1103
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 1104
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1105
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1108
    :cond_c
    :goto_5
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v7, :cond_d

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    :cond_d
    const/4 v5, 0x1

    .line 1113
    :cond_e
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-eq v1, v0, :cond_10

    .line 1114
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v4, :cond_f

    sub-int/2addr v0, v2

    sub-int v2, v1, v2

    .line 1115
    invoke-interface {v4, v0, v2}, Lcom/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1118
    :cond_f
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    goto :goto_6

    :cond_10
    move v3, v5

    :goto_6
    return v3
.end method

.method private updateScrollStarts()V
    .locals 7

    .line 1840
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 1841
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    .line 1844
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1845
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    mul-float v6, v6, v2

    add-float/2addr v6, v3

    iput v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v2, v4

    .line 1847
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    float-to-int v2, v6

    .line 1848
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    sub-float/2addr v4, v3

    .line 1850
    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v6

    .line 1851
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .line 1476
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1478
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1479
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1480
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1482
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1483
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1485
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 791
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 793
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 795
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 796
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 798
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 799
    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 805
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 806
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 808
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 810
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 821
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float v4, v4, v3

    mul-float v4, v4, v2

    float-to-int v10, v4

    .line 823
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 825
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 826
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    move-object v5, p1

    .line 829
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 830
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 831
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .line 584
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 640
    :cond_0
    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 2498
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .line 2140
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2142
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2143
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2147
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2150
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .line 1695
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2160
    :cond_0
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_1

    .line 2161
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 2163
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2173
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2167
    :cond_3
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 2168
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2170
    :cond_4
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1127
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1129
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_0

    .line 1130
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1702
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1703
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1706
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 1707
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 1712
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 1714
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v0

    .line 1717
    :cond_1
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1723
    :cond_2
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    .line 1727
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1728
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 1739
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 1741
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1735
    :cond_6
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_1
    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_8

    .line 1747
    :cond_7
    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_8
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2127
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2129
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 2130
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2131
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 p2, 0x1

    .line 2133
    iput-boolean p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2135
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1856
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1857
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1617
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1618
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v1

    .line 1622
    :cond_0
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_1

    .line 1623
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1628
    :cond_1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1629
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    .line 1632
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1636
    :cond_2
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 1637
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 1645
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 1650
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-eqz v1, :cond_6

    .line 1659
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1655
    :cond_5
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    :cond_6
    :goto_0
    move v3, v1

    :goto_1
    return v3
.end method

.method public removeItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1405
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1406
    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .line 1417
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_6

    :cond_0
    if-nez v0, :cond_1

    .line 1421
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1422
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1423
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1424
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1425
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1427
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 1431
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1432
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1434
    iget-boolean p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p2, :cond_4

    .line 1435
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1440
    :cond_2
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1437
    :cond_3
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1445
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    if-eqz p2, :cond_5

    .line 1446
    invoke-virtual {p2}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->start()V

    goto :goto_1

    .line 1448
    :cond_5
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2052
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2053
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 61
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 610
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 611
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 613
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_1

    .line 614
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 623
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 626
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 2494
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 2480
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2578
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1762
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 1777
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1779
    :cond_0
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 1783
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1

    .line 1785
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1788
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1789
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    :cond_2
    return-void
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .line 2564
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2565
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2566
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 2514
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 580
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 594
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 2528
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 8

    .line 2210
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2214
    :cond_0
    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 2219
    invoke-virtual/range {v2 .. v7}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 3

    .line 2247
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2252
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2253
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2256
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 2257
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2258
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2259
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2260
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    const/4 p1, 0x4

    .line 2263
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2264
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr p3, v1

    .line 2265
    iput p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2267
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2268
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2270
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2271
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2272
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 2275
    iget-object p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    sub-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p5

    .line 2276
    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 2279
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2282
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    :cond_2
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_3

    .line 2286
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2291
    :cond_3
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    if-eq p1, v2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_0

    .line 2296
    :cond_4
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2293
    :cond_5
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2300
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public stopDrag(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1579
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1580
    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1591
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    if-eqz p1, :cond_0

    .line 1594
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    goto :goto_0

    .line 1596
    :cond_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz p1, :cond_1

    .line 1597
    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;->start()V

    goto :goto_0

    .line 1599
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    .line 1603
    :goto_0
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz p1, :cond_2

    .line 1604
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1585
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1586
    invoke-virtual {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method
