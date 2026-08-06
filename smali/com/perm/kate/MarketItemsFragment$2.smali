.class Lcom/perm/kate/MarketItemsFragment$2;
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
    .line 107
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 123
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketItemsFragment;->showProgressBar(Z)V

    .line 124
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    .line 112
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v0, v2}, Lcom/perm/kate/MarketItemsFragment;->showProgressBar(Z)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemsFragment;->access$200(Lcom/perm/kate/MarketItemsFragment;)V

    .line 114
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget v1, v1, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0, v2}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$2;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/MarketItemsFragment;->access$302(Lcom/perm/kate/MarketItemsFragment;I)I

    goto :goto_0
.end method
