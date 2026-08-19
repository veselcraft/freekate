.class Lcom/perm/kate/MarketItemsFragment$4;
.super Ljava/lang/Object;
.source "MarketItemsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object p1, p1, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/MarketItem;

    .line 141
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 142
    iget-object p3, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class p4, Lcom/perm/kate/MarketItemActivity;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "item"

    .line 143
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    iget-object p1, p0, Lcom/perm/kate/MarketItemsFragment$4;->this$0:Lcom/perm/kate/MarketItemsFragment;

    const/16 p3, 0xd

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
