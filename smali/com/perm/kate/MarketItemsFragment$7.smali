.class Lcom/perm/kate/MarketItemsFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemsFragment.java"


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
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 205
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    .line 206
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketItemsFragment;->showProgressBar(Z)V

    .line 207
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 192
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 193
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketItem;>;"
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v1, v1, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v1, v3}, Lcom/perm/kate/MarketItemsFragment;->showProgressBar(Z)V

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget v2, v2, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1, v3}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemsFragment;->access$200(Lcom/perm/kate/MarketItemsFragment;)V

    .line 200
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$7;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    goto :goto_0
.end method
