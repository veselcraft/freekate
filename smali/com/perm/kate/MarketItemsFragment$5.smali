.class Lcom/perm/kate/MarketItemsFragment$5;
.super Ljava/lang/Object;
.source "MarketItemsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    const/4 p1, 0x1

    if-lt p2, p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 162
    iget-object p2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {p2}, Lcom/perm/kate/MarketItemsFragment;->access$300(Lcom/perm/kate/MarketItemsFragment;)I

    move-result p2

    if-nez p2, :cond_2

    .line 163
    iget-object p2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    .line 164
    iget-object p2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {p2}, Lcom/perm/kate/MarketItemsFragment;->access$500(Lcom/perm/kate/MarketItemsFragment;)V

    .line 165
    iget-object p2, p0, Lcom/perm/kate/MarketItemsFragment$5;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
