.class Lcom/perm/kate/MarketItemFragment$2;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemFragment;->displayData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$group:Lcom/perm/kate/api/Group;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$2;->this$0:Lcom/perm/kate/MarketItemFragment;

    iput-object p2, p0, Lcom/perm/kate/MarketItemFragment$2;->val$group:Lcom/perm/kate/api/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://m.vk.com/page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$2;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v2, v2, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v2, v2, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$2;->val$group:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-wide v2, v2, Lcom/perm/kate/api/Page;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$2;->val$group:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v1, v1, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$2;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->showWebActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 144
    return-void
.end method
