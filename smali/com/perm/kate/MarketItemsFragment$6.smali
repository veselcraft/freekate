.class Lcom/perm/kate/MarketItemsFragment$6;
.super Ljava/lang/Thread;
.source "MarketItemsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v0, v0, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v2}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    move-object v5, v1

    .line 183
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemsFragment;->access$100(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget v0, v0, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v8, v0, Lcom/perm/kate/MarketItemsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
