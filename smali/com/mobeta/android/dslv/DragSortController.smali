.class public Lcom/mobeta/android/dslv/DragSortController;
.super Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V
    .locals 4

    .line 115
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    .line 48
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    .line 60
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    .line 62
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 64
    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    .line 72
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    const/high16 v1, 0x43fa0000    # 500.0f

    .line 74
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    .line 447
    new-instance v1, Lcom/mobeta/android/dslv/DragSortController$1;

    invoke-direct {v1, p0}, Lcom/mobeta/android/dslv/DragSortController$1;-><init>(Lcom/mobeta/android/dslv/DragSortController;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 116
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 117
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 118
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 119
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    .line 121
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    .line 122
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    .line 123
    iput p6, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    .line 124
    invoke-virtual {p0, p4}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveMode(I)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/mobeta/android/dslv/DragSortController;->setDragInitMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mobeta/android/dslv/DragSortController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/mobeta/android/dslv/DragSortController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mobeta/android/dslv/DragSortController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mobeta/android/dslv/DragSortController;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobeta/android/dslv/DragSortController;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingSpeed:F

    return p0
.end method

.method static synthetic access$400(Lcom/mobeta/android/dslv/DragSortController;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    return p0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 317
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 321
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 364
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 365
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 369
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-nez v1, :cond_1

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    :cond_1
    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    const/4 v1, 0x1

    .line 374
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    .line 375
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    .line 376
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    return v1
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 280
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p1, :cond_0

    .line 281
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 418
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 419
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    .line 420
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 p3, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 384
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 388
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    sub-int v1, v0, v1

    .line 389
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    sub-int v2, p2, v2

    .line 391
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v5, v4, :cond_5

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 393
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-ne v3, v5, :cond_2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz p1, :cond_2

    .line 394
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 396
    :cond_2
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    if-eqz p1, :cond_5

    sub-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_5

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_5

    .line 398
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 399
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 401
    :cond_3
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    if-eq v3, v4, :cond_5

    sub-int/2addr v0, p4

    .line 402
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p4, v0, :cond_4

    iget-boolean p4, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p4, :cond_4

    .line 403
    iput-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 404
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    :cond_4
    sub-int/2addr p2, p1

    .line 405
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_5

    .line 406
    iput-boolean p3, p0, Lcom/mobeta/android/dslv/DragSortController;->mCanDrag:Z

    :cond_5
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 433
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-nez p1, :cond_0

    .line 434
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 242
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->isDragEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/mobeta/android/dslv/DragSortListView;->listViewIntercepted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    if-ne p1, v1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto :goto_1

    .line 258
    :cond_2
    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p1, :cond_4

    .line 259
    iget p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mPositionX:I

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    neg-int p1, p1

    .line 260
    :goto_0
    iget-object p2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_4

    .line 262
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 266
    :cond_4
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    .line 267
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    goto :goto_1

    .line 254
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrX:I

    .line 255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mCurrY:I

    :cond_6
    :goto_1
    return v0
.end method

.method public setDragInitMode(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragInitMode:I

    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(IIII)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDragging:Z

    return p1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 0

    .line 299
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .line 303
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 8

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 328
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 331
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 332
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 339
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 345
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 347
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v2, v6, :cond_1

    const/4 v6, 0x1

    aget v7, v3, v6

    if-le p1, v7, :cond_1

    aget v3, v3, v5

    .line 348
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortController;->mTempLoc:[I

    aget v2, v2, v6

    .line 349
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_1

    .line 351
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemX:I

    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortController;->mItemY:I

    return v0

    :cond_1
    return v4
.end method
