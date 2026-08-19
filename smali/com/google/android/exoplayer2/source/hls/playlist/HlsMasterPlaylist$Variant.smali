.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# instance fields
.field public final audioGroupId:Ljava/lang/String;

.field public final captionGroupId:Ljava/lang/String;

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final subtitleGroupId:Ljava/lang/String;

.field public final url:Landroid/net/Uri;

.field public final videoGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    .line 90
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->format:Lcom/google/android/exoplayer2/Format;

    .line 91
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->captionGroupId:Ljava/lang/String;

    return-void
.end method

.method public static createMediaPlaylistVariantUrl(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;
    .locals 8

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "0"

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-mpegURL"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 106
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public copyWithFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;
    .locals 8

    .line 117
    new-instance v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->url:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;->captionGroupId:Ljava/lang/String;

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$Variant;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
