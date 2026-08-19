.class Lcom/perm/kate/MarketItemFragment$2;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$group:Lcom/perm/kate/api/Group;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$2;->this$0:Lcom/perm/kate/MarketItemFragment;

    iput-object p2, p0, Lcom/perm/kate/MarketItemFragment$2;->val$group:Lcom/perm/kate/api/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://m.vk.com/page"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$2;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v0, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$2;->val$group:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-wide v0, v0, Lcom/perm/kate/api/Page;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$2;->val$group:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    iget-object v0, v0, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$2;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/perm/kate/Helper;->showWebActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
