.class public final Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;
.super Ljava/io/IOException;
.source "MediaDrmCallbackException.java"


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uriAfterRedirects:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-direct {p0, p6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    .line 60
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    .line 61
    iput-wide p4, p0, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->bytesLoaded:J

    return-void
.end method
