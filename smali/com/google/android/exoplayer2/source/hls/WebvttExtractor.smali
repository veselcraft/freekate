.class public final Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(-?\\d+)"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 68
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    return-void
.end method

.method private buildTrackOutput(J)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v2, "text/vtt"

    .line 196
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 194
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 200
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-object v0
.end method

.method private processSample()V
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 141
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    .line 149
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    const-string v8, "X-TIMESTAMP-MAP"

    .line 151
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 152
    sget-object v4, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    sget-object v5, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 157
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_3

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    .line 165
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 164
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v4

    .line 150
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->findNextCueHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_6

    .line 173
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void

    .line 178
    :cond_6
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v0

    .line 179
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    add-long/2addr v4, v0

    sub-long/2addr v4, v6

    .line 181
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->usToWrappedPts(J)J

    move-result-wide v3

    .line 180
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->buildTrackOutput(J)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v8, 0x1

    .line 188
    iget v9, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 96
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4

    .line 113
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->output:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 119
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 118
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 132
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->processSample()V

    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 89
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 90
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    return p1
.end method
