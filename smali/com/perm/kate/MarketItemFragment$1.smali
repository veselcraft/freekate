.class Lcom/perm/kate/MarketItemFragment$1;
.super Ljava/lang/Thread;
.source "MarketItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemFragment;->refreshOnThread()V
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
    .line 52
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v4, v4, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v4, v4, Lcom/perm/kate/MarketItemFragment;->item_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "item_ids":Ljava/lang/String;
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v4, v4, Lcom/perm/kate/MarketItemFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v5}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/perm/kate/session/Session;->getMarketItem(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 59
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v4, v4, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 60
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v4, v3, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v4, "market"

    iget-object v5, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v5, v5, Lcom/perm/kate/MarketItemFragment;->callback1:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v6}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
