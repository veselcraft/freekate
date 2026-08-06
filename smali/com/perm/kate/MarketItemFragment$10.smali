.class Lcom/perm/kate/MarketItemFragment$10;
.super Ljava/lang/Thread;
.source "MarketItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemFragment;->setLike(Ljava/lang/Long;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$product_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;ZLjava/lang/Long;JLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$10;->this$0:Lcom/perm/kate/MarketItemFragment;

    iput-boolean p2, p0, Lcom/perm/kate/MarketItemFragment$10;->val$like:Z

    iput-object p3, p0, Lcom/perm/kate/MarketItemFragment$10;->val$owner_id:Ljava/lang/Long;

    iput-wide p4, p0, Lcom/perm/kate/MarketItemFragment$10;->val$product_id:J

    iput-object p6, p0, Lcom/perm/kate/MarketItemFragment$10;->val$callback_like:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/perm/kate/MarketItemFragment$10;->val$like:Z

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$10;->val$owner_id:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/MarketItemFragment$10;->val$product_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "market"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/MarketItemFragment$10;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/MarketItemFragment$10;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v6}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$10;->val$owner_id:Ljava/lang/Long;

    const-string v2, "market"

    iget-wide v4, p0, Lcom/perm/kate/MarketItemFragment$10;->val$product_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment$10;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/MarketItemFragment$10;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v5}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
