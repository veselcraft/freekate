.class public Lcom/perm/kate/photoupload/VideoUploader;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field link:Ljava/lang/String;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field uri:Landroid/net/Uri;

.field video_id:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/photoupload/VideoUploadCallback;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/perm/kate/photoupload/VideoUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/VideoUploader$2;-><init>(Lcom/perm/kate/photoupload/VideoUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 32
    iput-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    .line 34
    iput-object p3, p0, Lcom/perm/kate/photoupload/VideoUploader;->link:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/VideoUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/VideoUploader;->uploadVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/VideoUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/VideoUploader;->doUploadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/photoupload/VideoUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/VideoUploader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/VideoUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    .line 83
    :cond_0
    return-void
.end method

.method private doUploadUrl(Ljava/lang/String;)V
    .locals 10
    .param p1, "upload_url"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 124
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v6, "GET"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 127
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "response":Ljava/lang/String;
    const-string v6, "Kate.VideoUploader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    .local v2, "res":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 132
    iget-object v6, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    iget-wide v8, p0, Lcom/perm/kate/photoupload/VideoUploader;->video_id:J

    invoke-interface {v6, v8, v9}, Lcom/perm/kate/photoupload/VideoUploadCallback;->success(J)V

    .line 141
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "res":Ljava/lang/Integer;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "root":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 134
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "res":Ljava/lang/Integer;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {v6}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "res":Ljava/lang/Integer;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "th":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 137
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 138
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    iget-object v6, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {v6}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    goto :goto_0
.end method

.method private uploadVideo(Ljava/lang/String;)V
    .locals 8
    .param p1, "url1"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    const-string v5, "Kate.VideoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v0, v5}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 92
    .local v0, "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    invoke-static {p1}, Lcom/perm/kate/photoupload/HttpClientUploader;->needHttpClient(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-static {v5, p1, v0}, Lcom/perm/kate/photoupload/HttpClientUploader;->upload(Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/UploadProgressDisplayerToNotification;)Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    .local v4, "root":Lorg/json/JSONObject;
    :goto_0
    const-string v5, "error"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/perm/kate/photoupload/VideoUploader;->displayError()V

    .line 107
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {v5}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    .line 119
    .end local v0    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v4    # "root":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 95
    .restart local v0    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 96
    .local v2, "inputStream1":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 97
    .local v3, "inputStream2":Ljava/io/InputStream;
    new-instance v5, Lcom/perm/utils/PhotoUploader;

    const-string v6, "video_file"

    const-string v7, "video"

    invoke-direct {v5, v6, v7}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3, p1, v0}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    .restart local v4    # "root":Lorg/json/JSONObject;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v2    # "inputStream1":Ljava/io/InputStream;
    .end local v3    # "inputStream2":Ljava/io/InputStream;
    .end local v4    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/perm/kate/photoupload/VideoUploader;->displayError()V

    .line 114
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {v5}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    goto :goto_1

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    iget-wide v6, p0, Lcom/perm/kate/photoupload/VideoUploader;->video_id:J

    invoke-interface {v5, v6, v7}, Lcom/perm/kate/photoupload/VideoUploadCallback;->success(J)V

    .line 111
    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "video_name"    # Ljava/lang/String;
    .param p2, "video_description"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "who_look"    # Ljava/lang/String;
    .param p5, "who_make_commnets"    # Ljava/lang/String;
    .param p6, "is_private"    # Z

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    const v2, 0x7f07048b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0704db

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 44
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v4, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 47
    :cond_0
    new-instance v0, Lcom/perm/kate/photoupload/VideoUploader$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/photoupload/VideoUploader$1;-><init>(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/VideoUploader$1;->start()V

    .line 52
    return-void
.end method
