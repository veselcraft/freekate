.class Lcom/perm/kate/MarketItemFragment$13;
.super Ljava/lang/Thread;
.source "MarketItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$callback_delete:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$13;->this$0:Lcom/perm/kate/MarketItemFragment;

    iput-object p2, p0, Lcom/perm/kate/MarketItemFragment$13;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 390
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$13;->this$0:Lcom/perm/kate/MarketItemFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 391
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$13;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v1, v0, Lcom/perm/kate/MarketItemFragment;->item:Lcom/perm/kate/api/MarketItem;

    iget-wide v3, v1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iget-wide v5, v1, Lcom/perm/kate/api/MarketItem;->id:J

    iget-object v7, p0, Lcom/perm/kate/MarketItemFragment$13;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->deleteMarket(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 392
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$13;->this$0:Lcom/perm/kate/MarketItemFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
