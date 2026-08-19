.class public final Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackProperties"
.end annotation


# instance fields
.field public final adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

.field public final customCacheKey:Ljava/lang/String;

.field public final drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field public final mimeType:Ljava/lang/String;

.field public final streamKeys:Ljava/util/List;

.field public final subtitles:Ljava/util/List;

.field public final tag:Ljava/lang/Object;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    .line 805
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    .line 806
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 807
    iput-object p4, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 808
    iput-object p5, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    .line 809
    iput-object p6, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    .line 810
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    .line 811
    iput-object p8, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 760
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 819
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 822
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    .line 824
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    .line 825
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 826
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 827
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    .line 828
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    .line 829
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    .line 830
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    .line 831
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 837
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 838
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 839
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 840
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 841
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 842
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 843
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
