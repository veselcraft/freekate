.class Lcom/perm/kate/MarketItemFragment$PhotoClick;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MarketItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoClick"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method public constructor <init>(Lcom/perm/kate/MarketItemFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;
    .param p2, "index"    # I

    .prologue
    .line 289
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p2, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->index:I

    .line 291
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    const-string v1, "com.perm.kate.photos"

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v2, v2, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v2, v2, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    const-string v1, "com.perm.kate.position"

    iget v2, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$PhotoClick;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/MarketItemFragment;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method
