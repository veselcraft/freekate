.class Lcom/perm/kate/NotificationsAdapter$4;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotificationsAdapter;

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$4;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/MarketItem;

    .line 1295
    .local v0, "video":Lcom/perm/kate/api/MarketItem;
    iget-wide v2, v0, Lcom/perm/kate/api/MarketItem;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter$4;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object v1, v1, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/perm/kate/Helper;->openMarketItem(JJLandroid/content/Context;)V

    .line 1296
    return-void
.end method
