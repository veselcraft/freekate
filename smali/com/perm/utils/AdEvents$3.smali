.class Lcom/perm/utils/AdEvents$3;
.super Ljava/lang/Thread;
.source "AdEvents.java"


# instance fields
.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$statistics:Ljava/util/List;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/perm/utils/AdEvents$3;->val$post_ids:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/AdEvents$3;->val$ad_data:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/utils/AdEvents$3;->val$track_code:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/AdEvents$3;->val$statistics:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "[{\"e\":\"post_interaction\",\"post_id\":\"%s\",\"action\":\"open_group\",\"ad_data\":\"%s\",\"track_code\":\"%s\"}]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 99
    iget-object v3, p0, Lcom/perm/utils/AdEvents$3;->val$post_ids:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/utils/AdEvents$3;->val$ad_data:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/perm/utils/AdEvents$3;->val$track_code:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v1, v0}, Lcom/perm/kate/api/Api;->trackEvents(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/perm/utils/AdEvents$3;->val$statistics:Ljava/util/List;

    const-string v1, "click_post_owner"

    invoke-static {v0, v1}, Lcom/perm/utils/AdEvents;->access$000(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    invoke-static {v1}, Lcom/perm/utils/AdEvents;->access$100(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
