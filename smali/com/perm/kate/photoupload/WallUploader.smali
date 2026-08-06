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
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "owner_id"    # J
    .param p5, "resize_option"    # I
    .param p6, "callback"    # Lcom/perm/kate/photoupload/UploadCallback;
    .param p7, "rotate"    # Ljava/lang/Integer;
    .param p8, "dialog_title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/photoupload/WallUploader;->cancel_notification:Z

    .line 70
    new-instance v0, Lcom/perm/kate/photoupload/WallUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/WallUploader$2;-><init>(Lcom/perm/kate/photoupload/WallUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 126
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

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    .line 41
    :goto_0
    iput p5, p0, Lcom/perm/kate/photoupload/WallUploader;->resize_option:I

    .line 42
    iput-object p7, p0, Lcom/perm/kate/photoupload/WallUploader;->rotate:Ljava/lang/Integer;

    .line 44
    iput-object p8, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    const v0, 0x7f07048a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 50
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 52
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 53
    return-void

    .line 40
    :cond_1
    neg-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/WallUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/WallUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/WallUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/WallUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/WallUploader;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/photoupload/WallUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    .line 101
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 13
    .param p1, "url1"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 106
    .local v10, "inputStream1":Ljava/io/InputStream;
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/photoupload/WallUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 107
    .local v11, "inputStream2":Ljava/io/InputStream;
    new-instance v8, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v8, v0}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 108
    .local v8, "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    new-instance v0, Lcom/perm/utils/PhotoUploader;

    const-string v4, "photo"

    const-string v5, "file.jpg"

    invoke-direct {v0, v4, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11, p1, v8}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v12

    .line 109
    .local v12, "root":Lorg/json/JSONObject;
    const-string v0, "server"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "server":Ljava/lang/String;
    const-string v0, "photo"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "photo":Ljava/lang/String;
    const-string v0, "hash"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "hash":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "photo":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v8    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v10    # "inputStream1":Ljava/io/InputStream;
    .end local v11    # "inputStream2":Ljava/io/InputStream;
    .end local v12    # "root":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 115
    .restart local v1    # "server":Ljava/lang/String;
    .restart local v2    # "photo":Ljava/lang/String;
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v8    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .restart local v10    # "inputStream1":Ljava/io/InputStream;
    .restart local v11    # "inputStream2":Ljava/io/InputStream;
    .restart local v12    # "root":Lorg/json/JSONObject;
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/photoupload/WallUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->saveWallPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "photo":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v8    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v10    # "inputStream1":Ljava/io/InputStream;
    .end local v11    # "inputStream2":Ljava/io/InputStream;
    .end local v12    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 117
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/WallUploader;->displayError()V

    .line 118
    invoke-static {v9}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 120
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public getUploadServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader;->dialog_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0700a6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 61
    iget-object v0, p0, Lcom/perm/kate/photoupload/WallUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v4, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 63
    new-instance v0, Lcom/perm/kate/photoupload/WallUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/WallUploader$1;-><init>(Lcom/perm/kate/photoupload/WallUploader;)V

    .line 67
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/WallUploader$1;->start()V

    .line 68
    return-void
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/WallUploader;->getUploadServer()V

    .line 57
    return-void
.end method
