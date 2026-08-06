.class public Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "CardRecyclerLayoutManager.java"


# static fields
.field protected static final MINIMIZE_COEFFICIENT:F = 0.75f

.field private static final MIN_SCROLL_VELOCITY:I = 0x3e8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 20
    return-void
.end method


# virtual methods
.method public calculateScrollDistanceOnClick(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 49
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 52
    sub-int v0, v4, v2

    .line 53
    sub-int v2, v3, v5

    .line 55
    if-ne p1, v1, :cond_0

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    neg-int v0, v2

    goto :goto_0
.end method

.method public calculateScrollDistanceOnFling(I)I
    .locals 7

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getWidth()I

    move-result v1

    .line 71
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 74
    invoke-virtual {p0, v2}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 81
    sub-int v0, v5, v3

    .line 82
    sub-int v3, v4, v2

    .line 84
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_3

    .line 86
    div-int/lit8 v4, v1, 0x2

    if-gt v5, v4, :cond_2

    .line 89
    div-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    if-lez p1, :cond_0

    .line 109
    :cond_2
    neg-int v0, v3

    goto :goto_0

    .line 104
    :cond_3
    if-lez p1, :cond_2

    goto :goto_0
.end method

.method public isViewActive(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 6

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 28
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getWidthMode()I

    move-result v2

    .line 29
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 31
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 28
    invoke-static {v1, v2, v3, v4, v5}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 32
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getHeightMode()I

    move-result v3

    .line 33
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 35
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->canScrollVertically()Z

    move-result v5

    .line 32
    invoke-static {v2, v3, v4, v0, v5}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 37
    return-void
.end method
