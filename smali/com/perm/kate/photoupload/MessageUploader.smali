.class public Lcom/perm/kate/photoupload/MessageUploader;
.super Ljava/lang/Object;
.source "MessageUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/UploadCallback;

.field callback_save_photo:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field public cancel_notification:Z

.field dialog_title:Ljava/lang/String;

.field group_id:J

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field resize_option:I

.field rotate:Ljava/lang/Integer;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->cancel_notification:Z

    .line 67
    new-instance v0, Lcom/perm/kate/photoupload/MessageUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/MessageUploader$2;-><init>(Lcom/perm/kate/photoupload/MessageUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 127
    new-instance v0, Lcom/perm/kate/photoupload/MessageUploader$3;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/MessageUploader$3;-><init>(Lcom/perm/kate/photoupload/MessageUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    .line 34
    iput-object p1, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    .line 36
    iput-object p4, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 37
    iput p3, p0, Lcom/perm/kate/photoupload/MessageUploader;->resize_option:I

    .line 38
    iput-object p5, p0, Lcom/perm/kate/photoupload/MessageUploader;->rotate:Ljava/lang/Integer;

    .line 39
    iput-wide p7, p0, Lcom/perm/kate/photoupload/MessageUploader;->group_id:J

    .line 41
    iput-object p6, p0, Lcom/perm/kate/photoupload/MessageUploader;->dialog_title:Ljava/lang/String;

    if-nez p6, :cond_0

    const p2, 0x7f0f0519

    .line 43
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/photoupload/MessageUploader;->dialog_title:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 47
    iget-object p2, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 49
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/MessageUploader;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/MessageUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/MessageUploader;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/MessageUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 10

    const-string v0, "photo"

    const/4 v1, 0x0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 105
    new-instance v3, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v4, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v3, v4}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 106
    new-instance v4, Lcom/perm/utils/PhotoUploader;

    const-string v5, "file.jpg"

    invoke-direct {v4, v0, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v1, p1, v3}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 107
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 108
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string v3, "server"

    .line 109
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "hash"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    iget-object p1, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 122
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void

    .line 115
    :cond_0
    :try_start_2
    iget-wide v3, p0, Lcom/perm/kate/photoupload/MessageUploader;->group_id:J

    invoke-static {v3, v4}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v4

    iget-object v8, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v9, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/session/Session;->saveMessagesPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, v1

    .line 117
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/perm/kate/photoupload/MessageUploader;->displayError()V

    .line 118
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 122
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 124
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 57
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MessageUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f00e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 59
    new-instance v0, Lcom/perm/kate/photoupload/MessageUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/MessageUploader$1;-><init>(Lcom/perm/kate/photoupload/MessageUploader;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/MessageUploader;->getUploadServer()V

    return-void
.end method
