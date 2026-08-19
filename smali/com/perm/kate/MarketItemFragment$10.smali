.class Lcom/perm/kate/MarketItemFragment$10;
.super Ljava/lang/Thread;
.source "MarketItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$product_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;ZLjava/lang/Long;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 316
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
    .locals 14

    .line 319
    iget-boolean v0, p0, Lcom/perm/kate/MarketItemFragment$10;->val$like:Z

    if-eqz v0, :cond_0

    .line 320
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$10;->val$owner_id:Ljava/lang/Long;

    iget-wide v3, p0, Lcom/perm/kate/MarketItemFragment$10;->val$product_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/MarketItemFragment$10;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$10;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-string v4, "market"

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 322
    :cond_0
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v9, p0, Lcom/perm/kate/MarketItemFragment$10;->val$owner_id:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/perm/kate/MarketItemFragment$10;->val$product_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, p0, Lcom/perm/kate/MarketItemFragment$10;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$10;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    const-string v10, "market"

    invoke-virtual/range {v8 .. v13}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
