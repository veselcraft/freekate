.class Lcom/perm/kate/SearchActivity$13;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

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

    .line 555
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$5100(Lcom/perm/kate/SearchActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v2, v3, :cond_0

    .line 559
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq v2, v3, :cond_0

    .line 561
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v2, v3, :cond_0

    .line 563
    :cond_2
    if-eqz p4, :cond_0

    .line 565
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_3

    move v0, v1

    .line 566
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$5200(Lcom/perm/kate/SearchActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 567
    const-string v2, "Kate.SearchActivity"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 569
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$5300(Lcom/perm/kate/SearchActivity;)V

    .line 570
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 565
    .end local v0    # "loadMore":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 576
    return-void
.end method
