.class Lcom/perm/utils/AdEvents$1;
.super Ljava/lang/Thread;
.source "AdEvents.java"


# instance fields
.field final synthetic val$ad_data_impression:Ljava/lang/String;

.field final synthetic val$ads_id1:I

.field final synthetic val$ads_id2:I

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$statistics:Ljava/util/List;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/perm/utils/AdEvents$1;->val$ads_id1:I

    iput p2, p0, Lcom/perm/utils/AdEvents$1;->val$ads_id2:I

    iput-object p3, p0, Lcom/perm/utils/AdEvents$1;->val$ad_data_impression:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/AdEvents$1;->val$post_ids:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/utils/AdEvents$1;->val$track_code:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/utils/AdEvents$1;->val$statistics:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 35
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget v1, p0, Lcom/perm/utils/AdEvents$1;->val$ads_id1:I

    iget v2, p0, Lcom/perm/utils/AdEvents$1;->val$ads_id2:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/perm/kate/db/DataHelper;->adEventExists(III)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget v1, p0, Lcom/perm/utils/AdEvents$1;->val$ads_id1:I

    iget v2, p0, Lcom/perm/utils/AdEvents$1;->val$ads_id2:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/perm/kate/db/DataHelper;->createAdEvent(III)V

    const-string v0, "[{\"event_type\":\"impression\",\"ad_data_impression\":\"%s\"}]"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 40
    iget-object v4, p0, Lcom/perm/utils/AdEvents$1;->val$ad_data_impression:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, v2, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v2, v0}, Lcom/perm/kate/api/Api;->registerAdEvents(Ljava/lang/String;)V

    const-string v0, "[{\"e\":\"view_post\",\"post_ids\":[\"%s\"],\"track_code\":[\"%s\"]}]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    iget-object v4, p0, Lcom/perm/utils/AdEvents$1;->val$post_ids:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/perm/utils/AdEvents$1;->val$track_code:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v1, v0}, Lcom/perm/kate/api/Api;->trackEvents(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/perm/utils/AdEvents$1;->val$statistics:Ljava/util/List;

    const-string v1, "impression"

    invoke-static {v0, v1}, Lcom/perm/utils/AdEvents;->access$000(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-static {v1}, Lcom/perm/utils/AdEvents;->access$100(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/perm/kate/MainActivity;->create_time:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
