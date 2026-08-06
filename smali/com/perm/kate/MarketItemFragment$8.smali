.class Lcom/perm/kate/MarketItemFragment$8;
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
    .line 265
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v1, v1, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v2, v1, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v2, v2, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v2, v2, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v4}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v5, v5, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-boolean v5, v5, Lcom/perm/kate/api/MarketItem;->can_comment:Z

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;Z)V

    .line 270
    :cond_0
    return-void
.end method
