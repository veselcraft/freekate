.class public final Lcom/google/android/exoplayer2/upstream/ContentDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 185
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 181
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 185
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 188
    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 173
    :try_start_3
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 177
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 178
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 183
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 185
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 189
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 181
    :try_start_5
    new-instance v3, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 185
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 188
    :cond_6
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 11

    .line 65
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 66
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_a

    .line 75
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 76
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 77
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    .line 85
    iget-wide v7, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v9, v7, v2

    if-gtz v9, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v4}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    .line 90
    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v9, v7

    .line 91
    invoke-virtual {v0, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 93
    iget-wide v7, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v1, v9, v7

    if-nez v1, :cond_9

    const-wide/16 v7, 0x0

    cmp-long v1, v2, v5

    if-nez v1, :cond_4

    .line 101
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-nez v3, :cond_2

    .line 104
    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    sub-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v0, v1, v7

    if-ltz v0, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v4}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    :cond_4
    sub-long/2addr v2, v9

    .line 113
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v2, v7

    if-ltz v0, :cond_8

    .line 122
    :goto_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_6

    .line 124
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :cond_6
    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->opened:Z

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 128
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :goto_3
    return-wide v0

    .line 115
    :cond_8
    :try_start_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v4}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 96
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v4}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 72
    :cond_a
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not open file descriptor for: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .locals 7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 142
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_3

    return v4

    .line 151
    :cond_3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 152
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    .line 154
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
