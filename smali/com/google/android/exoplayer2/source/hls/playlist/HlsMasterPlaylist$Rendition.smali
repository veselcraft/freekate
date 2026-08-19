.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Rendition;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final name:Ljava/lang/String;

.field public final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 144
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Rendition;->format:Lcom/google/android/exoplayer2/Format;

    .line 146
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Rendition;->name:Ljava/lang/String;

    return-void
.end method
