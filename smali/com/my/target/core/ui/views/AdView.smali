.class public Lcom/my/target/core/ui/views/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/my/target/core/ui/views/AdView;->a:I

    .line 25
    iput v0, p0, Lcom/my/target/core/ui/views/AdView;->b:I

    .line 26
    iput v0, p0, Lcom/my/target/core/ui/views/AdView;->c:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    .line 50
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 79
    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->e:I

    if-lez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->e:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/my/target/core/ui/views/AdView;->f:I

    .line 82
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 81
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 115
    :goto_0
    return-void

    .line 83
    :cond_0
    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    if-lez v3, :cond_3

    if-lez v1, :cond_3

    .line 86
    int-to-float v0, v3

    int-to-float v2, v1

    div-float v4, v0, v2

    .line 87
    iget v2, p0, Lcom/my/target/core/ui/views/AdView;->a:I

    .line 88
    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->c:I

    .line 89
    if-gt v2, v3, :cond_1

    if-le v0, v1, :cond_6

    .line 91
    :cond_1
    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_2

    .line 93
    int-to-float v0, v1

    iget v2, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 106
    :goto_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 99
    :cond_2
    int-to-float v0, v3

    iget v1, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v3

    goto :goto_1

    .line 108
    :cond_3
    if-lez v3, :cond_5

    if-lez v1, :cond_5

    .line 111
    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->b:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/my/target/core/ui/views/AdView;->b:I

    if-le v3, v0, :cond_4

    iget v3, p0, Lcom/my/target/core/ui/views/AdView;->b:I

    .line 112
    :cond_4
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 114
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public setDesiredSize(II)V
    .locals 2

    .prologue
    .line 57
    iput p1, p0, Lcom/my/target/core/ui/views/AdView;->a:I

    .line 58
    iput p2, p0, Lcom/my/target/core/ui/views/AdView;->c:I

    .line 59
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/ui/views/AdView;->d:F

    goto :goto_0
.end method

.method public setFixedSize(II)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/my/target/core/ui/views/AdView;->e:I

    .line 66
    iput p2, p0, Lcom/my/target/core/ui/views/AdView;->f:I

    .line 67
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/my/target/core/ui/views/AdView;->b:I

    .line 72
    return-void
.end method
