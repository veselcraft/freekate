.class Lcom/perm/kate/MarketItemsFragment$5;
.super Ljava/lang/Object;
.source "MarketItemsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MarketItemsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 159
    if-nez p4, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 162
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v2}, Lcom/perm/kate/MarketItemsFragment;->access$300(Lcom/perm/kate/MarketItemsFragment;)I

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v2, v1}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    .line 164
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v2}, Lcom/perm/kate/MarketItemsFragment;->access$500(Lcom/perm/kate/MarketItemsFragment;)V

    .line 165
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v2, v1}, Lcom/perm/kate/MarketItemsFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 161
    .end local v0    # "loadMore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 172
    return-void
.end method
