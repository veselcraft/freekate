.class public Lcom/inmobi/ads/NativeStrandContainerLayout;
.super Landroid/view/ViewGroup;
.source "NativeStrandContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandContainerLayout$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/inmobi/ads/NativeStrandContainerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeStrandContainerLayout;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 63
    instance-of v0, p1, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 46
    new-instance v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    invoke-direct {v0, v1, v1}, Lcom/inmobi/ads/NativeStrandContainerLayout$a;-><init>(II)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    invoke-direct {v0, p1}, Lcom/inmobi/ads/NativeStrandContainerLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildCount()I

    move-result v2

    .line 52
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    .line 56
    iget v4, v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->a:I

    iget v5, v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->b:I

    iget v6, v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->a:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v0, v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->b:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 52
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandContainerLayout;->measureChildren(II)V

    .line 25
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildCount()I

    move-result v4

    move v3, v0

    move v1, v0

    move v2, v0

    .line 26
    :goto_0
    if-ge v3, v4, :cond_0

    .line 27
    invoke-virtual {p0, v3}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_1

    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    .line 30
    iget v6, v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->a:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 31
    iget v0, v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->b:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 32
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 33
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    .line 26
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 39
    invoke-static {v1, p1}, Lcom/inmobi/ads/NativeStrandContainerLayout;->resolveSize(II)I

    move-result v1

    .line 40
    invoke-static {v0, p2}, Lcom/inmobi/ads/NativeStrandContainerLayout;->resolveSize(II)I

    move-result v0

    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->setMeasuredDimension(II)V

    .line 42
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method
