.class Lcom/perm/kate/MessageThreadFragment$21;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 1148
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1152
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v6, v6, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    if-eqz v6, :cond_0

    .line 1153
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v6, v6, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {v6, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 1155
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 1156
    .local v2, "totalCount":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1157
    .local v0, "firstVisible":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x1

    .line 1159
    .local v3, "visibleCount":I
    if-nez v2, :cond_2

    .line 1170
    :cond_1
    :goto_0
    return-void

    .line 1161
    :cond_2
    add-int v6, v0, v3

    add-int/lit8 v7, v2, -0x2

    if-lt v6, v7, :cond_4

    move v1, v4

    .line 1162
    .local v1, "loadMore":Z
    :goto_1
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v6, v6, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v6, :cond_3

    .line 1163
    if-nez v0, :cond_5

    move v1, v4

    .line 1164
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v5}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1165
    const-string v5, "Kate.MessageThreadFragment"

    const-string v6, "Loading more"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v5, v4}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 1167
    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v5}, Lcom/perm/kate/MessageThreadFragment;->access$2700(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1168
    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$21;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v5, v4}, Lcom/perm/kate/MessageThreadFragment;->showProgressBar(Z)V

    goto :goto_0

    .end local v1    # "loadMore":Z
    :cond_4
    move v1, v5

    .line 1161
    goto :goto_1

    .restart local v1    # "loadMore":Z
    :cond_5
    move v1, v5

    .line 1163
    goto :goto_2
.end method
