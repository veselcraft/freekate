.class Lcom/perm/kate/MarketItemFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MarketItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 203
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketItemFragment;->showProgressBar(Z)V

    .line 204
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 193
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 194
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/MarketItem;

    iput-object v1, v2, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1, v3}, Lcom/perm/kate/MarketItemFragment;->showProgressBar(Z)V

    .line 197
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$4;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemFragment;->access$000(Lcom/perm/kate/MarketItemFragment;)V

    .line 198
    return-void
.end method
