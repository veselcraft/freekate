.class Lcom/perm/kate/MarketItemsFragment$1;
.super Ljava/lang/Thread;
.source "MarketItemsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemsFragment;->refreshOnThread()V
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
    .line 65
    iput-object p1, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 68
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 69
    .local v4, "album_id_tmp":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketItemsFragment;->access$000(Lcom/perm/kate/MarketItemsFragment;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    const/4 v4, 0x0

    .line 71
    :cond_0
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

    iget-object v0, p0, Lcom/perm/kate/MarketItemsFragment$1;->this$0:Lcom/perm/kate/MarketItemsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MarketItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 72
    return-void
.end method
