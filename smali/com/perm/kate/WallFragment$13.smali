.class Lcom/perm/kate/WallFragment$13;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

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

    .line 662
    if-nez p4, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 665
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2}, Lcom/perm/kate/WallFragment;->access$400(Lcom/perm/kate/WallFragment;)I

    move-result v2

    if-nez v2, :cond_0

    .line 666
    const-string v2, "Kate.WallFragment"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v2, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 668
    iget-object v2, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2}, Lcom/perm/kate/WallFragment;->access$1000(Lcom/perm/kate/WallFragment;)V

    .line 669
    iget-object v2, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2, v1}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 664
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
    .line 676
    iget-object v0, p0, Lcom/perm/kate/WallFragment$13;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 677
    return-void
.end method
