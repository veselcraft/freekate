.class Lcom/perm/utils/MarketAlbumsHelper$1;
.super Lcom/perm/kate/session/Callback;
.source "MarketAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$albums_ids:Ljava/util/ArrayList;

.field final synthetic val$callback:Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;

.field final synthetic val$market_id:J

.field final synthetic val$owner_id:J


# direct methods
.method public static synthetic $r8$lambda$8ynIK2wE00fucww9UDf4IlZHvKs(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/perm/utils/MarketAlbumsHelper$1;->lambda$ready$0(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    iput-object p2, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p3, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$market_id:J

    iput-object p7, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$callback:Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;

    iput-object p8, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$albums_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic lambda$ready$0(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/MarketAlbumsHelper;->access$000(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 24
    move-object v7, p1

    check-cast v7, Ljava/util/ArrayList;

    .line 25
    iget-object p1, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$market_id:J

    iget-object v6, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$callback:Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;

    iget-object v8, p0, Lcom/perm/utils/MarketAlbumsHelper$1;->val$albums_ids:Ljava/util/ArrayList;

    new-instance v9, Lcom/perm/utils/MarketAlbumsHelper$1$$ExternalSyntheticLambda0;

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/perm/utils/MarketAlbumsHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
