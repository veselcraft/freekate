.class public Lcom/perm/kate/audio_cache/AudioCacheService;
.super Landroid/app/Service;
.source "AudioCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/audio_cache/AudioCacheService$Callback;
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
            "Lcom/perm/kate/audio_cache/AudioCacheService$Callback;",
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
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCacheService;->callbacks:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/audio_cache/AudioCacheService;->is_working:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/audio_cache/AudioCacheService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheService;->downloadAllFiles()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/perm/kate/audio_cache/AudioCacheService;->is_working:Z

    return p0
.end method

.method public static addCallback(Lcom/perm/kate/audio_cache/AudioCacheService$Callback;)V
    .locals 2
    .param p0, "callback"    # Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    .prologue
    .line 147
    sget-object v0, Lcom/perm/kate/audio_cache/AudioCacheService;->callbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method private downloadAllFiles()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 178
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    const v1, 0x7f07031d

    invoke-direct {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheService;->showToast(I)V

    .line 198
    :cond_0
    return-void

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheService;->getNextJob()Lcom/perm/kate/api/Audio;

    move-result-object v0

    .line 184
    .local v0, "episode":Lcom/perm/kate/api/Audio;
    if-eqz v0, :cond_0

    .line 188
    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    .line 189
    sput v8, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    .line 190
    sput v8, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    .line 191
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v2, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/perm/kate/db/DataHelper;->setAudioInCacheStatus(Ljava/lang/Long;JI)V

    .line 192
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheService;->fireListChanged()V

    .line 193
    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v6, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    iget-object v7, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/audio_cache/AudioCacheService;->downloadFile(JJLjava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 195
    iget-object v1, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/audio_cache/LyricsCache;->downloadLyricsText(J)V

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheService;->fireListChanged()V

    goto :goto_0
.end method

.method private downloadFile(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "owner_id"    # J
    .param p3, "audio_id"    # J
    .param p5, "artist"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v14, 0x0

    .line 76
    .local v14, "file":Ljava/io/RandomAccessFile;
    const/16 v19, 0x0

    .line 78
    .local v19, "stream":Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v4, v5, v1, v2}, Lcom/perm/kate/notifications/AudioCacheNotification;->display(Landroid/content/Context;JJ)V

    .line 80
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

    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/perm/kate/api/Api;->getAudioById(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Audio;

    iget-object v10, v4, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 81
    .local v10, "audioUrl":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide/from16 v4, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/perm/kate/audio_cache/AudioCache;->getCacheFile(JJLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 82
    .local v16, "file1":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 84
    :cond_0
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v14    # "file":Ljava/io/RandomAccessFile;
    .local v15, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v4, "Kate.AudioCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file.length()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 88
    .local v12, "connection":Ljava/net/HttpURLConnection;
    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/16 v4, 0x7530

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    const/16 v4, 0x7530

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    invoke-static {v12}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 92
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 94
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 95
    .local v18, "responseCode":I
    const-string v4, "Kate.AudioCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v4, 0x1a0

    move/from16 v0, v18

    if-ne v0, v4, :cond_1

    .line 99
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v5, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    const/4 v6, 0x2

    move-wide/from16 v0, p1

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/perm/kate/db/DataHelper;->setAudioInCacheStatus(Ljava/lang/Long;JI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    invoke-static {v15}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 130
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v14, v15

    .line 132
    .end local v10    # "audioUrl":Ljava/lang/String;
    .end local v12    # "connection":Ljava/net/HttpURLConnection;
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .end local v16    # "file1":Ljava/io/File;
    .end local v18    # "responseCode":I
    .restart local v14    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 103
    .end local v14    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "audioUrl":Ljava/lang/String;
    .restart local v12    # "connection":Ljava/net/HttpURLConnection;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v16    # "file1":Ljava/io/File;
    .restart local v18    # "responseCode":I
    :cond_1
    :try_start_2
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 104
    const v4, 0x7f0700a2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/audio_cache/AudioCacheService;->showToast(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    invoke-static {v15}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 130
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v14, v15

    .line 105
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v14    # "file":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 108
    .end local v14    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_3
    const-string v4, "Kate.AudioCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connection.getContentLength()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    add-int/2addr v4, v5

    sput v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    .line 110
    const-string v4, "Kate.AudioCacheService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/perm/kate/audio_cache/AudioCacheService;->currentLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    .line 113
    const/16 v4, 0x400

    new-array v11, v4, [B

    .line 114
    .local v11, "buffer":[B
    :goto_1
    sget-object v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 115
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 116
    .local v17, "read":I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 122
    .end local v17    # "read":I
    :cond_3
    sget-object v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 123
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v5, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    const/4 v6, 0x2

    move-wide/from16 v0, p1

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/perm/kate/db/DataHelper;->setAudioInCacheStatus(Ljava/lang/Long;JI)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :cond_4
    invoke-static {v15}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 130
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v14, v15

    .line 131
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v14    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 118
    .end local v14    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v17    # "read":I
    :cond_5
    const/4 v4, 0x0

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v15, v11, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 119
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    sput v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentProgress:I

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/audio_cache/AudioCacheService;->fireProgressChanged()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 124
    .end local v11    # "buffer":[B
    .end local v12    # "connection":Ljava/net/HttpURLConnection;
    .end local v17    # "read":I
    .end local v18    # "responseCode":I
    :catch_0
    move-exception v13

    move-object v14, v15

    .line 125
    .end local v10    # "audioUrl":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .end local v16    # "file1":Ljava/io/File;
    .local v13, "e":Ljava/lang/Throwable;
    .restart local v14    # "file":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    sget-object v4, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 127
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v5, Lcom/perm/kate/audio_cache/AudioCacheService;->currentDownloadId:Ljava/lang/Long;

    const/4 v6, 0x3

    move-wide/from16 v0, p1

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/perm/kate/db/DataHelper;->setAudioInCacheStatus(Ljava/lang/Long;JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    :cond_6
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 130
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 129
    .end local v13    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 130
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v4

    .line 129
    .end local v14    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "audioUrl":Ljava/lang/String;
    .restart local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v16    # "file1":Ljava/io/File;
    :catchall_1
    move-exception v4

    move-object v14, v15

    .end local v15    # "file":Ljava/io/RandomAccessFile;
    .restart local v14    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 124
    .end local v10    # "audioUrl":Ljava/lang/String;
    .end local v16    # "file1":Ljava/io/File;
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method private fireListChanged()V
    .locals 3

    .prologue
    .line 164
    sget-object v1, Lcom/perm/kate/audio_cache/AudioCacheService;->callbacks:Ljava/util/ArrayList;

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

    .line 165
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/audio_cache/AudioCacheService$Callback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    invoke-interface {v1}, Lcom/perm/kate/audio_cache/AudioCacheService$Callback;->onListChanged()V

    goto :goto_0

    .line 167
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/audio_cache/AudioCacheService$Callback;>;"
    :cond_1
    return-void
.end method

.method private fireProgressChanged()V
    .locals 3

    .prologue
    .line 170
    sget-object v1, Lcom/perm/kate/audio_cache/AudioCacheService;->callbacks:Ljava/util/ArrayList;

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

    .line 171
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/audio_cache/AudioCacheService$Callback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    invoke-interface {v1}, Lcom/perm/kate/audio_cache/AudioCacheService$Callback;->onProgressChanged()V

    goto :goto_0

    .line 173
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/audio_cache/AudioCacheService$Callback;>;"
    :cond_1
    return-void
.end method

.method private getNextJob()Lcom/perm/kate/api/Audio;
    .locals 3

    .prologue
    .line 135
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->getFirstAudioCacheJob(I)Lcom/perm/kate/api/Audio;

    move-result-object v0

    .line 136
    .local v0, "a":Lcom/perm/kate/api/Audio;
    if-nez v0, :cond_0

    .line 137
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->getFirstAudioCacheJob(I)Lcom/perm/kate/api/Audio;

    move-result-object v0

    .line 138
    :cond_0
    return-object v0
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 52
    sget-boolean v0, Lcom/perm/kate/audio_cache/AudioCacheService;->is_working:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/kate/audio_cache/AudioCacheService;->is_working:Z

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheService;->startDownload()V

    goto :goto_0
.end method

.method public static removeCallback(Lcom/perm/kate/audio_cache/AudioCacheService$Callback;)V
    .locals 3
    .param p0, "callback"    # Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    .prologue
    .line 151
    sget-object v1, Lcom/perm/kate/audio_cache/AudioCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 152
    .local v0, "callback_ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/audio_cache/AudioCacheService$Callback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 153
    sget-object v1, Lcom/perm/kate/audio_cache/AudioCacheService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    .end local v0    # "callback_ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/audio_cache/AudioCacheService$Callback;>;"
    :cond_1
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "res_id"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/audio_cache/AudioCacheService$2;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/audio_cache/AudioCacheService$2;-><init>(Lcom/perm/kate/audio_cache/AudioCacheService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method private startDownload()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheService$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheService$1;-><init>(Lcom/perm/kate/audio_cache/AudioCacheService;)V

    .line 71
    invoke-virtual {v0}, Lcom/perm/kate/audio_cache/AudioCacheService$1;->start()V

    .line 72
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/audio_cache/AudioCacheService;->handleStart(Landroid/content/Intent;I)V

    .line 42
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p3}, Lcom/perm/kate/audio_cache/AudioCacheService;->handleStart(Landroid/content/Intent;I)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
