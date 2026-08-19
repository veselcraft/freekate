.class Lcom/perm/kate/MarketItemFragment$8;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 272
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object p1, p1, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 273
    iget-wide v1, p1, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v2, p1, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v2, v2, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$8;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object p1, p1, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-boolean v5, p1, Lcom/perm/kate/api/MarketItem;->can_comment:Z

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;Z)V

    :cond_0
    return-void
.end method
