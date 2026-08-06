.class Lcom/perm/kate/MarketItemsFragment$6;
.super Ljava/lang/Thread;
.source "MarketItemsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemsFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemsFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 179
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v1, v1, Lcom/perm/kate/MarketItemsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 180
    .local v0, "offset":I
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 181
    .local v4, "album_id_tmp":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 182
    const/4 v4, 0x0

    .line 183
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v2}, Lcom/perm/kate/MarketItemsFragment;->access$100(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget v6, v6, Lcom/perm/kate/MarketItemsFragment;->page_size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    iget-object v7, v7, Lcom/perm/kate/MarketItemsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/MarketItemsFragment$6;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v8}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 184
    return-void
.end method
