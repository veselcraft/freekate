.class Lcom/perm/kate/NewsFragment$10;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

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

    .line 519
    if-nez p4, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 522
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v2}, Lcom/perm/kate/NewsFragment;->access$100(Lcom/perm/kate/NewsFragment;)I

    move-result v2

    if-nez v2, :cond_0

    .line 523
    const-string v2, "NewsFragment"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v2, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 525
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2, v1}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 526
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1}, Lcom/perm/kate/NewsFragment;->access$700(Lcom/perm/kate/NewsFragment;)V

    goto :goto_0

    .line 521
    .end local v0    # "loadMore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 534
    return-void
.end method
