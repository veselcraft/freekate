.class Lcom/perm/utils/AdEvents$2;
.super Ljava/lang/Thread;
.source "AdEvents.java"


# instance fields
.field final synthetic val$news:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/perm/utils/AdEvents$2;->val$news:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 65
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/perm/utils/AdEvents$2;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/NewsItem;

    .line 67
    iget-object v3, v2, Lcom/perm/kate/api/NewsItem;->ad_data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 72
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v7, v2, Lcom/perm/kate/api/NewsItem;->ads_id1:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v2, Lcom/perm/kate/api/NewsItem;->ads_id2:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/perm/kate/db/DataHelper;->adEventExists(III)Z

    move-result v6

    const-string v7, "ae_adEventExists"

    const/4 v8, 0x0

    .line 73
    invoke-static {v4, v5, v7, v8}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    if-eqz v6, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 77
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v7, v2, Lcom/perm/kate/api/NewsItem;->ads_id1:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v2, Lcom/perm/kate/api/NewsItem;->ads_id2:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Lcom/perm/kate/db/DataHelper;->createAdEvent(III)V

    const-string v3, "ae_createAdEvent"

    .line 78
    invoke-static {v4, v5, v3}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 80
    iget-object v2, v2, Lcom/perm/kate/api/NewsItem;->statistics:Ljava/util/List;

    const-string v3, "load"

    invoke-static {v2, v3}, Lcom/perm/utils/AdEvents;->access$000(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-static {v1}, Lcom/perm/utils/AdEvents;->access$100(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
