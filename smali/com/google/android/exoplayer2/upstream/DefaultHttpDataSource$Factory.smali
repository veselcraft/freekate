.class public final Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# instance fields
.field private allowCrossProtocolRedirects:Z

.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/Predicate;

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private readTimeoutMs:I

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    const/16 v0, 0x1f40

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    .line 77
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 9

    .line 180
    new-instance v8, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$1;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-object v8
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    return-object p0
.end method
