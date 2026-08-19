.class public Lcom/perm/kate/photoupload/StoryVideoUploader;
.super Ljava/lang/Object;
.source "StoryVideoUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/StoryUploadCallback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field dialog_title:Ljava/lang/String;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/perm/kate/photoupload/StoryUploadCallback;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/perm/kate/photoupload/StoryVideoUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/StoryVideoUploader$2;-><init>(Lcom/perm/kate/photoupload/StoryVideoUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 27
    iput-object p1, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->activity:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->uri:Landroid/net/Uri;

    .line 29
    iput-object p3, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->callback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    .line 30
    iput-object p4, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->dialog_title:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 35
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/StoryVideoUploader;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/StoryVideoUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/StoryVideoUploader;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/photoupload/StoryVideoUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    new-instance v3, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v4, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v3, v4}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 81
    new-instance v4, Lcom/perm/utils/PhotoUploader;

    const-string v5, "video_file"

    const-string v6, "video"

    invoke-direct {v4, v5, v6}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2, p1, v3}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 82
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 83
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string v3, "response"

    .line 84
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    iget-object p1, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->callback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    invoke-interface {p1, v0}, Lcom/perm/kate/photoupload/StoryUploadCallback;->success(Lcom/perm/kate/api/Story;)V

    .line 88
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    goto :goto_0

    :cond_0
    const-string v0, "error"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->activity:Landroid/app/Activity;

    const v5, 0x7f0f00de

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/notifications/PhotoUploadNotification;->error_text:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/photoupload/StoryVideoUploader;->displayError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :goto_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v2, v0

    .line 97
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/perm/kate/photoupload/StoryVideoUploader;->displayError()V

    .line 98
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 102
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 103
    :goto_3
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 102
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 104
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 45
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f00de

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/StoryVideoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 48
    new-instance v0, Lcom/perm/kate/photoupload/StoryVideoUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/StoryVideoUploader$1;-><init>(Lcom/perm/kate/photoupload/StoryVideoUploader;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/StoryVideoUploader;->getUploadServer()V

    return-void
.end method
