.class Lcom/perm/kate/MarketItemFragment$7;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v2, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v4, v0, Lcom/perm/kate/api/MarketItem;->id:J

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-object v0, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/perm/kate/MarketItemFragment;->setLike(Ljava/lang/Long;JZ)V

    .line 238
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemFragment;->access$200(Lcom/perm/kate/MarketItemFragment;)V

    .line 239
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$7;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemFragment;->access$300(Lcom/perm/kate/MarketItemFragment;)V

    .line 241
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
