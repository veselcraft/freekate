.class final Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
.implements Lcom/google/android/exoplayer2/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final loadTaskId:J

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

.field private final progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

.field private seekTimeUs:J

.field private seenIcyMetadata:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 991
    new-instance p1, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 992
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    .line 993
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 994
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 995
    new-instance p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 996
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p1, -0x1

    .line 997
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 998
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    const-wide/16 p1, 0x0

    .line 999
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/StatsDataSource;
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 964
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 964
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 964
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .locals 0

    .line 964
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 2

    .line 1088
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 1089
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v0

    .line 1090
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    .line 1091
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1400(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x6

    .line 1092
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 1094
    invoke-static {}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1300()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p1

    .line 1095
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method private setLoadPosition(JJ)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1100
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 1101
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const/4 p1, 0x0

    .line 1102
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 1006
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public load()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    .line 1012
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 1014
    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-wide v13, v6, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1015
    invoke-direct {v1, v13, v14}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 1016
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 1018
    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 1020
    :cond_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$702(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 1021
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 1022
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1023
    new-instance v6, Lcom/google/android/exoplayer2/source/IcyDataSource;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/exoplayer2/source/IcyDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/IcyDataSource$Listener;)V

    .line 1024
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->icyTrack()Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1025
    invoke-static {}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$800()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    move-object v8, v6

    .line 1027
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 1030
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    .line 1027
    invoke-interface/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 1035
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1036
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->disableSeekingOnMp3Streams()V

    .line 1039
    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_3

    .line 1040
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->seek(JJ)V

    .line 1041
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_3
    :goto_1
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_5

    .line 1043
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 1045
    :try_start_1
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :try_start_2
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    .line 1050
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    .line 1051
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$900(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 1053
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 1054
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1100(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1000(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1047
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    .line 1060
    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    .line 1061
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1063
    :cond_7
    :goto_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eq v2, v3, :cond_8

    .line 1060
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 1061
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplayer2/extractor/PositionHolder;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1063
    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 1064
    throw v0

    :cond_9
    return-void
.end method

.method public onIcyMetadata(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 9

    .line 1074
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->access$1200(Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 1075
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    .line 1076
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1077
    invoke-interface {v2, p1, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1078
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x1

    .line 1080
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method
