.class Lcom/perm/kate/MessageThreadFragment$33;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1952
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$33;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .line 1960
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$33;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 1963
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result p2

    .line 1964
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1965
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    sub-int/2addr v1, p1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    if-nez p2, :cond_1

    return-void

    :cond_1
    add-int/2addr v1, v0

    add-int/lit8 p2, p2, -0x2

    const/4 v2, 0x0

    if-lt v1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1970
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$33;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v3, v1, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    move p2, v2

    :cond_4
    if-eqz p2, :cond_5

    .line 1972
    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2300(Lcom/perm/kate/MessageThreadFragment;)I

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "Kate.MessageThreadFragm"

    const-string v0, "Loading more"

    .line 1973
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$33;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 1975
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$33;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$4300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1976
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$33;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_5
    return-void
.end method
