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
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "resize_option"    # I
    .param p4, "callback"    # Lcom/perm/kate/photoupload/UploadCallback;
    .param p5, "rotate"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->rotate:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->owner_id:Ljava/lang/Long;

    .line 33
    iput-boolean v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$2;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AvatarUploader$2;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    .line 187
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$4;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AvatarUploader$4;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    .line 214
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$5;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/photoupload/AvatarUploader$5;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_chat_photo:Lcom/perm/kate/session/Callback;

    .line 38
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    .line 40
    iput-object p4, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 41
    iput p3, p0, Lcom/perm/kate/photoupload/AvatarUploader;->resize_option:I

    .line 42
    iput p5, p0, Lcom/perm/kate/photoupload/AvatarUploader;->rotate:I

    .line 45
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 46
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/photoupload/AvatarUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/AvatarUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/photoupload/AvatarUploader;->uploadPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/photoupload/AvatarUploader;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/photoupload/AvatarUploader;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/photoupload/AvatarUploader$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/photoupload/AvatarUploader$3;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    return-void
.end method

.method private uploadPhoto(Ljava/lang/String;)V
    .locals 11
    .param p1, "url1"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 156
    .local v8, "inputStream1":Ljava/io/InputStream;
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 157
    .local v9, "inputStream2":Ljava/io/InputStream;
    new-instance v0, Lcom/perm/utils/PhotoUploader;

    const-string v1, "photo"

    const-string v2, "file.jpg"

    invoke-direct {v0, v1, v2}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->displayer:Lcom/perm/kate/UploadProgressDisplayer;

    invoke-virtual {v0, v8, v9, p1, v1}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v10

    .line 158
    .local v10, "root":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 159
    .local v3, "hash":Ljava/lang/String;
    const/4 v7, 0x0

    .line 160
    .local v7, "file":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->server:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->photo:Ljava/lang/String;

    .line 163
    const-string v0, "response"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    .end local v3    # "hash":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "inputStream1":Ljava/io/InputStream;
    .end local v9    # "inputStream2":Ljava/io/InputStream;
    .end local v10    # "root":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 165
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v8    # "inputStream1":Ljava/io/InputStream;
    .restart local v9    # "inputStream2":Ljava/io/InputStream;
    .restart local v10    # "root":Lorg/json/JSONObject;
    :cond_0
    const-string v0, "server"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->server:Ljava/lang/String;

    .line 166
    const-string v0, "photo"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->photo:Ljava/lang/String;

    .line 167
    const-string v0, "hash"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 172
    :cond_1
    iget-boolean v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    if-eqz v0, :cond_3

    .line 173
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_chat_photo:Lcom/perm/kate/session/Callback;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v7, v1, v2}, Lcom/perm/kate/session/Session;->setChatPhoto(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 176
    .end local v3    # "hash":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "inputStream1":Ljava/io/InputStream;
    .end local v9    # "inputStream2":Ljava/io/InputStream;
    .end local v10    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 177
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->dismissProgressDialog()V

    .line 178
    invoke-static {v6}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    invoke-static {v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 180
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    throw v0

    .line 175
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v8    # "inputStream1":Ljava/io/InputStream;
    .restart local v9    # "inputStream2":Ljava/io/InputStream;
    .restart local v10    # "root":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->server:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader;->photo:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_save_photo:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getUploadServer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    .line 73
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 74
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    const v2, 0x7f07048a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 79
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayer;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1}, Lcom/perm/kate/UploadProgressDisplayer;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->displayer:Lcom/perm/kate/UploadProgressDisplayer;

    .line 80
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/photoupload/AvatarUploader$1;-><init>(Lcom/perm/kate/photoupload/AvatarUploader;)V

    .line 87
    invoke-virtual {v0}, Lcom/perm/kate/photoupload/AvatarUploader$1;->start()V

    .line 88
    return-void
.end method

.method public setSquareCrop(Ljava/lang/String;)Lcom/perm/kate/photoupload/AvatarUploader;
    .locals 2
    .param p1, "square_crop"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&_square_crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->_square_crop:Ljava/lang/String;

    .line 52
    :cond_0
    return-object p0
.end method

.method public upload()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V

    .line 57
    return-void
.end method

.method public upload(Ljava/lang/Long;)V
    .locals 0
    .param p1, "owner_id"    # Ljava/lang/Long;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->owner_id:Ljava/lang/Long;

    .line 61
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V

    .line 62
    return-void
.end method

.method public uploadForChat(J)V
    .locals 1
    .param p1, "chat_id"    # J

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    .line 66
    iput-wide p1, p0, Lcom/perm/kate/photoupload/AvatarUploader;->chat_id:J

    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V

    .line 68
    return-void
.end method
