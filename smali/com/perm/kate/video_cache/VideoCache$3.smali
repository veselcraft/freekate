.class final Lcom/perm/kate/video_cache/VideoCache$3;
.super Ljava/lang/Thread;
.source "VideoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCache;->clearInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 208
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper;->getVideoDownloads()Ljava/util/ArrayList;

    move-result-object v2

    .line 209
    .local v2, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper;->clearVideoCache()V

    .line 211
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    .line 212
    .local v1, "v":Lcom/perm/kate/api/Video;
    iget-wide v4, v1, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v6, v1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v4, v5, v6, v7}, Lcom/perm/kate/video_cache/VideoCache;->removeFile(JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v1    # "v":Lcom/perm/kate/api/Video;
    .end local v2    # "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    :catch_0
    move-exception v0

    .line 214
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 217
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
