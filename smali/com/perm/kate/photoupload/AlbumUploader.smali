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
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "album_id"    # J
    .param p5, "group_id"    # Ljava/lang/Long;
    .param p6, "caption"    # Ljava/lang/String;
    .param p7, "resize_option"    # I
    .param p8, "callback"    # Lcom/perm/kate/photoupload/UploadCallback;
    .param p9, "dialog_title"    # Ljava/lang/String;
    .param p10, "rotate"    # Ljava/lang/Integer;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->rotate:Ljava/lang/Integer;

    .line 32
    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 47
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_save:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 49
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/AlbumUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/AlbumUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/AlbumUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/AlbumUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/AlbumUploader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AlbumUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    .line 119
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 14
    .param p1, "url1"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v11, 0x0

    .local v11, "inputStream1":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 124
    .local v12, "inputStream2":Ljava/io/InputStream;
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 125
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/AlbumUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 126
    new-instance v9, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v9, v0}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 127
    .local v9, "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    new-instance v0, Lcom/perm/utils/PhotoUploader;

    const-string v4, "file1"

    const-string v6, "file.jpg"

    invoke-direct {v0, v4, v6}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12, p1, v9}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v13

    .line 128
    .local v13, "root":Lorg/json/JSONObject;
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v12}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 130
    const-string v0, "server"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "server":Ljava/lang/String;
    const-string v0, "photos_list"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "photos_list":Ljava/lang/String;
    const-string v0, "aid"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 133
    .local v3, "aid":Ljava/lang/Long;
    const-string v0, "hash"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "hash":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/photoupload/AlbumUploader;->group_id:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/photoupload/AlbumUploader;->caption:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_save:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v12}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 144
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "photos_list":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/Long;
    .end local v5    # "hash":Ljava/lang/String;
    .end local v9    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v13    # "root":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v10

    .line 136
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AlbumUploader;->displayError()V

    .line 137
    invoke-static {v10}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 139
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v12}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 141
    .end local v10    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v12}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public getUploadServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0700a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 60
    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v4, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 62
    new-instance v0, Lcom/perm/kate/photoupload/AlbumUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/AlbumUploader$1;-><init>(Lcom/perm/kate/photoupload/AlbumUploader;)V

    .line 66
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/AlbumUploader$1;->start()V

    .line 67
    return-void
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AlbumUploader;->getUploadServer()V

    .line 54
    return-void
.end method
