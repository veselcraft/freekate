.class Lcom/perm/kate/MarketItemsFragment$1;
.super Ljava/lang/Thread;
.source "MarketItemsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 68
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v4, v0

    .line 71
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemsFragment;->access$100(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v2

    neg-long v2, v2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget v0, v0, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v7, v0, Lcom/perm/kate/MarketItemsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
