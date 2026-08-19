.class public final Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;


# instance fields
.field private final hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

.field private final streamKeys:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 3

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 47
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser()Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    return-object v0
.end method

.method public createPlaylistParser(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 2

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;

    .line 54
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    return-object v0
.end method
