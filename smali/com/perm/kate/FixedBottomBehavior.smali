.class Lcom/perm/kate/FixedBottomBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.source "NewsFragment.java"


# instance fields
.field private layout1:Landroid/view/View;

.field private layout2:Landroid/view/View;

.field private layout3:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1230
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1235
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    .line 1237
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_5

    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1239
    :cond_0
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 1241
    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getTop()I

    move-result p3

    add-int/2addr p2, p3

    .line 1244
    iget-object p3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    if-eqz p3, :cond_1

    .line 1245
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1246
    :cond_1
    iget-object p3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout2:Landroid/view/View;

    if-eqz p3, :cond_2

    .line 1247
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1248
    :cond_2
    iget-object p3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    if-eqz p3, :cond_3

    .line 1249
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1250
    :cond_3
    iget-object p2, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 1251
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 1252
    :cond_4
    iget-object p2, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 1253
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_5
    :goto_0
    return p1
.end method

.method public setLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    .line 1259
    iput-object p2, p0, Lcom/perm/kate/FixedBottomBehavior;->layout2:Landroid/view/View;

    return-void
.end method

.method public setLayout3(Landroid/view/View;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    return-void
.end method
