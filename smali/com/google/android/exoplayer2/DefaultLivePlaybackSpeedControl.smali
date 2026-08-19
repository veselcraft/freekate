.class public final Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;


# instance fields
.field private adjustedPlaybackSpeed:F

.field private currentTargetLiveOffsetUs:J

.field private final fallbackMaxPlaybackSpeed:F

.field private final fallbackMinPlaybackSpeed:F

.field private idealTargetLiveOffsetUs:J

.field private lastPlaybackSpeedUpdateMs:J

.field private final maxLiveOffsetErrorUsForUnitSpeed:J

.field private maxPlaybackSpeed:F

.field private maxTargetLiveOffsetUs:J

.field private mediaConfigurationTargetLiveOffsetUs:J

.field private minPlaybackSpeed:F

.field private final minPossibleLiveOffsetSmoothingFactor:F

.field private minTargetLiveOffsetUs:J

.field private final minUpdateIntervalMs:J

.field private final proportionalControlFactor:F

.field private smoothedMinPossibleLiveOffsetDeviationUs:J

.field private smoothedMinPossibleLiveOffsetUs:J

.field private targetLiveOffsetOverrideUs:J

.field private final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    .line 276
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    .line 277
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    .line 278
    iput p5, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    .line 279
    iput-wide p6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 280
    iput-wide p8, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    .line 281
    iput p10, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 282
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 283
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 284
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 285
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 286
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 287
    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 288
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 289
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 290
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 291
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 292
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 293
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJF)V

    return-void
.end method

.method private adjustTargetLiveOffsetUs(J)V
    .locals 10

    .line 413
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    add-long v8, v0, v2

    .line 415
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmp-long v3, v0, v8

    if-lez v3, :cond_0

    .line 419
    iget-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    .line 420
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v2

    long-to-float p1, p1

    mul-float v0, v0, p1

    float-to-long v0, v0

    .line 422
    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr p2, v2

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v0, p1

    const/4 p1, 0x3

    new-array p1, p1, [J

    const/4 p2, 0x0

    aput-wide v8, p1, p2

    const/4 p2, 0x1

    .line 424
    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    aput-wide v2, p1, p2

    const/4 p2, 0x2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v2, v0

    aput-wide v2, p1, p2

    .line 425
    invoke-static {p1}, Lcom/google/common/primitives/Longs;->max([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v1, v2

    .line 431
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v4, p1, v0

    .line 432
    iget-wide v6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 433
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 434
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 436
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeResetTargetLiveOffsetUs()V
    .locals 7

    .line 364
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 366
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    .line 369
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 372
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 376
    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    return-void

    .line 379
    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    .line 380
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 381
    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    .line 382
    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 383
    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method private static smooth(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float p0, p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private updateSmoothedMinPossibleLiveOffsetUs(JJ)V
    .locals 3

    sub-long/2addr p1, p3

    .line 388
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 389
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 p1, 0x0

    .line 390
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    goto :goto_0

    .line 394
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 397
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p3

    .line 395
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 402
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 403
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 404
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdjustedPlaybackSpeed(JJ)F
    .locals 6

    .line 333
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 337
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->updateSmoothedMinPossibleLiveOffsetUs(JJ)V

    .line 339
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long v0, p3, v2

    if-eqz v0, :cond_1

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr p3, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    .line 341
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1

    .line 343
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustTargetLiveOffsetUs(J)V

    .line 346
    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 347
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 348
    iput v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_0

    .line 350
    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    long-to-float p1, p1

    mul-float p3, p3, p1

    add-float/2addr p3, v4

    .line 351
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 352
    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    .line 354
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1
.end method

.method public getTargetLiveOffsetUs()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public notifyRebuffer()V
    .locals 7

    .line 320
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 323
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 324
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 326
    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 328
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .locals 3

    .line 298
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 299
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 300
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 302
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 306
    iget p1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 308
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .locals 0

    .line 314
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 315
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method
