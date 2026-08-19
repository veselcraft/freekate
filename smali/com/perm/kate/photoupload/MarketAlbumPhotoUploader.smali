.class public Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;
.super Ljava/lang/Object;
.source "MarketAlbumPhotoUploader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/UploadCallback;

.field private callback_save_photo:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field displayer:Lcom/perm/kate/UploadProgressDisplayer;

.field group_id:J

.field pd:Landroid/app/ProgressDialog;

.field photo:Ljava/lang/String;

.field resize_option:I

.field rotate:I

.field server:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->rotate:I

    .line 67
    new-instance v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$2;-><init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 124
    new-instance v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$4;-><init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    .line 34
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    .line 36
    iput-wide p3, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->group_id:J

    .line 37
    iput-object p6, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 38
    iput p5, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->resize_option:I

    .line 39
    iput p7, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->rotate:I

    .line 42
    iget-object p2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 43
    iget-object p2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$3;-><init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 9

    const-string v0, "photo"

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 106
    new-instance v3, Lcom/perm/utils/PhotoUploader;

    const-string v4, "file.jpg"

    invoke-direct {v3, v0, v4}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->displayer:Lcom/perm/kate/UploadProgressDisplayer;

    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 107
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 108
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string v1, "server"

    .line 110
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->server:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->photo:Ljava/lang/String;

    const-string v0, "hash"

    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->group_id:J

    iget-object v4, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->photo:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->server:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->saveMarketAlbumPhoto(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 115
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->dismissProgressDialog()V

    .line 116
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 121
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 51
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 54
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f0519

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 56
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    iget-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 59
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayer;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Lcom/perm/kate/UploadProgressDisplayer;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->displayer:Lcom/perm/kate/UploadProgressDisplayer;

    .line 60
    new-instance v0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$1;-><init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public upload()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->getUploadServer()V

    return-void
.end method
