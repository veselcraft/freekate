.class public Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "FSCardRecyclerLayoutManager.java"


# static fields
.field public static final EAR_PROPORTION:F = 0.125f

.field private static final MIN_SCROLL_VELOCITY:I = 0x3e8


# instance fields
.field private final minimalMargin:I

.field private pictureHeight:I

.field private pictureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 40
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->minimalMargin:I

    .line 42
    return-void
.end method


# virtual methods
.method public calculateScrollDistanceOnClick(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 124
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 127
    sub-int v0, v4, v2

    .line 128
    sub-int v2, v3, v5

    .line 130
    if-ne p1, v1, :cond_0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    neg-int v0, v2

    goto :goto_0
.end method

.method public calculateScrollDistanceOnFling(I)I
    .locals 7

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v1

    .line 146
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 149
    invoke-virtual {p0, v2}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 156
    sub-int v0, v5, v3

    .line 157
    sub-int v3, v4, v2

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_3

    .line 161
    div-int/lit8 v4, v1, 0x2

    if-gt v5, v4, :cond_2

    .line 164
    div-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    if-lez p1, :cond_0

    .line 184
    :cond_2
    neg-int v0, v3

    goto :goto_0

    .line 179
    :cond_3
    if-lez p1, :cond_2

    goto :goto_0
.end method

.method public getOffsetToCenterView()I
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isViewActive(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

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
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 49
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v3

    .line 50
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getHeight()I

    move-result v2

    .line 53
    const/4 v1, 0x0

    .line 55
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureHeight:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureWidth:I

    if-nez v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 59
    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureWidth:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->minimalMargin:I

    sub-int v2, v1, v2

    .line 61
    int-to-float v1, v3

    add-int v4, v3, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v3, v3

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 71
    :goto_1
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v2

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 75
    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 89
    :goto_2
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v1

    .line 90
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidthMode()I

    move-result v3

    .line 91
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    .line 94
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 88
    invoke-static {v1, v3, v4, v2, v5}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 95
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getHeightMode()I

    move-result v3

    .line 96
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 98
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->canScrollVertically()Z

    move-result v5

    .line 95
    invoke-static {v2, v3, v4, v0, v5}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 99
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f900000    # 1.125f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 68
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 78
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v2

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 80
    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 83
    :cond_4
    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 84
    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    goto :goto_2
.end method

.method public scrollToPosition(I)V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 112
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 106
    return-void
.end method

.method public setFirstCardDimensions(II)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureWidth:I

    .line 34
    iput p2, p0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->pictureHeight:I

    .line 35
    return-void
.end method
