.class Lcom/perm/kate/video_cache/VideoCache$1;
.super Ljava/lang/Thread;
.source "VideoCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    :try_start_0
    invoke-static {}, Lcom/perm/kate/video_cache/VideoCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    array-length v1, v0

    if-lez v1, :cond_0

    .line 119
    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCache;->access$000([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
