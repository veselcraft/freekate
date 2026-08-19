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
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->group_id:Ljava/lang/Long;

    .line 61
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/DocUploader$2;-><init>(Lcom/perm/kate/photoupload/DocUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 113
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

    const-wide/16 p2, 0x0

    cmp-long p4, p5, p2

    if-gez p4, :cond_0

    const-wide/16 p2, -0x1

    mul-long p5, p5, p2

    .line 38
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/photoupload/DocUploader;->group_id:Ljava/lang/Long;

    .line 39
    :cond_0
    iput-object p8, p0, Lcom/perm/kate/photoupload/DocUploader;->type:Ljava/lang/String;

    .line 42
    iget-object p2, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 43
    iget-object p2, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/DocUploader;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/DocUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/DocUploader;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploader;->displayError()V

    return-void
.end method

.method private displayError()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->callback:Lcom/perm/kate/photoupload/DocUploadCallback;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/perm/kate/photoupload/DocUploadCallback;->error(Ljava/io/File;)V

    .line 81
    iget-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 6

    const-string v0, "file"

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 90
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 91
    iget-object v3, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/perm/kate/photoupload/DocUploader;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/DocUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/DocUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    :cond_1
    :goto_0
    new-instance v3, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v4, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v3, v4}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 98
    new-instance v4, Lcom/perm/utils/PhotoUploader;

    iget-object v5, p0, Lcom/perm/kate/photoupload/DocUploader;->filename:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2, p1, v3}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 99
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 100
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v2, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/session/Session;->saveDoc(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/DocUploader;->displayError()V

    .line 105
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 110
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 51
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    iget-object v1, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0581

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/DocUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f00c5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/DocUploader;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 54
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/DocUploader$1;-><init>(Lcom/perm/kate/photoupload/DocUploader;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/DocUploader;->getUploadServer()V

    return-void
.end method
