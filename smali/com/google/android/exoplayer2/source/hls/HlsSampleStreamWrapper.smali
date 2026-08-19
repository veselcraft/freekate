.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# static fields
.field private static final MAPPABLE_TYPES:Ljava/util/Set;


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private enabledTrackGroupCount:I

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoSampleQueues:Z

.field private final hlsSampleStreams:Ljava/util/ArrayList;

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/ArrayList;

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final metadataType:I

.field private final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final onTracksEndedRunnable:Ljava/lang/Runnable;

.field private optionalTrackGroups:Ljava/util/Set;

.field private final overridingDrmInitData:Ljava/util/Map;

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primarySampleQueueIndex:I

.field private primarySampleQueueType:I

.field private primaryTrackGroupIndex:I

.field private final readOnlyMediaChunks:Ljava/util/List;

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueIndicesByType:Landroid/util/SparseIntArray;

.field private sampleQueueIsAudioVideoFlags:[Z

.field private sampleQueueMappingDoneByType:Ljava/util/Set;

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

.field private sampleQueuesBuilt:Z

.field private sampleQueuesEnabledStates:[Z

.field private seenFirstTrackSelection:Z

.field private sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

.field private trackGroupToSampleQueueIndex:[I

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackType:I

.field private tracksEnded:Z

.field private upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public static synthetic $r8$lambda$6vTR3mtGTvT72nPYfSpGJ3S1EYI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method public static synthetic $r8$lambda$FTpP0pC43I2Fmbrry86yPSv4RFI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 120
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;I)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 216
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 217
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 218
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    .line 219
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 220
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    .line 221
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 222
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 223
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 224
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 225
    iput p13, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->metadataType:I

    .line 226
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 227
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 228
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 229
    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 230
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 231
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    new-array p2, p1, [Z

    .line 232
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    new-array p1, p1, [Z

    .line 233
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 235
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 236
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 239
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 240
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 243
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 244
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 245
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 246
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-void
.end method

.method private assertIsPrepared()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    .line 1433
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1434
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private buildTracksFromSampleStreams()V
    .locals 14
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups",
            "trackGroupToSampleQueueIndex"
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_5

    .line 1319
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v9, v9, v4

    .line 1320
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Format;

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1322
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 1324
    :cond_0
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    .line 1326
    :cond_1
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v7, 0x7

    .line 1331
    :goto_1
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v9

    if-le v8, v9, :cond_3

    move v6, v4

    move v5, v7

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    if-eq v6, v2, :cond_4

    const/4 v6, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1342
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 1343
    iget v4, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 1346
    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1347
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 1349
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1353
    :cond_6
    new-array v2, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_b

    .line 1355
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/Format;

    if-ne v9, v6, :cond_9

    .line 1357
    new-array v11, v4, [Lcom/google/android/exoplayer2/Format;

    if-ne v4, v8, :cond_7

    .line 1359
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v4, :cond_8

    .line 1362
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    invoke-static {v13, v10, v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1365
    :cond_8
    :goto_6
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v2, v9

    .line 1366
    iput v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    goto :goto_8

    :cond_9
    if-ne v5, v7, :cond_a

    .line 1371
    iget-object v11, v10, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1372
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 1374
    :goto_7
    new-instance v12, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v13, v8, [Lcom/google/android/exoplayer2/Format;

    invoke-static {v11, v10, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v13, v3

    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v12, v2, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1377
    :cond_b
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1378
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    if-nez v0, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1379
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    return-void
.end method

.method private canDiscardUpstreamMediaChunksFromIndex(I)Z
    .locals 4

    move v0, p1

    .line 1195
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    const/4 v0, 0x0

    .line 1204
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1205
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    .line 1206
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v3

    if-le v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private static createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
    .locals 2

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    new-instance p0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object p0
.end method

.method private createSampleQueue(II)Lcom/google/android/exoplayer2/source/SampleQueue;
    .locals 10

    .line 1062
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1065
    :cond_1
    :goto_0
    new-instance v9, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 1068
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;)V

    .line 1072
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v9, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    if-eqz v1, :cond_2

    .line 1074
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 1076
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v9, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 1077
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v2, :cond_3

    .line 1078
    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 1080
    :cond_3
    invoke-virtual {v9, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 1081
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1082
    aput p1, v2, v0

    .line 1083
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1084
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1085
    aput-boolean v1, p1, v0

    .line 1086
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    aget-boolean p1, p1, v0

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    .line 1087
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1089
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v1

    if-le p1, v1, :cond_4

    .line 1090
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    .line 1091
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    .line 1093
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    return-object v9
.end method

.method private createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1383
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1384
    aget-object v2, p1, v1

    .line 1385
    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    .line 1386
    :goto_1
    iget v5, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_0

    .line 1387
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 1388
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 1389
    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getExoMediaCryptoType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format;->copyWithExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1391
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1393
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v0
.end method

.method private static deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    .line 1475
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1478
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1482
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1487
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1488
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1490
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1495
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1496
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1497
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1498
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 1499
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 1500
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    .line 1501
    iget v6, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    if-eqz p2, :cond_3

    .line 1502
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    goto :goto_2

    :cond_3
    const/4 p2, -0x1

    :goto_2
    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 1503
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1506
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1507
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1508
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1509
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_4
    if-eqz v3, :cond_5

    .line 1513
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1516
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v5, :cond_6

    if-ne v0, v2, :cond_6

    .line 1517
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1520
    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz p0, :cond_8

    .line 1522
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz p1, :cond_7

    .line 1523
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    .line 1525
    :cond_7
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1528
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method private discardUpstream(I)V
    .locals 7

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 972
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    .line 973
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->canDiscardUpstreamMediaChunksFromIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-ne p1, v1, :cond_2

    return-void

    .line 982
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 983
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object p1

    .line 984
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_2

    .line 987
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->invalidateExtractor()V

    :goto_2
    const/4 v0, 0x0

    .line 989
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 991
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1218
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    const/4 p1, 0x0

    .line 1219
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1220
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    .line 1221
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z
    .locals 4

    .line 1184
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1187
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->peekSourceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static formatsMatch(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 6

    .line 1536
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1537
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1538
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 1540
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1541
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "application/cea-608"

    .line 1544
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 1545
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    .line 1546
    :cond_4
    :goto_1
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return-object v0
.end method

.method private getMappedTrackOutput(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    .line 1047
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v1, v0

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 1057
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, p1, v0

    goto :goto_0

    .line 1058
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static getTrackTypeScore(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private initMediaChunkLoad(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V
    .locals 6

    .line 951
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 952
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 953
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 957
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V

    .line 960
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 961
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 962
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v4, :cond_1

    .line 963
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->splice()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 0

    .line 1532
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return p0
.end method

.method private isPendingReset()Z
    .locals 5

    .line 1401
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mapSampleQueuesToMatchTrackGroups()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupToSampleQueueIndex"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroups"
        }
    .end annotation

    .line 1262
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 1263
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, -0x1

    .line 1264
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/4 v3, 0x0

    .line 1266
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 1267
    aget-object v4, v4, v3

    .line 1268
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    .line 1269
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->formatsMatch(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1270
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    .line 1276
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->bindSampleQueue()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private maybeFinishPrepare()V
    .locals 4

    .line 1239
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1243
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_3

    .line 1250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    goto :goto_1

    .line 1253
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->buildTracksFromSampleStreams()V

    .line 1254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    .line 1255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    :cond_4
    :goto_1
    return-void
.end method

.method private onTracksEnded()V
    .locals 1

    const/4 v0, 0x1

    .line 1234
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 1235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private resetSampleQueues()V
    .locals 6

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1228
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1230
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 4

    .line 1411
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1413
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v2

    .line 1414
    invoke-virtual {v3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1419
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private setIsPrepared()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1428
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    return-void
.end method

.method private updateSampleStreams([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1176
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bindSampleQueueToSampleStream(I)I
    .locals 3

    .line 293
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, -0x3

    :cond_0
    return v1

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 306
    aput-boolean v1, p1, v0

    return v0
.end method

.method public continueLoading(J)Z
    .locals 23

    move-object/from16 v0, p0

    .line 687
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 693
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 695
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 696
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 697
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 700
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 701
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v3

    .line 703
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 704
    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    goto :goto_1

    .line 705
    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    :goto_1
    move-object v10, v1

    move-wide v8, v3

    .line 707
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 708
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 712
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v11, 0x1

    :goto_3
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v6, p1

    .line 708
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextChunk(JJLjava/util/List;ZLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 714
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 715
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 716
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    if-eqz v4, :cond_6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 719
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 720
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    return v3

    :cond_6
    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    .line 726
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    :cond_7
    return v2

    .line 731
    :cond_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 732
    move-object v1, v5

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->initMediaChunkLoad(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 734
    :cond_9
    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 735
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v4, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    .line 737
    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 736
    invoke-virtual {v1, v5, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v10

    .line 738
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    new-instance v13, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v7, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v9, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v14, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v1, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v2, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v4, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    invoke-virtual/range {v12 .. v22}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return v3

    :cond_a
    :goto_4
    return v2
.end method

.method public continuePreparing()V
    .locals 2

    .line 250
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    .line 251
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 463
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 468
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    .line 1099
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 7

    .line 655
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 660
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 661
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 662
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 663
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 665
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 667
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v2, :cond_5

    .line 668
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 669
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 678
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isReady(I)Z
    .locals 1

    .line 561
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maybeThrowError()V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowError(I)V
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 278
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 820
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 821
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 826
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 829
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 830
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 831
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 841
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v1, :cond_1

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 844
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez v1, :cond_2

    .line 845
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 91
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 789
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 790
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 791
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 795
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 799
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 800
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 801
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 810
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_0

    .line 811
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_0

    .line 813
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 91
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    .line 857
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 859
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v13, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    .line 861
    move-object v3, v13

    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    .line 866
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v1

    .line 869
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v3

    .line 871
    new-instance v5, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 875
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 876
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v19

    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v8

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-wide/from16 v24, v3

    invoke-direct/range {v14 .. v25}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 880
    new-instance v6, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 887
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v26

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 888
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v28

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v29}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 889
    new-instance v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v8, p7

    invoke-direct {v7, v5, v6, v13, v8}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 892
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    .line 894
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v12, v1, v8, v9}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeExcludeTrack(Lcom/google/android/exoplayer2/source/chunk/Chunk;J)Z

    move-result v8

    move v15, v8

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    const/4 v8, 0x1

    if-eqz v15, :cond_6

    if-eqz v2, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v2, v3, v9

    if-nez v2, :cond_5

    .line 899
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-ne v2, v1, :cond_3

    const/4 v6, 0x1

    .line 900
    :cond_3
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 901
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 902
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_1

    .line 904
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->invalidateExtractor()V

    .line 907
    :cond_5
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    .line 909
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    cmp-long v4, v2, v10

    if-eqz v4, :cond_7

    .line 912
    invoke-static {v6, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_2

    .line 913
    :cond_7
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_2

    .line 916
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v2

    xor-int/lit8 v17, v2, 0x1

    .line 917
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-wide v11, v12

    move-object/from16 v13, p6

    move/from16 v14, v17

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v17, :cond_8

    const/4 v2, 0x0

    .line 929
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 930
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_8
    if-eqz v15, :cond_a

    .line 934
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_9

    .line 935
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_4

    .line 937
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_a
    :goto_4
    return-object v16
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 91
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 546
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewExtractor()V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result p1

    return p1
.end method

.method public onPlaylistUpdated()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 519
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 521
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->publish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 522
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 524
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1112
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs prepareWithMasterPlaylistInfo([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V
    .locals 4

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 267
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    .line 268
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p3, v0

    .line 269
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 272
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    return-void
.end method

.method public readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 11

    .line 579
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 587
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 592
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 593
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 594
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 601
    :cond_2
    iput-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 604
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 609
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 610
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    .line 612
    iget-object p4, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/Format;

    .line 613
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    if-ne p1, v0, :cond_7

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->peekSourceId()I

    move-result p1

    .line 617
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    if-eq v0, p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    .line 622
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_2

    .line 623
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 624
    :goto_2
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p4

    .line 626
    :cond_7
    iput-object p4, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    :cond_8
    return p3
.end method

.method public reevaluateBuffer(J)V
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_1
    return-void

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    .line 770
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .line 771
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 775
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 776
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    .line 779
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    .line 780
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 781
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public release()V
    .locals 4

    .line 530
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 534
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public seekToUs(JZ)Z
    .locals 3

    .line 481
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 482
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 484
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return v1

    .line 489
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    .line 494
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 495
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 496
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 498
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz p1, :cond_2

    .line 500
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object p3, p1, v2

    .line 501
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_1

    .line 506
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 507
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    :goto_1
    return v1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 343
    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 345
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    .line 346
    aget-object v5, v2, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    if-eqz v5, :cond_1

    .line 347
    aget-object v7, v1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    .line 348
    :cond_0
    iget v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v7, v15

    iput v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 349
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 350
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    .line 356
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v5, v12, v3

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    .line 363
    :goto_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    .line 366
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 367
    aget-object v5, v1, v3

    if-nez v5, :cond_6

    goto :goto_5

    .line 371
    :cond_6
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v7

    .line 372
    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v7, v8, :cond_7

    .line 374
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    move-object v11, v5

    .line 376
    :cond_7
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    .line 377
    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v5, v15

    iput v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 378
    new-instance v5, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-direct {v5, v0, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v5, v2, v3

    .line 379
    aput-boolean v15, p4, v3

    .line 380
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v5, :cond_9

    .line 381
    aget-object v5, v2, v3

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->bindSampleQueue()V

    if-nez v16, :cond_9

    .line 384
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 390
    invoke-virtual {v5, v12, v13, v15}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v7

    if-nez v7, :cond_8

    .line 391
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    move/from16 v16, v5

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 397
    :cond_a
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v1, :cond_d

    .line 398
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->reset()V

    .line 399
    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 400
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 401
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 402
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 403
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_b

    .line 405
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v3, v1

    :goto_6
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    .line 406
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 409
    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto/16 :goto_b

    .line 411
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto/16 :goto_b

    .line 414
    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 415
    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 419
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v1, :cond_10

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v1

    .line 422
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 423
    invoke-virtual {v3, v1, v12, v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 424
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    .line 430
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 431
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_f

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_11

    .line 443
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_9

    :cond_11
    move/from16 v1, p7

    :goto_9
    if-eqz v16, :cond_13

    .line 447
    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 449
    :goto_a
    array-length v1, v2

    if-ge v14, v1, :cond_13

    .line 450
    aget-object v1, v2, v14

    if-eqz v1, :cond_12

    .line 451
    aput-boolean v15, p4, v14

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 457
    :cond_13
    :goto_b
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->updateSampleStreams([Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 458
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    return v16
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1163
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v0, 0x0

    .line 1164
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 1166
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    return-void
.end method

.method public setSampleOffsetUs(J)V
    .locals 4

    .line 1129
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 1130
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1132
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public skipData(IJ)I
    .locals 2

    .line 632
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    .line 637
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result p2

    .line 640
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz p3, :cond_1

    .line 641
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v1

    .line 643
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result p1

    sub-int/2addr p1, v1

    .line 644
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 647
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    return p2
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    .line 1000
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getMappedTrackOutput(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1004
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1005
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 1006
    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 1013
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_3

    .line 1014
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    .line 1017
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createSampleQueue(II)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_6

    .line 1022
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-nez p1, :cond_5

    .line 1023
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->metadataType:I

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1025
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-object p1

    :cond_6
    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .locals 2

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget p1, v0, p1

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method
