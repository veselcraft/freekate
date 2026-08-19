.class Lcom/perm/utils/AdEvents$6;
.super Ljava/lang/Thread;
.source "AdEvents.java"


# instance fields
.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/perm/utils/AdEvents$6;->val$post_ids:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/AdEvents$6;->val$ad_data:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/utils/AdEvents$6;->val$track_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "[{\"e\":\"post_interaction\",\"post_id\":\"%s\",\"action\":\"video_start\",\"ad_data\":\"%s\",\"track_code\":\"%s\"}]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 154
    iget-object v3, p0, Lcom/perm/utils/AdEvents$6;->val$post_ids:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/utils/AdEvents$6;->val$ad_data:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/perm/utils/AdEvents$6;->val$track_code:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v1, v0}, Lcom/perm/kate/api/Api;->trackEvents(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
