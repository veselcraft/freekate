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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/video_cache/VideoCacheService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field public static currentDownloadId:Ljava/lang/Long;

.field public static currentLength:I

.field public static currentProgress:I

.field private static is_working:Z


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/video_cache/VideoCacheService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/video_cache/VideoCacheService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->downloadAllFiles()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    return p0
.end method

.method public static addCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V
    .locals 2
    .param p0, "callback"    # Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    .prologue
    .line 168
    sget-object v0, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method private downloadAllFiles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 200
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const v1, 0x7f07031d

    invoke-direct {p0, v1}, Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V

    .line 218
    :cond_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->getNextJob()Lcom/perm/kate/api/Video;

    move-result-object v0

    .line 206
    .local v0, "episode":Lcom/perm/kate/api/Video;
    if-eqz v0, :cond_0

    .line 210
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 211
    sput v7, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    .line 212
    sput v7, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    .line 213
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v2, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V

    .line 214
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->fireListChanged()V

    .line 215
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/perm/kate/video_cache/VideoCacheService;->downloadFile(JJ)V

    .line 216
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->fireListChanged()V

    goto :goto_0
.end method

.method private downloadFile(JJ)V
    .locals 27
    .param p1, "owner_id"    # J
    .param p3, "video_id"    # J

    .prologue
    .line 76
    const/4 v15, 0x0

    .line 77
    .local v15, "file":Ljava/io/RandomAccessFile;
    const/16 v23, 0x0

    .line 79
    .local v23, "stream":Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v4, v5, v1, v2}, Lcom/perm/kate/notifications/VideoCacheNotification;->display(Landroid/content/Context;JJ)V

    .line 81
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, v4, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/perm/kate/api/Api;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/perm/kate/api/Video;

    .line 82
    .local v24, "video":Lcom/perm/kate/api/Video;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 83
    .local v22, "settings":Landroid/content/SharedPreferences;
    const v4, 0x7f070531

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/video_cache/VideoCacheService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 84
    .local v19, "quality_video":I
    const/16 v25, 0x0

    .line 85
    .local v25, "videoUrl":Ljava/lang/String;
    const/16 v18, 0x0

    .line 86
    .local v18, "isFlv":Z
    const/4 v4, 0x3

    move/from16 v0, v19

    if-lt v0, v4, :cond_1

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 102
    :goto_0
    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v4, v5, v2}, Lcom/perm/kate/video_cache/VideoCache;->getCacheFile(JJZ)Ljava/io/File;

    move-result-object v17

    .line 103
    .local v17, "file1":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    .line 105
    :cond_0
    new-instance v16, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .local v16, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v4, "Kate.VideoCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file.length()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 109
    .local v13, "connection":Ljava/net/HttpURLConnection;
    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v4, 0x7530

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    const/16 v4, 0x7530

    invoke-virtual {v13, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 112
    invoke-static {v13}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 113
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 115
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    .line 116
    .local v21, "responseCode":I
    const-string v4, "Kate.VideoCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v4, 0x1a0

    move/from16 v0, v21

    if-ne v0, v4, :cond_6

    .line 120
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v10, 0x2

    move-wide/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .line 153
    .end local v13    # "connection":Ljava/net/HttpURLConnection;
    .end local v16    # "file":Ljava/io/RandomAccessFile;
    .end local v17    # "file1":Ljava/io/File;
    .end local v18    # "isFlv":Z
    .end local v19    # "quality_video":I
    .end local v21    # "responseCode":I
    .end local v22    # "settings":Landroid/content/SharedPreferences;
    .end local v24    # "video":Lcom/perm/kate/api/Video;
    .end local v25    # "videoUrl":Ljava/lang/String;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 88
    .restart local v18    # "isFlv":Z
    .restart local v19    # "quality_video":I
    .restart local v22    # "settings":Landroid/content/SharedPreferences;
    .restart local v24    # "video":Lcom/perm/kate/api/Video;
    .restart local v25    # "videoUrl":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, v19

    if-lt v0, v4, :cond_2

    :try_start_2
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_0

    .line 90
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v19

    if-lt v0, v4, :cond_3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 91
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_0

    .line 92
    :cond_3
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 93
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_0

    .line 94
    :cond_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 95
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 96
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 98
    :cond_5
    const v4, 0x7f0704b3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V

    .line 99
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, p3

    move-wide/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->removeVideoFromCache(JJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-static {v15}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 124
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v13    # "connection":Ljava/net/HttpURLConnection;
    .restart local v16    # "file":Ljava/io/RandomAccessFile;
    .restart local v17    # "file1":Ljava/io/File;
    .restart local v21    # "responseCode":I
    :cond_6
    :try_start_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 125
    const v4, 0x7f0700a2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .line 126
    .end local v16    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 129
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v16    # "file":Ljava/io/RandomAccessFile;
    :cond_7
    :try_start_4
    const-string v4, "Kate.VideoCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection.getContentLength()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/2addr v4, v5

    sput v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    .line 131
    const-string v4, "Kate.VideoCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 133
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    .line 134
    const/16 v4, 0x400

    new-array v12, v4, [B

    .line 135
    .local v12, "buffer":[B
    :goto_2
    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v4, :cond_8

    .line 136
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .line 137
    .local v20, "read":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_a

    .line 143
    .end local v20    # "read":I
    :cond_8
    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v4, :cond_9

    .line 144
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v10, 0x2

    move-wide/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .line 152
    .end local v16    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 139
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v16    # "file":Ljava/io/RandomAccessFile;
    .restart local v20    # "read":I
    :cond_a
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v12, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 140
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    sput v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/video_cache/VideoCacheService;->fireProgressChanged()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 145
    .end local v12    # "buffer":[B
    .end local v13    # "connection":Ljava/net/HttpURLConnection;
    .end local v20    # "read":I
    .end local v21    # "responseCode":I
    :catch_0
    move-exception v14

    move-object/from16 v15, v16

    .line 146
    .end local v16    # "file":Ljava/io/RandomAccessFile;
    .end local v17    # "file1":Ljava/io/File;
    .end local v18    # "isFlv":Z
    .end local v19    # "quality_video":I
    .end local v22    # "settings":Landroid/content/SharedPreferences;
    .end local v24    # "video":Lcom/perm/kate/api/Video;
    .end local v25    # "videoUrl":Ljava/lang/String;
    .local v14, "e":Ljava/lang/Throwable;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v4, :cond_b

    .line 148
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v4, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v10, 0x3

    move-wide/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/db/DataHelper;->setVideoInCacheStatus(JJI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    :cond_b
    invoke-static {v15}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 150
    .end local v14    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_4
    invoke-static {v15}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    invoke-static/range {v23 .. v23}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v4

    .line 150
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v16    # "file":Ljava/io/RandomAccessFile;
    .restart local v17    # "file1":Ljava/io/File;
    .restart local v18    # "isFlv":Z
    .restart local v19    # "quality_video":I
    .restart local v22    # "settings":Landroid/content/SharedPreferences;
    .restart local v24    # "video":Lcom/perm/kate/api/Video;
    .restart local v25    # "videoUrl":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 145
    .end local v17    # "file1":Ljava/io/File;
    .end local v18    # "isFlv":Z
    .end local v19    # "quality_video":I
    .end local v22    # "settings":Landroid/content/SharedPreferences;
    .end local v24    # "video":Lcom/perm/kate/api/Video;
    .end local v25    # "videoUrl":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_3
.end method

.method private fireListChanged()V
    .locals 3

    .prologue
    .line 185
    sget-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 186
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/video_cache/VideoCacheService$Callback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-interface {v1}, Lcom/perm/kate/video_cache/VideoCacheService$Callback;->onListChanged()V

    goto :goto_0

    .line 188
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/video_cache/VideoCacheService$Callback;>;"
    :cond_1
    return-void
.end method

.method private fireProgressChanged()V
    .locals 3

    .prologue
    .line 191
    sget-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 192
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/video_cache/VideoCacheService$Callback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    invoke-interface {v1}, Lcom/perm/kate/video_cache/VideoCacheService$Callback;->onProgressChanged()V

    goto :goto_0

    .line 194
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/video_cache/VideoCacheService$Callback;>;"
    :cond_1
    return-void
.end method

.method private getNextJob()Lcom/perm/kate/api/Video;
    .locals 3

    .prologue
    .line 156
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->getFirstVideoCacheJob(I)Lcom/perm/kate/api/Video;

    move-result-object v0

    .line 157
    .local v0, "v":Lcom/perm/kate/api/Video;
    if-nez v0, :cond_0

    .line 158
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->getFirstVideoCacheJob(I)Lcom/perm/kate/api/Video;

    move-result-object v0

    .line 159
    :cond_0
    return-object v0
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 53
    sget-boolean v0, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/kate/video_cache/VideoCacheService;->is_working:Z

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/video_cache/VideoCacheService;->startDownload()V

    goto :goto_0
.end method

.method public static removeCallback(Lcom/perm/kate/video_cache/VideoCacheService$Callback;)V
    .locals 3
    .param p0, "callback"    # Lcom/perm/kate/video_cache/VideoCacheService$Callback;

    .prologue
    .line 172
    sget-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 173
    .local v0, "callback_ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/video_cache/VideoCacheService$Callback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 174
    sget-object v1, Lcom/perm/kate/video_cache/VideoCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v0    # "callback_ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/video_cache/VideoCacheService$Callback;>;"
    :cond_1
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "res_id"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/video_cache/VideoCacheService$2;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/video_cache/VideoCacheService$2;-><init>(Lcom/perm/kate/video_cache/VideoCacheService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private startDownload()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/perm/kate/video_cache/VideoCacheService$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/video_cache/VideoCacheService$1;-><init>(Lcom/perm/kate/video_cache/VideoCacheService;)V

    .line 72
    invoke-virtual {v0}, Lcom/perm/kate/video_cache/VideoCacheService$1;->start()V

    .line 73
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/video_cache/VideoCacheService;->handleStart(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p3}, Lcom/perm/kate/video_cache/VideoCacheService;->handleStart(Landroid/content/Intent;I)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
