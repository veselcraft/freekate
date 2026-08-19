.class Lcom/perm/kate/NewsFragment$10;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

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

    const/4 p3, 0x1

    if-lt p2, p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 522
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p2}, Lcom/perm/kate/NewsFragment;->access$100(Lcom/perm/kate/NewsFragment;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "NewsFragment"

    const-string p4, "Loading more"

    .line 523
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p2, p3}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 525
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p2, p3}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 526
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p2}, Lcom/perm/kate/NewsFragment;->access$700(Lcom/perm/kate/NewsFragment;)V

    .line 528
    :cond_2
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$10;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/NewsFragment;->access$800(Lcom/perm/kate/NewsFragment;Landroid/widget/AbsListView;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
