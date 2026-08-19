.class public final Lcom/google/android/exoplayer2/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adTagUri:Landroid/net/Uri;

.field private adsId:Ljava/lang/Object;

.field private clipEndPositionMs:J

.field private clipRelativeToDefaultPosition:Z

.field private clipRelativeToLiveWindow:Z

.field private clipStartPositionMs:J

.field private clipStartsAtKeyFrame:Z

.field private customCacheKey:Ljava/lang/String;

.field private drmForceDefaultLicenseUri:Z

.field private drmKeySetId:[B

.field private drmLicenseRequestHeaders:Ljava/util/Map;

.field private drmLicenseUri:Landroid/net/Uri;

.field private drmMultiSession:Z

.field private drmPlayClearContentWithoutKey:Z

.field private drmSessionForClearTypes:Ljava/util/List;

.field private drmUuid:Ljava/util/UUID;

.field private liveMaxOffsetMs:J

.field private liveMaxPlaybackSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinPlaybackSpeed:F

.field private liveTargetOffsetMs:J

.field private mediaId:Ljava/lang/String;

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private mimeType:Ljava/lang/String;

.field private streamKeys:Ljava/util/List;

.field private subtitles:Ljava/util/List;

.field private tag:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 96
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 102
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 103
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    const v0, -0x800001

    .line 104
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->clippingProperties:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->endPositionMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    .line 111
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToLiveWindow:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    .line 112
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->relativeToDefaultPosition:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    .line 113
    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startPositionMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    .line 114
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->startsAtKeyFrame:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    .line 115
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 117
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    .line 118
    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    .line 119
    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    .line 120
    iget v1, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    .line 121
    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    .line 122
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 127
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 128
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->subtitles:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    .line 129
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 130
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    .line 133
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    .line 134
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    .line 135
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    .line 136
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    .line 137
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    .line 138
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    .line 139
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    .line 141
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->adsConfiguration:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    .line 144
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem;
    .locals 26

    move-object/from16 v0, p0

    .line 572
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 574
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_4

    .line 576
    new-instance v12, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 580
    iget-object v14, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    if-eqz v14, :cond_2

    .line 581
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v15, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v22}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 591
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adTagUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->adsId:Ljava/lang/Object;

    invoke-direct {v6, v2, v7, v1}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->subtitles:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object/from16 v16, v12

    goto :goto_4

    :cond_4
    move-object/from16 v16, v1

    .line 597
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem;

    .line 598
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const-string v2, ""

    :goto_5
    move-object v14, v2

    new-instance v15, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartPositionMs:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipEndPositionMs:J

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToLiveWindow:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipRelativeToDefaultPosition:Z

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->clipStartsAtKeyFrame:Z

    const/4 v10, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;-><init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V

    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    iget v9, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    iget v10, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v7

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v17 .. v25}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 612
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    :goto_6
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move-object v13, v1

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v19}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v1
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setDrmForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 319
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmForceDefaultLicenseUri:Z

    return-object p0
.end method

.method public setDrmKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 387
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmKeySetId:[B

    return-object p0
.end method

.method public setDrmLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 280
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setDrmLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmLicenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setDrmMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmMultiSession:Z

    return-object p0
.end method

.method public setDrmPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmPlayClearContentWithoutKey:Z

    return-object p0
.end method

.method public setDrmSessionForClearTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 370
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 372
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmSessionForClearTypes:Ljava/util/List;

    return-object p0
.end method

.method public setDrmUuid(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->drmUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public setLiveMaxOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 520
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxOffsetMs:J

    return-object p0
.end method

.method public setLiveMaxPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 546
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMaxPlaybackSpeed:F

    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 507
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinOffsetMs:J

    return-object p0
.end method

.method public setLiveMinPlaybackSpeed(F)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 533
    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveMinPlaybackSpeed:F

    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 494
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->liveTargetOffsetMs:J

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 155
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 402
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->streamKeys:Ljava/util/List;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method
