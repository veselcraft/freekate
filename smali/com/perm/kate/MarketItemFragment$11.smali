.class Lcom/perm/kate/MarketItemFragment$11;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$11;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$11;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v1, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v1, :cond_0

    .line 370
    iget-wide v2, v1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iput-wide v2, v0, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    .line 371
    iget-wide v1, v1, Lcom/perm/kate/api/MarketItem;->id:J

    iput-wide v1, v0, Lcom/perm/kate/MarketItemFragment;->item_id:J

    .line 373
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/MarketItemFragment;->access$400(Lcom/perm/kate/MarketItemFragment;)V

    return-void
.end method
