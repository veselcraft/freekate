.class public Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field private final additionalEmsgTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;

.field private final containerAtoms:Ljava/util/ArrayDeque;

.field private currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private final eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scratchBytes:[B

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final trackBundles:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$nTvOltF7Hh61n3UwwVozMumvhfw()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 113
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 2

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 252
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 253
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 254
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 255
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 256
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 257
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 258
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object p3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 259
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 260
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-array p1, p2, [B

    .line 261
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 262
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 263
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 264
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 265
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 266
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 267
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 268
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 269
    sget-object p1, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 270
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 271
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method private static checkNonNegative(I)I
    .locals 3

    if-ltz p0, :cond_0

    return p0

    .line 1043
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 349
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;
    .locals 2

    .line 551
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 554
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p1

    .line 556
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8

    .line 1474
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1476
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1477
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1479
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1482
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1484
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1486
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 1490
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static getNextTrackBundle(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9

    .line 1451
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 1453
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1454
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_2

    .line 1456
    :cond_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 1460
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move-object v1, v5

    move-wide v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private initExtraTracks()V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 582
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 584
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 587
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 588
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/16 v6, 0x65

    const/4 v7, 0x5

    .line 589
    invoke-interface {v5, v4, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    const/16 v4, 0x65

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 592
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 593
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 597
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 599
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 600
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 72
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private onContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2

    .line 477
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    :cond_0
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 480
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onEmsgLeafAtomRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 606
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    .line 609
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 611
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/16 v1, 0x2e

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Skipping unsupported emsg version: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 634
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 641
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-object/from16 v20, v9

    move-wide v7, v3

    goto :goto_1

    .line 621
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 625
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 626
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_3

    add-long/2addr v10, v7

    move-wide/from16 v16, v10

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v3

    .line 630
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-object/from16 v20, v9

    move-wide/from16 v23, v10

    move-wide/from16 v13, v16

    .line 648
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 650
    new-instance v1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v18, v1

    move-object/from16 v25, v2

    invoke-direct/range {v18 .. v25}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 651
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;

    .line 652
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageEncoder;->encode(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 653
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    .line 656
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v5, v10

    .line 657
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 658
    invoke-interface {v11, v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v13, v3

    if-nez v2, :cond_5

    .line 665
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v7, v8, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 667
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    goto :goto_4

    .line 669
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v2, :cond_6

    .line 670
    invoke-virtual {v2, v13, v14}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v13

    .line 672
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v3, v2

    :goto_3
    if-ge v6, v3, :cond_7

    aget-object v15, v2, v6

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v13

    move/from16 v19, v1

    .line 673
    invoke-interface/range {v15 .. v21}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private onLeafAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 466
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    .line 467
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 468
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 469
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 470
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    :cond_1
    const p2, 0x656d7367

    if-ne v0, p2, :cond_2

    .line 472
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onMoofContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 7

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    .line 562
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 566
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 570
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    .line 571
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_2

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 575
    :cond_2
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_3
    return-void
.end method

.method private onMoovContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 13

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 489
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 492
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 493
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 495
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-wide v8, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    .line 497
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 498
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v10, 0x74726578

    if-ne v6, v10, :cond_1

    .line 499
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v4

    .line 500
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v11, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v10, 0x6d656864

    if-ne v6, v10, :cond_2

    .line 502
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 507
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;)V

    move-object v3, p1

    move-wide v5, v8

    move v8, v0

    move v9, v10

    move-object v10, v12

    .line 508
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 518
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    if-ge v2, v0, :cond_5

    .line 521
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 522
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 523
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 525
    invoke-interface {v5, v2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 527
    invoke-direct {p0, v11, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 528
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 531
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_7

    .line 533
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_6
    if-ge v2, v0, :cond_8

    .line 535
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 536
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 537
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 538
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    .line 539
    invoke-direct {p0, v11, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .locals 13

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1426
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1427
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long/2addr v1, p1

    .line 1428
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v3, :cond_1

    .line 1429
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    .line 1431
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 1432
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static parseMehd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 696
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 697
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 698
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseMoof(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 707
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 709
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 710
    invoke-static {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static parseSaio(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 5

    const/16 v0, 0x8

    .line 854
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 855
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 856
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 858
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 867
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 868
    iget-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    .line 864
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseSaiz(Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 7

    .line 810
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v0, 0x8

    .line 811
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 812
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 813
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 815
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 817
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 819
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 820
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 830
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 832
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 834
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 839
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 841
    :cond_4
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    .line 843
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    :cond_5
    return-void

    .line 821
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    const/16 p2, 0x4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Saiz sample count "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is greater than fragment sample count"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private static parseSampleGroups(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v4, 0x0

    .line 1103
    :goto_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1104
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1105
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1106
    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_0

    .line 1107
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1108
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_0
    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    .line 1112
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1113
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    .line 1122
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1123
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    const/4 v7, 0x4

    .line 1124
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    .line 1126
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1128
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_c

    .line 1132
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1133
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1134
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-ne v0, v8, :cond_6

    .line 1136
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1137
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    .line 1140
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1142
    :cond_7
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    .line 1147
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1148
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 1151
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v8, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_9

    return-void

    .line 1155
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    .line 1157
    invoke-virtual {v6, v13, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-nez v12, :cond_a

    .line 1160
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1161
    new-array v2, v0, [B

    .line 1162
    invoke-virtual {v6, v2, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_a
    move-object/from16 v16, v2

    .line 1164
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1165
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    return-void

    .line 1143
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method private static parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    .line 1070
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1072
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1080
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 1085
    :cond_1
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_2

    .line 1093
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1095
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    return-void

    .line 1086
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    const/16 p2, 0x50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Senc sample count "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is different from fragment sample count"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1076
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 1065
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static parseSidx(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1179
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1181
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1183
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 1194
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 1197
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1200
    new-array v7, v1, [I

    .line 1201
    new-array v8, v1, [J

    .line 1202
    new-array v5, v1, [J

    .line 1203
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 1216
    aput v12, v7, v11

    .line 1217
    aput-wide v13, v8, v11

    .line 1221
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 1223
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1224
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 1226
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1227
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 1212
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 1230
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTfdt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 932
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 933
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 934
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseTfhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;Z)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 4

    const/16 v0, 0x8

    .line 887
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 888
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 889
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 890
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 893
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    .line 898
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 899
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 900
    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 903
    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 906
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 907
    :cond_3
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 910
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    goto :goto_2

    .line 911
    :cond_4
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    .line 914
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    goto :goto_3

    .line 915
    :cond_5
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 918
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    goto :goto_4

    .line 919
    :cond_6
    iget p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 920
    :goto_4
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static parseTraf(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;ZI[B)V
    .locals 6

    const v0, 0x74666864

    .line 721
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 722
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;Z)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 727
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 728
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 729
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 730
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v3, 0x1

    .line 731
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    const v4, 0x74666474

    .line 732
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    .line 734
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 735
    iput-boolean v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_0

    .line 737
    :cond_1
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 738
    iput-boolean v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 741
    :goto_0
    invoke-static {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 744
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object p3, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 746
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 745
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    const p3, 0x7361697a

    .line 748
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 750
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p3, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_2
    const p3, 0x7361696f

    .line 753
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 755
    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_3
    const p3, 0x73656e63

    .line 758
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 760
    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 763
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 765
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 768
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_6

    .line 769
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p2, p4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;[B)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static parseTrex(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 5

    const/16 v0, 0xc

    .line 681
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 683
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 684
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 685
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 686
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 688
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseTrun(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 36

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 955
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 957
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 959
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 960
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 961
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 963
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    aput v7, v6, p1

    .line 964
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v7, v6, p1

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_0

    .line 966
    aget-wide v7, v6, p1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 970
    :goto_0
    iget v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v6, :cond_2

    .line 972
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 987
    :goto_4
    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v13, :cond_7

    array-length v14, v13

    if-ne v14, v8, :cond_7

    aget-wide v14, v13, v7

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    .line 989
    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    .line 991
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    const-wide/32 v16, 0xf4240

    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v18, v7

    .line 990
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    goto :goto_5

    :cond_7
    const-wide/16 v16, 0x0

    :cond_8
    move-wide/from16 v14, v16

    .line 994
    :goto_5
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 995
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetUsTable:[I

    .line 996
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeUsTable:[J

    .line 997
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move/from16 v17, v9

    .line 999
    iget v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move-object/from16 v18, v2

    const/4 v2, 0x2

    if-ne v9, v2, :cond_9

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 1002
    :goto_6
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    .line 1003
    iget-wide v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v27, v14

    move-object v15, v13

    .line 1004
    iget-wide v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move-wide/from16 v29, v13

    move/from16 v13, p4

    :goto_7
    if-ge v13, v9, :cond_12

    if-eqz v10, :cond_a

    .line 1008
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v14

    goto :goto_8

    :cond_a
    iget v14, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_8
    invoke-static {v14}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v14

    if-eqz v11, :cond_b

    .line 1010
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v19

    move/from16 v35, v19

    move/from16 v19, v10

    move/from16 v10, v35

    goto :goto_9

    :cond_b
    move/from16 v19, v10

    iget v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    :goto_9
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v10

    if-eqz v12, :cond_c

    .line 1013
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v21

    move/from16 v31, v6

    move/from16 v6, v21

    goto :goto_a

    :cond_c
    if-nez v13, :cond_d

    if-eqz v6, :cond_d

    move/from16 v31, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_d
    move/from16 v31, v6

    .line 1014
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v32, v1

    .line 1021
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    move/from16 v33, v11

    move/from16 v34, v12

    int-to-long v11, v1

    const-wide/32 v21, 0xf4240

    mul-long v11, v11, v21

    .line 1022
    div-long/2addr v11, v2

    long-to-int v1, v11

    aput v1, v8, v13

    const/16 v16, 0x0

    goto :goto_b

    :cond_e
    move/from16 v32, v1

    move/from16 v33, v11

    move/from16 v34, v12

    const/16 v16, 0x0

    .line 1025
    aput v16, v8, v13

    :goto_b
    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v29

    move-wide/from16 v25, v2

    .line 1028
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    sub-long v11, v11, v27

    aput-wide v11, v15, v13

    .line 1029
    iget-boolean v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v1, :cond_f

    .line 1030
    aget-wide v11, v15, v13

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-wide v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long/2addr v11, v0

    aput-wide v11, v15, v13

    .line 1032
    :cond_f
    aput v10, v7, v13

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    if-eqz p2, :cond_10

    if-nez v13, :cond_11

    :cond_10
    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    .line 1033
    :goto_c
    aput-boolean v0, v18, v13

    int-to-long v10, v14

    move-wide/from16 v20, v2

    move-wide/from16 v1, v29

    add-long v29, v1, v10

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v19

    move-wide/from16 v2, v20

    move/from16 v6, v31

    move/from16 v1, v32

    move/from16 v11, v33

    move/from16 v12, v34

    goto/16 :goto_7

    :cond_12
    move-wide/from16 v1, v29

    .line 1037
    iput-wide v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return v9
.end method

.method private static parseTruns(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .locals 8

    .line 778
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 779
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    .line 781
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 782
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    if-ne v7, v5, :cond_0

    .line 783
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 784
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 785
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_1
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 793
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 794
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 795
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->initTables(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 800
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 801
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 802
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 803
    invoke-static {p1, v2, p2, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static parseUuid(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .locals 2

    const/16 v0, 0x8

    .line 1050
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1051
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1054
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1061
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private processAtomEnded(J)V
    .locals 3

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 11

    .line 353
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 358
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 364
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 368
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 373
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 378
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 382
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    .line 386
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 387
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    .line 388
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_6

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 391
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 395
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_7

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_7

    .line 399
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 400
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    .line 401
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 402
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 406
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    .line 407
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 408
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 p1, 0x2

    .line 409
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v3

    .line 413
    :cond_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 414
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 415
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 416
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    .line 417
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_2

    .line 420
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 422
    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    .line 423
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_c

    .line 426
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    .line 429
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 432
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    .line 427
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_d
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    .line 437
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 438
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_2
    return v3

    .line 435
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_f
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 4

    .line 445
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v1, v0

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 449
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 453
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 8

    .line 1237
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1239
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1240
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_0

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 1247
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return-void

    .line 1250
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 1254
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1255
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return-void

    .line 1252
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1274
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 1276
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1280
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_0

    .line 1284
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1285
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return v3

    .line 1282
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v4

    .line 1291
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    if-gez v5, :cond_2

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Ignoring negative offset to sample data."

    .line 1294
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1297
    :cond_2
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1298
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1300
    :cond_3
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v4, v6, :cond_8

    .line 1301
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1303
    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v10, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v9, v10, :cond_5

    .line 1304
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1305
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1306
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1307
    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1309
    :cond_4
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8

    .line 1313
    :cond_5
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v9, v8, :cond_6

    const/16 v9, 0x8

    sub-int/2addr v4, v9

    .line 1315
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1316
    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1319
    :cond_6
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1321
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v9, 0x7

    .line 1322
    invoke-virtual {v2, v4, v9}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1323
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4, v10}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 1324
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v4, v10, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1325
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_0

    .line 1327
    :cond_7
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1328
    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1330
    :goto_0
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1331
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1332
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1335
    :cond_8
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1336
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1337
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v10

    .line 1338
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v12, :cond_9

    .line 1339
    invoke-virtual {v12, v10, v11}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    :cond_9
    move-wide v14, v10

    .line 1341
    iget v10, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v10, :cond_e

    .line 1344
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v10

    .line 1345
    aput-byte v3, v10, v3

    .line 1346
    aput-byte v3, v10, v8

    const/4 v11, 0x2

    .line 1347
    aput-byte v3, v10, v11

    .line 1348
    iget v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/lit8 v12, v11, 0x1

    rsub-int/lit8 v11, v11, 0x4

    .line 1353
    :goto_1
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v13, v6, :cond_f

    .line 1354
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_c

    .line 1356
    invoke-interface {v1, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1357
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1358
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lt v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    .line 1362
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1364
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1365
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v9, v6, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1367
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1368
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v6, v6

    if-lez v6, :cond_a

    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v13, v10, v7

    .line 1370
    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1371
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1372
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v6, v11

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v6, 0x3

    goto :goto_1

    .line 1360
    :cond_b
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_c
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v13, :cond_d

    .line 1377
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1378
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v6, v3, v13}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1379
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v6, v13}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1380
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1382
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1383
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v13

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v7

    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v7

    .line 1385
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "video/hevc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1386
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1387
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v14, v15, v5, v7}, Lcom/google/android/exoplayer2/extractor/CeaUtil;->consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_3

    .line 1390
    :cond_d
    invoke-interface {v9, v1, v6, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v6

    .line 1392
    :goto_3
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1393
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 1397
    :cond_e
    :goto_4
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v4, v5, :cond_f

    sub-int/2addr v5, v4

    .line 1398
    invoke-interface {v9, v1, v5, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v4

    .line 1399
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_4

    .line 1403
    :cond_f
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v12

    .line 1407
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1409
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    .line 1412
    :goto_5
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1415
    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1416
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 1417
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_11
    const/4 v1, 0x3

    .line 1419
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v1, 0x1

    return v1
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 12

    .line 281
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 283
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    .line 287
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 301
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    :cond_0
    return-void
.end method

.method protected modifyTrack(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 0

    return-object p1
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 1

    .line 327
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 340
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 337
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 308
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 313
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 314
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 316
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0

    .line 276
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
