.class Lcom/perm/kate/MarketItemsFragment$4;
.super Ljava/lang/Object;
.source "MarketItemsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v2, v2, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/MarketItem;

    .line 141
    .local v1, "item":Lcom/perm/kate/api/MarketItem;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/MarketItemActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/MarketItemsFragment;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method
