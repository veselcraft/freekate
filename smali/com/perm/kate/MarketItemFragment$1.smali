.class Lcom/perm/kate/MarketItemFragment$1;
.super Ljava/lang/Thread;
.source "MarketItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v1, v1, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v1, v1, Lcom/perm/kate/MarketItemFragment;->item_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v3, v2, Lcom/perm/kate/MarketItemFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/perm/kate/session/Session;->getMarketItem(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 63
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v1, v1, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, v0, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-wide v1, v1, Lcom/perm/kate/MarketItemFragment;->owner_id:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$1;->this$0:Lcom/perm/kate/MarketItemFragment;

    iget-object v3, v2, Lcom/perm/kate/MarketItemFragment;->callback1:Lcom/perm/kate/session/Callback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v4, "market"

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
