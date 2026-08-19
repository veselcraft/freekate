.class Lcom/perm/kate/NotificationsAdapter$4;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsAdapter;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$4;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1328
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/MarketItem;

    .line 1329
    iget-wide v0, p1, Lcom/perm/kate/api/MarketItem;->id:J

    iget-wide v2, p1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    iget-object p1, p0, Lcom/perm/kate/NotificationsAdapter$4;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object p1, p1, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/perm/kate/Helper;->openMarketItem(JJLandroid/content/Context;)V

    return-void
.end method
