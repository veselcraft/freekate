.class public Lcom/perm/kate/photoupload/WallUploader;
.super Ljava/lang/Object;
.source "WallUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/UploadCallback;

.field callback_save_photo:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field public cancel_notification:Z

.field dialog_title:Ljava/lang/String;

.field group_id:Ljava/lang/Long;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field resize_option:I

.field rotate:Ljava/lang/Integer;

.field uri:Landroid/net/Uri;

.field user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/perm/kate/photoupload/WallUploader;->cancel_notification:Z

    .line 70
    new-instance v0, Lcom/perm/kate/photoupload/WallUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/WallUploader$2;-><init>(Lcom/perm/kate/photoupload/WallUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 128
    new-instance v0, Lcom/perm/kate/photoupload/WallUploader$3;

    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/WallUploader$3;-><init>(Lcom/perm/kate/photoupload/WallUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    .line 34
    iput-object p1, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    .line 36
    iput-object p6, p0, Lcom/perm/kate/photoupload/WallUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    neg-long p2, p3

    .line 40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    .line 41
    :goto_0
    iput p5, p0, Lcom/perm/kate/photoupload/WallUploader;->resize_option:I

    .line 42
    iput-object p7, p0, Lcom/perm/kate/photoupload/WallUploader;->rotate:Ljava/lang/Integer;

    .line 44
    iput-object p8, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    if-nez p8, :cond_1

    const p2, 0x7f0f0519

    .line 46
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    .line 49
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 50
    iget-object p2, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 52
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/WallUploader;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/WallUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/WallUploader;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/WallUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 10

    const-string v0, "photo"

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 107
    new-instance v3, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v4, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v3, v4}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 108
    new-instance v4, Lcom/perm/utils/PhotoUploader;

    const-string v5, "file.jpg"

    invoke-direct {v4, v0, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2, p1, v3}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 109
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string v1, "server"

    .line 111
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "hash"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    iget-object p1, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v6, p0, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    iget-object v8, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v9, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->saveWallPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 119
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/WallUploader;->displayError()V

    .line 120
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 125
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 60
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f00e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 63
    new-instance v0, Lcom/perm/kate/photoupload/WallUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/WallUploader$1;-><init>(Lcom/perm/kate/photoupload/WallUploader;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/WallUploader;->getUploadServer()V

    return-void
.end method
