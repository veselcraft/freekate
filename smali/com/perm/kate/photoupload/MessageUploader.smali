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
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "resize_option"    # I
    .param p4, "callback"    # Lcom/perm/kate/photoupload/UploadCallback;
    .param p5, "rotate"    # Ljava/lang/Integer;
    .param p6, "dialog_title"    # Ljava/lang/String;
    .param p7, "group_id"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

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

    .line 42
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->dialog_title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    const v0, 0x7f07048a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->dialog_title:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 47
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 49
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/MessageUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/MessageUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/MessageUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/MessageUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/MessageUploader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/MessageUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    .line 97
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 11
    .param p1, "url1"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v8, 0x0

    .line 101
    .local v8, "inputStream1":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 103
    .local v9, "inputStream2":Ljava/io/InputStream;
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 104
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/MessageUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 105
    new-instance v6, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v6, v0}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 106
    .local v6, "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    new-instance v0, Lcom/perm/utils/PhotoUploader;

    const-string v4, "photo"

    const-string v5, "file.jpg"

    invoke-direct {v0, v4, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9, p1, v6}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v10

    .line 107
    .local v10, "root":Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 108
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 109
    const-string v0, "server"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "server":Ljava/lang/String;
    const-string v0, "photo"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "photo":Ljava/lang/String;
    const-string v0, "hash"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "hash":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v8}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 125
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "photo":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v6    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v10    # "root":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 115
    .restart local v1    # "server":Ljava/lang/String;
    .restart local v2    # "photo":Ljava/lang/String;
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v6    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .restart local v10    # "root":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lcom/perm/kate/photoupload/MessageUploader;->group_id:J

    invoke-static {v4, v5}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/MessageUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->saveMessagesPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v8}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 116
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "photo":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v6    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v10    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-direct {p0}, Lcom/perm/kate/photoupload/MessageUploader;->displayError()V

    .line 118
    invoke-static {v7}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 120
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {v8}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 122
    .end local v7    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 123
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public getUploadServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MessageUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0700a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 58
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v4, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 59
    new-instance v0, Lcom/perm/kate/photoupload/MessageUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/MessageUploader$1;-><init>(Lcom/perm/kate/photoupload/MessageUploader;)V

    .line 64
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/MessageUploader$1;->start()V

    .line 65
    return-void
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/MessageUploader;->getUploadServer()V

    .line 54
    return-void
.end method
