.class Lcom/perm/kate/FixedBottomBehavior;
.super Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.source "NewsFragment.java"


# instance fields
.field private layout1:Landroid/view/View;

.field private layout2:Landroid/view/View;

.field private layout3:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1173
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1174
    return-void
.end method


# virtual methods
.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 1178
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    .line 1180
    .local v2, "result":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p3

    .line 1182
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1184
    .local v0, "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTop()I

    move-result v4

    add-int v1, v3, v4

    .line 1187
    .local v1, "bottomPadding":I
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1188
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1189
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout2:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1190
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout2:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1191
    :cond_3
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1192
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1193
    :cond_4
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1194
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 1195
    :cond_5
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1196
    iget-object v3, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public setLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "layout2"    # Landroid/view/View;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/perm/kate/FixedBottomBehavior;->layout1:Landroid/view/View;

    .line 1202
    iput-object p2, p0, Lcom/perm/kate/FixedBottomBehavior;->layout2:Landroid/view/View;

    .line 1203
    return-void
.end method

.method public setLayout3(Landroid/view/View;)V
    .locals 0
    .param p1, "layout3"    # Landroid/view/View;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/perm/kate/FixedBottomBehavior;->layout3:Landroid/view/View;

    .line 1207
    return-void
.end method
