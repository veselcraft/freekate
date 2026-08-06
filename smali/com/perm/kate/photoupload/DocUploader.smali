.class public Lcom/perm/kate/photoupload/DocUploader;
.super Ljava/lang/Object;
.source "DocUploader.java"


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/DocUploadCallback;

.field callback_save_photo:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field file:Ljava/io/File;

.field filename:Ljava/lang/String;

.field group_id:Ljava/lang/Long;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field type:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "owner_id"    # J
    .param p7, "callback"    # Lcom/perm/kate/photoupload/DocUploadCallback;
    .param p8, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->group_id:Ljava/lang/Long;

    .line 61
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/DocUploader$2;-><init>(Lcom/perm/kate/photoupload/DocUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 110
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader$3;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/DocUploader$3;-><init>(Lcom/perm/kate/photoupload/DocUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    .line 32
    iput-object p1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    .line 34
    iput-object p3, p0, Lcom/perm/kate/photoupload/DocUploader;->uri:Landroid/net/Uri;

    .line 35
    iput-object p4, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/perm/kate/photoupload/DocUploader;->callback:Lcom/perm/kate/photoupload/DocUploadCallback;

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 38
    const-wide/16 v0, -0x1

    mul-long/2addr v0, p5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->group_id:Ljava/lang/Long;

    .line 39
    :cond_0
    iput-object p8, p0, Lcom/perm/kate/photoupload/DocUploader;->type:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 43
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/DocUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/DocUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/DocUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/DocUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/DocUploader;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    .line 79
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 11
    .param p1, "url1"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "inputStream1":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 87
    .local v5, "inputStream2":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    if-eqz v8, :cond_0

    .line 88
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v3    # "inputStream1":Ljava/io/InputStream;
    .local v4, "inputStream1":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v5    # "inputStream2":Ljava/io/InputStream;
    .local v6, "inputStream2":Ljava/io/InputStream;
    :try_start_2
    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 91
    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v6

    .end local v6    # "inputStream2":Ljava/io/InputStream;
    .restart local v5    # "inputStream2":Ljava/io/InputStream;
    move-object v3, v4

    .line 96
    .end local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v3    # "inputStream1":Ljava/io/InputStream;
    :goto_0
    :try_start_3
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v0, v8}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 97
    .local v0, "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    new-instance v8, Lcom/perm/utils/PhotoUploader;

    const-string v9, "file"

    iget-object v10, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3, v5, p1, v0}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v7

    .line 98
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "file"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "file_param":Ljava/lang/String;
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v9, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v10, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v2, v9, v10}, Lcom/perm/kate/session/Session;->saveDoc(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 108
    .end local v0    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v2    # "file_param":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 93
    :cond_0
    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/photoupload/DocUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 94
    iget-object v8, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/photoupload/DocUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploader;->displayError()V

    .line 102
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 103
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 105
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "inputStream1":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    :goto_3
    throw v8

    .end local v5    # "inputStream2":Ljava/io/InputStream;
    .restart local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v6    # "inputStream2":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "inputStream2":Ljava/io/InputStream;
    .restart local v5    # "inputStream2":Ljava/io/InputStream;
    goto :goto_3

    .line 100
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v3    # "inputStream1":Ljava/io/InputStream;
    goto :goto_2

    .end local v3    # "inputStream1":Ljava/io/InputStream;
    .end local v5    # "inputStream2":Ljava/io/InputStream;
    .restart local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v6    # "inputStream2":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "inputStream2":Ljava/io/InputStream;
    .restart local v5    # "inputStream2":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v3    # "inputStream1":Ljava/io/InputStream;
    goto :goto_2

    .end local v3    # "inputStream1":Ljava/io/InputStream;
    .end local v5    # "inputStream2":Ljava/io/InputStream;
    .restart local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v6    # "inputStream2":Ljava/io/InputStream;
    :cond_2
    move-object v5, v6

    .end local v6    # "inputStream2":Ljava/io/InputStream;
    .restart local v5    # "inputStream2":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "inputStream1":Ljava/io/InputStream;
    .restart local v3    # "inputStream1":Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public getUploadServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    const v2, 0x7f0704fc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f07008d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v4, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 54
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/DocUploader$1;-><init>(Lcom/perm/kate/photoupload/DocUploader;)V

    .line 58
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/DocUploader$1;->start()V

    .line 59
    return-void
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/DocUploader;->getUploadServer()V

    .line 48
    return-void
.end method
