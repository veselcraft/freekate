.class public Lcom/perm/kate/photoupload/StoryPhotoUploader;
.super Ljava/lang/Object;
.source "StoryPhotoUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/StoryUploadCallback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field public cancel_notification:Z

.field dialog_title:Ljava/lang/String;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field resize_option:I

.field rotate:Ljava/lang/Integer;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/StoryUploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->rotate:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->cancel_notification:Z

    .line 62
    new-instance v0, Lcom/perm/kate/photoupload/StoryPhotoUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/StoryPhotoUploader$2;-><init>(Lcom/perm/kate/photoupload/StoryPhotoUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 31
    iput-object p1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->activity:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->uri:Landroid/net/Uri;

    .line 33
    iput-object p4, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->callback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    .line 34
    iput p3, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->resize_option:I

    .line 35
    iput-object p5, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->dialog_title:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->rotate:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 42
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/StoryPhotoUploader;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/StoryPhotoUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/StoryPhotoUploader;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/photoupload/StoryPhotoUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 98
    new-instance v2, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v3, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v2, v3}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 99
    new-instance v3, Lcom/perm/utils/PhotoUploader;

    const-string v4, "file"

    const-string v5, "file.jpg"

    invoke-direct {v3, v4, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0, p1, v2}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 100
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string v2, "response"

    .line 102
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "story"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Story;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Story;

    move-result-object p1

    .line 103
    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->callback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    invoke-interface {v2, p1}, Lcom/perm/kate/photoupload/StoryUploadCallback;->success(Lcom/perm/kate/api/Story;)V

    .line 104
    iget-boolean p1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->cancel_notification:Z

    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 107
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/perm/kate/photoupload/StoryPhotoUploader;->displayError()V

    .line 108
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 112
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 114
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 52
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f00e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 55
    new-instance v0, Lcom/perm/kate/photoupload/StoryPhotoUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/StoryPhotoUploader$1;-><init>(Lcom/perm/kate/photoupload/StoryPhotoUploader;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/StoryPhotoUploader;->getUploadServer()V

    return-void
.end method
