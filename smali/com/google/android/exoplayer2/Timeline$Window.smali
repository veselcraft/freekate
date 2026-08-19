.class public final Lcom/google/android/exoplayer2/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"


# static fields
.field private static final EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isLive:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public manifest:Ljava/lang/Object;

.field public mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/google/android/exoplayer2/Timeline$Window;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 369
    const-class v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 372
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Timeline$Window;

    .line 373
    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 374
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 375
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 376
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentUnixTimeMs()J
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionMs()J
    .locals 2

    .line 302
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    .line 342
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 398
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 399
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 403
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 404
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 405
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 406
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 407
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 408
    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 409
    iget v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 410
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public isLive()Z
    .locals 4

    .line 359
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    .line 272
    iput-object v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 273
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer2/Timeline$Window;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->tag:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 277
    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->tag:Ljava/lang/Object;

    move-object v1, p3

    .line 278
    iput-object v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    move-wide v3, p4

    .line 279
    iput-wide v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    move-wide v3, p6

    .line 280
    iput-wide v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    move-wide v3, p8

    .line 281
    iput-wide v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    move v1, p10

    .line 282
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    move/from16 v1, p11

    .line 283
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 284
    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    .line 285
    iput-object v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-wide/from16 v2, p13

    .line 286
    iput-wide v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    move-wide/from16 v2, p15

    .line 287
    iput-wide v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    move/from16 v2, p17

    .line 288
    iput v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    move/from16 v2, p18

    .line 289
    iput v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    move-wide/from16 v2, p19

    .line 290
    iput-wide v2, v0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 291
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    return-object v0
.end method
