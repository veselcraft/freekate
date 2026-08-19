.class public final Lcom/google/android/exoplayer2/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final loadTaskId:J

.field private final parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

.field private volatile result:Ljava/lang/Object;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    .line 115
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p2

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    .line 129
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 130
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 131
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 132
    invoke-static {}, Lcom/google/android/exoplayer2/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->loadTaskId:J

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->resetBytesRead()V

    .line 175
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 177
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DataSourceInputStream;->open()V

    .line 178
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplayer2/upstream/StatsDataSource;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 179
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    throw v1
.end method
