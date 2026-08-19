.class Lcom/perm/kate/MarketItemFragment$PhotoClick;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field index:I

.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method public constructor <init>(Lcom/perm/kate/MarketItemFragment;I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p2, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 298
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 299
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const-string v1, "com.perm.kate.photos"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 301
    iget v0, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->index:I

    const-string v1, "com.perm.kate.position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
