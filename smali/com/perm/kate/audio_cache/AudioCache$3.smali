.class final Lcom/perm/kate/audio_cache/AudioCache$3;
.super Ljava/lang/Thread;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/audio_cache/AudioCache;->clearInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 272
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper;->getDownloads()Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    .local v1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3}, Lcom/perm/kate/db/DataHelper;->clearAudioCache()V

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 276
    .local v0, "a":Lcom/perm/kate/api/Audio;
    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v6, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v4, v5, v6, v7}, Lcom/perm/kate/audio_cache/AudioCache;->removeFile(JJ)V

    .line 277
    iget-object v4, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 278
    iget-object v4, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/perm/kate/audio_cache/LyricsCache;->removeFile(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    .end local v1    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :catch_0
    move-exception v2

    .line 281
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 284
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
