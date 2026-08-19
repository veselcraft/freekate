.class public Lcom/perm/kate/photoupload/AlbumUploader;
.super Ljava/lang/Object;
.source "AlbumUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field album_id:J

.field callback:Lcom/perm/kate/photoupload/UploadCallback;

.field callback_save:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field public cancel_notification:Z

.field caption:Ljava/lang/String;

.field dialog_title:Ljava/lang/String;

.field group_id:Ljava/lang/Long;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field resize_option:I

.field rotate:Ljava/lang/Integer;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;JLjava/lang/Long;Ljava/lang/String;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->cancel_notification:Z

    .line 69
    new-instance v0, Lcom/perm/kate/photoupload/AlbumUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AlbumUploader$2;-><init>(Lcom/perm/kate/photoupload/AlbumUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 96
    new-instance v0, Lcom/perm/kate/photoupload/AlbumUploader$3;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AlbumUploader$3;-><init>(Lcom/perm/kate/photoupload/AlbumUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_save:Lcom/perm/kate/session/Callback;

    .line 35
    iput-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    .line 37
    iput-wide p3, p0, Lcom/perm/kate/photoupload/AlbumUploader;->album_id:J

    .line 38
    iput-object p5, p0, Lcom/perm/kate/photoupload/AlbumUploader;->group_id:Ljava/lang/Long;

    .line 39
    iput-object p6, p0, Lcom/perm/kate/photoupload/AlbumUploader;->caption:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 41
    iput p7, p0, Lcom/perm/kate/photoupload/AlbumUploader;->resize_option:I

    .line 42
    iput-object p9, p0, Lcom/perm/kate/photoupload/AlbumUploader;->dialog_title:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    .line 46
    iget-object p2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 47
    iget-object p2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_save:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 49
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/AlbumUploader;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/AlbumUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/AlbumUploader;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AlbumUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 126
    new-instance v2, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v3, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v2, v3}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 127
    new-instance v3, Lcom/perm/utils/PhotoUploader;

    const-string v4, "file1"

    const-string v5, "file.jpg"

    invoke-direct {v3, v4, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0, p1, v2}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 128
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string v2, "server"

    .line 130
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "photos_list"

    .line 131
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "aid"

    .line 132
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v2, "hash"

    .line 133
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v7, p0, Lcom/perm/kate/photoupload/AlbumUploader;->group_id:Ljava/lang/Long;

    iget-object v9, p0, Lcom/perm/kate/photoupload/AlbumUploader;->caption:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_save:Lcom/perm/kate/session/Callback;

    iget-object v11, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/session/Session;->photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 136
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AlbumUploader;->displayError()V

    .line 137
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 141
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 143
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 59
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f00e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 62
    new-instance v0, Lcom/perm/kate/photoupload/AlbumUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/AlbumUploader$1;-><init>(Lcom/perm/kate/photoupload/AlbumUploader;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AlbumUploader;->getUploadServer()V

    return-void
.end method
