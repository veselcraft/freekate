.class public final Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# instance fields
.field public final adTagUri:Landroid/net/Uri;

.field public final adsId:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 0

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 735
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 743
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 747
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    .line 748
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

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
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 754
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
