.class Lcom/perm/kate/MarketItemFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MarketItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$5;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 211
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 212
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 215
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$5;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketItemFragment;->access$000(Lcom/perm/kate/MarketItemFragment;)V

    goto :goto_0
.end method
