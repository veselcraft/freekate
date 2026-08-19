.class Lcom/perm/kate/MarketItemFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$5;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 215
    check-cast p1, Ljava/util/ArrayList;

    .line 216
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Group;

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 219
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$5;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {p1}, Lcom/perm/kate/MarketItemFragment;->access$000(Lcom/perm/kate/MarketItemFragment;)V

    return-void
.end method
