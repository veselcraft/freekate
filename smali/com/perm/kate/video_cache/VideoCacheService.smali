.class public Lcom/perm/kate/video_cache/VideoCacheService;
.super Landroid/app/Service;
.source "VideoCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/video_cache/VideoCacheService$Callback;
    }
.end annotation


# static fields
.field public static callbacks:Ljava/util/ArrayList;

.field public static currentDownloadId:Ljava/lang/Long;

.field public static currentLength:I

.field public static currentProgress:I

.field private static is_working:Z


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/video_cache/VideoCacheService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->downloadAllFiles()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 27
    sput-boolean p0, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    return p0
.end method

.method public static addCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V
    .locals 2

    .line 166
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private downloadAllFiles()V
    .locals 8

    .line 198
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f037e

    .line 199
    invoke-direct {p0, v0}, Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V

    goto :goto_1

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->getNextJob()Lcom/perm/kate/api/Video;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    .line 208
    :cond_1
    iget-wide v1, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 209
    sput v1, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    .line 210
    sput v1, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    .line 211
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V

    .line 212
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->fireListChanged()V

    .line 213
    iget-wide v1, v0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v3, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/perm/kate/video_cache/VideoCacheService;->downloadFile(JJ)V

    .line 214
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->fireListChanged()V

    goto :goto_0
.end method

.method private downloadFile(JJ)V
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v2, p3

    const-string v0, "Kate.VideoCacheService"

    const/4 v10, 0x0

    .line 75
    :try_start_0
    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v8, v9}, Lcom/perm/kate/notifications/VideoCacheNotification;->display(Landroid/content/Context;JJ)V

    .line 77
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v11, v4, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/perm/kate/api/Api;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Video;

    .line 78
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const v7, 0x7f0f0163

    .line 79
    invoke-virtual {v1, v7}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "0"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-lt v6, v7, :cond_0

    .line 82
    iget-object v7, v4, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v7}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 83
    iget-object v2, v4, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    :goto_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 84
    iget-object v7, v4, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v7}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 85
    iget-object v2, v4, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-lt v6, v12, :cond_2

    .line 86
    iget-object v7, v4, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v7}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 87
    iget-object v2, v4, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-lt v6, v11, :cond_3

    .line 88
    iget-object v6, v4, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 89
    iget-object v2, v4, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_3
    iget-object v6, v4, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 91
    iget-object v2, v4, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_4
    iget-object v6, v4, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 93
    iget-object v2, v4, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    .line 100
    :goto_1
    sget-object v3, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v8, v9, v3, v4, v11}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 103
    :cond_5
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v11, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file.length()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    const-string v3, "Range"

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7530

    .line 108
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    invoke-static {v2}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 111
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1a0

    if-ne v3, v4, :cond_6

    .line 118
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v7, 0x2

    move-wide/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_2
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    :goto_3
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void

    .line 122
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    if-eq v3, v12, :cond_7

    const v0, 0x7f0f00de

    .line 123
    invoke-direct {v1, v0}, Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V

    goto :goto_2

    .line 127
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection.getContentLength()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v4, v6

    add-int/2addr v3, v4

    sput v3, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v11, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 131
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 133
    :goto_4
    sget-object v2, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v2, :cond_9

    .line 134
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    goto :goto_5

    .line 137
    :cond_8
    invoke-virtual {v11, v0, v5, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 138
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v3, v2

    sput v3, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/video_cache/VideoCacheService;->fireProgressChanged()V

    goto :goto_4

    .line 141
    :cond_9
    :goto_5
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 142
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v7, 0x2

    move-wide/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :cond_a
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v19, v11

    move-object v11, v10

    move-object/from16 v10, v19

    goto :goto_6

    :cond_b
    const v0, 0x7f0f053a

    .line 96
    :try_start_3
    invoke-direct {v1, v0}, Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V

    .line 97
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/perm/kate/db/DataHelper;->removeVideoFromCache(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v10

    .line 144
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_c

    .line 146
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v7, 0x3

    move-wide/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    :cond_c
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_7
    return-void

    :catchall_2
    move-exception v0

    .line 148
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 150
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method private fireListChanged()V
    .locals 3

    .line 183
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 184
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-interface {v1}, Lcom/perm/kate/video_cache/VideoCacheService$Callback;->onListChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireProgressChanged()V
    .locals 3

    .line 189
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 190
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-interface {v1}, Lcom/perm/kate/video_cache/VideoCacheService$Callback;->onProgressChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getNextJob()Lcom/perm/kate/api/Video;
    .locals 2

    .line 154
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->getFirstVideoCacheJob(I)Lcom/perm/kate/api/Video;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->getFirstVideoCacheJob(I)Lcom/perm/kate/api/Video;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 0

    .line 49
    sget-boolean p1, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 52
    sput-boolean p1, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->startDownload()V

    return-void
.end method

.method public static removeCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V
    .locals 3

    .line 170
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 171
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 172
    sget-object p0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private showToast(I)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/video_cache/VideoCacheService$2;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/video_cache/VideoCacheService$2;-><init>(Lcom/perm/kate/video_cache/VideoCacheService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startDownload()V
    .locals 1

    .line 57
    new-instance v0, Lcom/perm/kate/video_cache/VideoCacheService$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/video_cache/VideoCacheService$1;-><init>(Lcom/perm/kate/video_cache/VideoCacheService;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/perm/kate/video_cache/VideoCacheService;->handleStart(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
