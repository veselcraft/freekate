.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"


# instance fields
.field public final lastMediaSequence:J

.field public final lastPartIndex:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;JI)V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    .line 377
    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    return-void
.end method
