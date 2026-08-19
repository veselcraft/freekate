.class Lcom/perm/kate/MarketItemFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 207
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 197
    check-cast p1, Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/MarketItem;

    iput-object p1, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 201
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {p1}, Lcom/perm/kate/MarketItemFragment;->access$000(Lcom/perm/kate/MarketItemFragment;)V

    return-void
.end method
