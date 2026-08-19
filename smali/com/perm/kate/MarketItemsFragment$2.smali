.class Lcom/perm/kate/MarketItemsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 123
    iget-object p1, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 112
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemsFragment;->access$200(Lcom/perm/kate/MarketItemsFragment;)V

    .line 114
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget v2, v1, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 115
    invoke-static {v1, p1}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 117
    invoke-static {v1, p1}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    :goto_0
    return-void
.end method
