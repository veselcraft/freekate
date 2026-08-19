.class public Lcom/perm/kate/photoupload/AvatarUploader;
.super Ljava/lang/Object;
.source "AvatarUploader.java"


# instance fields
.field _square_crop:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field callback:Lcom/perm/kate/photoupload/UploadCallback;

.field callback_save_chat_photo:Lcom/perm/kate/session/Callback;

.field callback_save_photo:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field chat_id:J

.field displayer:Lcom/perm/kate/UploadProgressDisplayer;

.field for_chat:Z

.field owner_id:Ljava/lang/Long;

.field pd:Landroid/app/ProgressDialog;

.field photo:Ljava/lang/String;

.field resize_option:I

.field rotate:I

.field server:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->rotate:I

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->owner_id:Ljava/lang/Long;

    .line 28
    iput-boolean v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AvatarUploader$2;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 186
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$4;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AvatarUploader$4;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    .line 213
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$5;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AvatarUploader$5;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_chat_photo:Lcom/perm/kate/session/Callback;

    .line 33
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    .line 35
    iput-object p4, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 36
    iput p3, p0, Lcom/perm/kate/photoupload/AvatarUploader;->resize_option:I

    .line 37
    iput p5, p0, Lcom/perm/kate/photoupload/AvatarUploader;->rotate:I

    .line 40
    iget-object p2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 41
    iget-object p2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {p2, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/AvatarUploader;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/AvatarUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/photoupload/AvatarUploader$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/photoupload/AvatarUploader$3;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 9

    const-string v0, "photo"

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 154
    new-instance v3, Lcom/perm/utils/PhotoUploader;

    const-string v4, "file.jpg"

    invoke-direct {v3, v0, v4}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/perm/kate/photoupload/AvatarUploader;->displayer:Lcom/perm/kate/UploadProgressDisplayer;

    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p1

    .line 155
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 159
    iget-boolean v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 160
    iput-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->server:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->photo:Ljava/lang/String;

    const-string v0, "response"

    .line 162
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, v2

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v1, "server"

    .line 164
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->server:Ljava/lang/String;

    .line 165
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->photo:Ljava/lang/String;

    const-string v0, "hash"

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 169
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 171
    :cond_1
    iget-boolean p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    if-eqz p1, :cond_2

    .line 172
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_chat_photo:Lcom/perm/kate/session/Callback;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v2, v0, v1}, Lcom/perm/kate/session/Session;->setChatPhoto(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 174
    :cond_2
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/photoupload/AvatarUploader;->server:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/photoupload/AvatarUploader;->photo:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v3 .. v8}, Lcom/perm/kate/session/Session;->saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 176
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->dismissProgressDialog()V

    .line 177
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 179
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 183
    throw p1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 69
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    const v3, 0x7f0f0519

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 71
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 74
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayer;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Lcom/perm/kate/UploadProgressDisplayer;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->displayer:Lcom/perm/kate/UploadProgressDisplayer;

    .line 75
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/AvatarUploader$1;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setSquareCrop(Ljava/lang/String;)Lcom/perm/kate/photoupload/AvatarUploader;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&_square_crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public upload()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V

    return-void
.end method

.method public upload(Ljava/lang/Long;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->owner_id:Ljava/lang/Long;

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V

    return-void
.end method

.method public uploadForChat(J)V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    .line 61
    iput-wide p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->chat_id:J

    .line 62
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V

    return-void
.end method
