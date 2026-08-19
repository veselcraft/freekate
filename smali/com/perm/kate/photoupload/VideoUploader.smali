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
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/VideoUploader;->uploadVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/VideoUploader;->doUploadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/photoupload/VideoUploader;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/VideoUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    :cond_0
    return-void
.end method

.method private doUploadUrl(Ljava/lang/String;)V
    .locals 3

    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    .line 118
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 120
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.VideoUploader"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "response"

    .line 124
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    iget-wide v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->video_id:J

    invoke-interface {p1, v0, v1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->success(J)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {p1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 130
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {p1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    :goto_0
    return-void
.end method

.method private uploadVideo(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "Kate.VideoUploader"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v0, v1}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 90
    iget-object v1, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    new-instance v3, Lcom/perm/utils/PhotoUploader;

    const-string v4, "video_file"

    const-string v5, "video"

    invoke-direct {v3, v4, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2, p1, v0}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 93
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 94
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v0, "error"

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/perm/kate/photoupload/VideoUploader;->displayError()V

    .line 101
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {p1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    iget-wide v0, p0, Lcom/perm/kate/photoupload/VideoUploader;->video_id:J

    invoke-interface {p1, v0, v1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->success(J)V

    .line 105
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 107
    invoke-direct {p0}, Lcom/perm/kate/photoupload/VideoUploader;->displayError()V

    .line 108
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    iget-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader;->callback:Lcom/perm/kate/photoupload/VideoUploadCallback;

    invoke-interface {p1}, Lcom/perm/kate/photoupload/VideoUploadCallback;->fail()V

    :goto_0
    return-void
.end method


# virtual methods
.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    move-object v8, p0

    .line 42
    iget-object v0, v8, Lcom/perm/kate/photoupload/VideoUploader;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, v8, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    const v2, 0x7f0f051a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f055f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/perm/kate/photoupload/VideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v2, v2, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 47
    :cond_0
    new-instance v9, Lcom/perm/kate/photoupload/VideoUploader$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/photoupload/VideoUploader$1;-><init>(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return-void
.end method
