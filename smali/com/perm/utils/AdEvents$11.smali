.class Lcom/perm/utils/AdEvents$11;
.super Ljava/lang/Thread;
.source "AdEvents.java"


# instance fields
.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/perm/utils/AdEvents$11;->val$link:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/AdEvents$11;->val$post_ids:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/utils/AdEvents$11;->val$ad_data:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/utils/AdEvents$11;->val$track_code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "snippet_action"

    .line 255
    iget-object v1, p0, Lcom/perm/utils/AdEvents$11;->val$link:Ljava/lang/String;

    const-string v2, "vk.com/page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "open_wiki"

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/perm/utils/AdEvents$11;->val$link:Ljava/lang/String;

    const-string v2, "vk.com/@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "open_layer"

    :cond_1
    const-string v1, "[{\"e\":\"post_interaction\",\"post_id\":\"%s\",\"action\":\"%s\",\"ad_data\":\"%s\",\"track_code\":\"%s\",\"link\":\"%s\"}]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 259
    iget-object v4, p0, Lcom/perm/utils/AdEvents$11;->val$post_ids:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/perm/utils/AdEvents$11;->val$ad_data:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/perm/utils/AdEvents$11;->val$track_code:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/perm/utils/AdEvents$11;->val$link:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/utils/AdEvents;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v1, v0}, Lcom/perm/kate/api/Api;->trackEvents(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
