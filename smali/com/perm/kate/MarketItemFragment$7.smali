.class Lcom/perm/kate/MarketItemFragment$7;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 240
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, p1, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v0, :cond_0

    .line 241
    iget-wide v0, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v1, v1, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v2, v1, Lcom/perm/kate/api/MarketItem;->id:J

    iget-object v1, v1, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/perm/kate/MarketItemFragment;->setLike(Ljava/lang/Long;JZ)V

    .line 242
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {p1}, Lcom/perm/kate/MarketItemFragment;->access$200(Lcom/perm/kate/MarketItemFragment;)V

    .line 243
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {p1}, Lcom/perm/kate/MarketItemFragment;->access$300(Lcom/perm/kate/MarketItemFragment;)V

    :cond_0
    return-void
.end method
