.class public Lcom/perm/kate/session/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field static device_info:Ljava/lang/String;


# instance fields
.field public account:Lcom/perm/kate/account/Account;

.field public api:Lcom/perm/kate/api/Api;

.field invalid_token_counter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    .line 45
    iput-object p2, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    .line 46
    new-instance p1, Lcom/perm/kate/api/Api;

    iget-object p2, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, p2, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    sget-object v1, Lcom/perm/kate/KateConstants;->API_ID:Ljava/lang/String;

    iget-object v2, p2, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    iget-boolean v3, p2, Lcom/perm/kate/account/Account;->use_tls:Z

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/perm/kate/api/Api;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    return-void
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    return-object v0
.end method

.method public isTLS()Z
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-boolean v0, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    return v0
.end method

.method public getInstanceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v0}, Lcom/perm/kate/api/Api;->getInstanceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iput-object p1, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v0, p1}, Lcom/perm/kate/api/Api;->setDomain(Ljava/lang/String;)V

    return-void
.end method

.method public setTLS(Z)V
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iput-boolean p1, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    iget-object v0, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v0, p1}, Lcom/perm/kate/api/Api;->setTLS(Z)V

    return-void
.end method

.method private ShowDialogForCaptcha(Lcom/perm/kate/session/Command;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 257
    iget-object v0, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Lcom/perm/kate/session/Session$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/perm/kate/session/Session$3;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;Ljava/lang/String;)V

    .line 284
    iget-object p1, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/session/CaptchaDialog;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    return-void

    .line 259
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/Exception;

    sget-object p3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f006d

    invoke-virtual {p3, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    invoke-virtual {p1, p2}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method private execute(Lcom/perm/kate/session/Command;)V
    .locals 8

    const/4 v0, 0x1

    .line 73
    :try_start_0
    iget v1, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    .line 74
    invoke-virtual {p1}, Lcom/perm/kate/session/Command;->run()V
    :try_end_0
    .catch Lcom/perm/kate/api/KException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v0, p1, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/perm/kate/session/Command;->reportSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    invoke-virtual {p1, v0}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 162
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 163
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    instance-of p1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 165
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    iget v2, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    const-string v0, "Session recursion limit reached"

    .line 80
    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    return-void

    .line 90
    :cond_2
    iget v3, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v4, 0x3

    const-string v5, " url="

    const-string v6, "code="

    const/4 v7, 0x5

    if-eq v3, v4, :cond_b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b

    if-ne v3, v7, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    const-wide/16 v0, 0x3e8

    .line 107
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 109
    :goto_0
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    goto/16 :goto_2

    :cond_4
    const/16 v4, 0xe

    if-ne v3, v4, :cond_6

    .line 112
    iget-boolean v0, p1, Lcom/perm/kate/session/Command;->show_captcha:Z

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, v1, Lcom/perm/kate/api/KException;->captcha_img:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/api/KException;->captcha_sid:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/perm/kate/session/Session;->ShowDialogForCaptcha(Lcom/perm/kate/session/Command;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :cond_5
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_6
    const/16 v4, 0x11

    if-ne v3, v4, :cond_7

    .line 117
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 119
    iget-object p1, v1, Lcom/perm/kate/api/KException;->redirect_uri:Ljava/lang/String;

    invoke-static {p1}, Lcom/perm/kate/notifications/ValidationNotification;->display(Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 v4, 0x19

    if-ne v3, v4, :cond_9

    .line 124
    iget-object v3, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3, v2}, Lcom/perm/kate/session/Session;->validateToken(Ljava/lang/ref/WeakReference;I)Z

    .line 130
    iget v2, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    if-ne v2, v0, :cond_8

    .line 131
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    goto/16 :goto_2

    .line 133
    :cond_8
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x7

    if-eq v3, v0, :cond_a

    const/16 v0, 0xaa

    if-eq v3, v0, :cond_a

    const/16 v0, 0xc8

    if-eq v3, v0, :cond_a

    const/16 v0, 0xd4

    if-eq v3, v0, :cond_a

    const/16 v0, 0xd2

    if-eq v3, v0, :cond_a

    const/16 v0, 0xb4

    if-eq v3, v0, :cond_a

    const/16 v0, 0xf

    if-eq v3, v0, :cond_a

    const/16 v0, 0x1e

    if-eq v3, v0, :cond_a

    const/16 v0, 0xd6

    if-eq v3, v0, :cond_a

    const/16 v0, 0x104

    if-eq v3, v0, :cond_a

    const/16 v0, 0x9

    if-eq v3, v0, :cond_a

    const/16 v0, 0xc9

    if-eq v3, v0, :cond_a

    const/16 v0, 0xd5

    if-eq v3, v0, :cond_a

    const/16 v0, 0x386

    if-eq v3, v0, :cond_a

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/perm/kate/api/KException;->error_code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/perm/kate/api/KException;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 155
    :cond_a
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 91
    :cond_b
    :goto_1
    iget v2, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    .line 92
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 93
    iget p1, v1, Lcom/perm/kate/api/KException;->error_code:I

    if-eq p1, v7, :cond_c

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/perm/kate/api/KException;->error_code:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/perm/kate/api/KException;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 98
    :cond_c
    iget p1, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    if-le p1, v0, :cond_d

    .line 99
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/notifications/LoginNotification;->display(Landroid/content/Context;)V

    .line 102
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user is deactivated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 103
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/notifications/DeactivatedNotification;->display(Landroid/content/Context;)V

    :cond_e
    :goto_2
    return-void
.end method

.method public static isMusicOverHttp()Z
    .locals 4

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 649
    :goto_0
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "audio_https"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isVideoOverHttp()Z
    .locals 3

    .line 656
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "video_https"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method private showGoogleApiDialog(Ljava/lang/ref/WeakReference;Lcom/google/android/gms/common/GoogleApiAvailability;I)V
    .locals 2

    .line 227
    invoke-virtual {p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/session/Session$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/perm/kate/session/Session$1;-><init>(Lcom/perm/kate/session/Session;Lcom/google/android/gms/common/GoogleApiAvailability;Ljava/lang/ref/WeakReference;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showPlayServicesAlert(Ljava/lang/ref/WeakReference;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 243
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/perm/kate/session/Session$2;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/session/Session$2;-><init>(Lcom/perm/kate/session/Session;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private validateToken(Ljava/lang/ref/WeakReference;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/perm/kate/session/Session;->getInstanceIdToken(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v2, v1}, Lcom/perm/kate/api/Api;->refreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Kate.Session"

    if-eqz v2, :cond_0

    :try_start_1
    const-string p1, "Empty new token"

    .line 179
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, v2, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Equals token"

    .line 185
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/session/Session;->showPlayServicesAlert(Ljava/lang/ref/WeakReference;I)V

    return v0

    .line 190
    :cond_1
    invoke-virtual {p0, v1}, Lcom/perm/kate/session/Session;->setAccessToken(Ljava/lang/String;)V

    .line 191
    sget-object p1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {p1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 196
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method


# virtual methods
.method public addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 895
    new-instance v8, Lcom/perm/kate/session/Session$68;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$68;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 900
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addAudioAlbum(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1797
    new-instance v6, Lcom/perm/kate/session/Session$164;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$164;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1802
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1761
    new-instance v6, Lcom/perm/kate/session/Session$160;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$160;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1766
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addFriend(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1108
    new-instance v6, Lcom/perm/kate/session/Session$89;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$89;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addGroupBanUser(JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 1941
    new-instance v12, Lcom/perm/kate/session/Session$180;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$180;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 1946
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addGroupLink(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2502
    new-instance v8, Lcom/perm/kate/session/Session$241;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$241;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 904
    new-instance v8, Lcom/perm/kate/session/Session$69;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$69;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addMarket(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Double;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 15

    .line 2648
    new-instance v14, Lcom/perm/kate/session/Session$257;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/perm/kate/session/Session$257;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Double;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 2653
    invoke-direct {p0, v14}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addMarketAlbum(JLjava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2694
    new-instance v8, Lcom/perm/kate/session/Session$262;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$262;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/Long;)V

    .line 2699
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addMarketToAlbum(JJLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2676
    new-instance v9, Lcom/perm/kate/session/Session$260;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$260;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;)V

    move-object v0, p0

    .line 2681
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addPollVote(JLjava/util/ArrayList;JZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1189
    new-instance v10, Lcom/perm/kate/session/Session$98;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$98;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/util/ArrayList;JZ)V

    move-object v0, p0

    .line 1194
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addToBlackList(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1887
    new-instance v6, Lcom/perm/kate/session/Session$174;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$174;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 1892
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addUserToChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1554
    new-instance v8, Lcom/perm/kate/session/Session$137;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$137;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1559
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1072
    new-instance v7, Lcom/perm/kate/session/Session$85;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$85;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1077
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2403
    new-instance v7, Lcom/perm/kate/session/Session$230;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$230;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public allowMessagesFromGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2884
    new-instance v6, Lcom/perm/kate/session/Session$283;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$283;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2889
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public archiveWallPost(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 3111
    new-instance v6, Lcom/perm/kate/session/Session$308;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$308;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 3117
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public audioFollowPlaylist(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2993
    new-instance v9, Lcom/perm/kate/session/Session$295;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$295;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    const/4 v0, 0x0

    .line 2998
    iput-boolean v0, v9, Lcom/perm/kate/session/Command;->show_captcha:Z

    move-object v0, p0

    .line 2999
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public audioReorder(JJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 2857
    new-instance v11, Lcom/perm/kate/session/Session$280;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$280;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 2862
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public audioSendStartEvent(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 3093
    new-instance v6, Lcom/perm/kate/session/Session$306;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$306;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1788
    new-instance v6, Lcom/perm/kate/session/Session$163;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$163;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public audioSubscribeToQueue(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 3084
    new-instance v0, Lcom/perm/kate/session/Session$305;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$305;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 3089
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2457
    new-instance v8, Lcom/perm/kate/session/Session$236;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$236;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public chatCreate(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1527
    new-instance v6, Lcom/perm/kate/session/Session$134;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$134;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public chatEdit(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1536
    new-instance v7, Lcom/perm/kate/session/Session$135;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$135;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;)V

    .line 1541
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public closeTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2947
    new-instance v8, Lcom/perm/kate/session/Session$290;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$290;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2952
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public confirmPhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2530
    new-instance v9, Lcom/perm/kate/session/Session$244;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$244;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJ)V

    move-object v0, p0

    .line 2535
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 679
    new-instance v9, Lcom/perm/kate/session/Session$45;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$45;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 684
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2205
    new-instance v8, Lcom/perm/kate/session/Session$208;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$208;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2210
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1324
    new-instance v9, Lcom/perm/kate/session/Session$113;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$113;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 1329
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createGroupTopicComment(JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 1297
    new-instance v12, Lcom/perm/kate/session/Session$110;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$110;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    move-object v0, p0

    .line 1302
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 2593
    new-instance v11, Lcom/perm/kate/session/Session$251;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$251;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    move-object v0, p0

    .line 2598
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createNote(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1081
    new-instance v6, Lcom/perm/kate/session/Session$86;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$86;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createNoteComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 479
    new-instance v7, Lcom/perm/kate/session/Session$25;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$25;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createPhotoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 461
    new-instance v11, Lcom/perm/kate/session/Session$23;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$23;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    move-object v0, p0

    .line 466
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createPoll(Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1216
    new-instance v10, Lcom/perm/kate/session/Session$101;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$101;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 1221
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createVideoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 497
    new-instance v11, Lcom/perm/kate/session/Session$27;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$27;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    move-object v0, p0

    .line 502
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 832
    new-instance v11, Lcom/perm/kate/session/Session$61;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$61;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 837
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-wide/from16 v15, p12

    move-object/from16 v17, p14

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    .line 850
    new-instance v0, Lcom/perm/kate/session/Session$63;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v17}, Lcom/perm/kate/session/Session$63;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 855
    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteAlbum(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1252
    new-instance v6, Lcom/perm/kate/session/Session$105;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$105;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1257
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteAudioAlbum(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1815
    new-instance v8, Lcom/perm/kate/session/Session$166;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$166;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1820
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteAudios(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2929
    new-instance v7, Lcom/perm/kate/session/Session$288;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$288;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;J)V

    .line 2934
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1770
    new-instance v6, Lcom/perm/kate/session/Session$161;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$161;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1775
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteChatPhoto(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2232
    new-instance v6, Lcom/perm/kate/session/Session$211;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$211;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2237
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2893
    new-instance v6, Lcom/perm/kate/session/Session$284;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$284;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2898
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteDoc(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1734
    new-instance v6, Lcom/perm/kate/session/Session$157;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$157;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1739
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1117
    new-instance v0, Lcom/perm/kate/session/Session$90;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$90;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 1122
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteFromBlackList(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1896
    new-instance v6, Lcom/perm/kate/session/Session$175;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$175;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 1901
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteGroupBanUser(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1950
    new-instance v8, Lcom/perm/kate/session/Session$181;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$181;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1955
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteGroupLink(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2493
    new-instance v8, Lcom/perm/kate/session/Session$240;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$240;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2498
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteGroupTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1333
    new-instance v8, Lcom/perm/kate/session/Session$114;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$114;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1338
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteGroupTopicComment(JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1315
    new-instance v10, Lcom/perm/kate/session/Session$112;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$112;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJ)V

    move-object v0, p0

    .line 1320
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteGroups(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2920
    new-instance v0, Lcom/perm/kate/session/Session$287;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$287;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 2925
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteLastWallPosts(JILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2511
    new-instance v8, Lcom/perm/kate/session/Session$242;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$242;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JILjava/lang/String;)V

    .line 2517
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 913
    new-instance v7, Lcom/perm/kate/session/Session$70;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$70;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteMarket(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2666
    new-instance v8, Lcom/perm/kate/session/Session$259;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$259;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2672
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteMarketAlbum(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2712
    new-instance v8, Lcom/perm/kate/session/Session$264;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$264;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2718
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteMarketComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2602
    new-instance v7, Lcom/perm/kate/session/Session$252;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$252;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 2608
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteMessage(Ljava/util/ArrayList;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 398
    new-instance v7, Lcom/perm/kate/session/Session$16;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$16;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Integer;Z)V

    .line 403
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteMessageThread(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1153
    new-instance v6, Lcom/perm/kate/session/Session$94;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$94;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1158
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteNote(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 706
    new-instance v0, Lcom/perm/kate/session/Session$48;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$48;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 711
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteNoteComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 990
    new-instance v7, Lcom/perm/kate/session/Session$78;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$78;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 996
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deletePhoto(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1171
    new-instance v6, Lcom/perm/kate/session/Session$96;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$96;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1176
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deletePhotoComment(JLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1010
    new-instance v9, Lcom/perm/kate/session/Session$80;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$80;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;J)V

    move-object v0, p0

    .line 1016
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deletePhotos(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2902
    new-instance v0, Lcom/perm/kate/session/Session$285;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$285;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 2907
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deletePollVote(JJJZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 1198
    new-instance v11, Lcom/perm/kate/session/Session$99;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$99;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJZ)V

    move-object v0, p0

    .line 1203
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteRecentTopicComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2557
    new-instance v8, Lcom/perm/kate/session/Session$247;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$247;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2562
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteRecentWallComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2548
    new-instance v8, Lcom/perm/kate/session/Session$246;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$246;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2553
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteStory(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 3003
    new-instance v8, Lcom/perm/kate/session/Session$296;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$296;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 3008
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteVideo(Ljava/lang/Long;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1063
    new-instance v8, Lcom/perm/kate/session/Session$84;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$84;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;J)V

    .line 1068
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteVideoAlbum(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2421
    new-instance v7, Lcom/perm/kate/session/Session$232;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$232;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;)V

    .line 2426
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteVideoComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1000
    new-instance v7, Lcom/perm/kate/session/Session$79;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$79;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 1006
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public deleteWallComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 980
    new-instance v7, Lcom/perm/kate/session/Session$77;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$77;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 986
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public denyMessagesFromGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2875
    new-instance v6, Lcom/perm/kate/session/Session$282;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$282;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2880
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public docsAdd(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1905
    new-instance v9, Lcom/perm/kate/session/Session$176;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$176;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    move-object v0, p0

    .line 1910
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public docsGetUploadServer(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1716
    new-instance v6, Lcom/perm/kate/session/Session$155;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$155;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1721
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 688
    new-instance v11, Lcom/perm/kate/session/Session$46;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$46;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 693
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 14

    .line 1986
    new-instance v13, Lcom/perm/kate/session/Session$185;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/session/Session$185;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 1991
    invoke-direct {p0, v13}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editAudioAlbum(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1806
    new-instance v9, Lcom/perm/kate/session/Session$165;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$165;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V

    move-object v0, p0

    .line 1811
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editDoc(JJLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 2776
    new-instance v10, Lcom/perm/kate/session/Session$271;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$271;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 2781
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editGroupLink(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2484
    new-instance v9, Lcom/perm/kate/session/Session$239;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$239;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    move-object v0, p0

    .line 2489
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editGroupSettings(JLcom/perm/kate/api/GroupSettings;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2277
    new-instance v7, Lcom/perm/kate/session/Session$216;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$216;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLcom/perm/kate/api/GroupSettings;)V

    .line 2282
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editGroupTopicComment(JJJLjava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 1306
    new-instance v12, Lcom/perm/kate/session/Session$111;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$111;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJLjava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 1311
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editMarket(JJLjava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Double;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 16

    .line 2657
    new-instance v15, Lcom/perm/kate/session/Session$258;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/perm/kate/session/Session$258;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Double;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    .line 2662
    invoke-direct {v0, v15}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editMarketAlbum(JJLjava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 2703
    new-instance v10, Lcom/perm/kate/session/Session$263;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$263;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/Long;)V

    move-object v0, p0

    .line 2708
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editMarketComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2621
    new-instance v9, Lcom/perm/kate/session/Session$254;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$254;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 2626
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editMessage(JLjava/lang/String;JLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 2983
    new-instance v10, Lcom/perm/kate/session/Session$294;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$294;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;JLjava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 2988
    iput-boolean v0, v10, Lcom/perm/kate/session/Command;->show_captcha:Z

    move-object v0, p0

    .line 2989
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editNoteComment(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 488
    new-instance v8, Lcom/perm/kate/session/Session$26;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$26;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 470
    new-instance v11, Lcom/perm/kate/session/Session$24;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$24;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 475
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editPoll(JJLjava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 14

    .line 1225
    new-instance v13, Lcom/perm/kate/session/Session$102;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/session/Session$102;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 1230
    invoke-direct {p0, v13}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editTopic(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2938
    new-instance v9, Lcom/perm/kate/session/Session$289;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$289;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    move-object v0, p0

    .line 2943
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editVideo(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 2052
    new-instance v12, Lcom/perm/kate/session/Session$191;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$191;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 2057
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editVideoAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2412
    new-instance v9, Lcom/perm/kate/session/Session$231;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$231;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 2417
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editVideoComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 506
    new-instance v9, Lcom/perm/kate/session/Session$28;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$28;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 511
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editWallComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 841
    new-instance v9, Lcom/perm/kate/session/Session$62;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$62;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, p0

    .line 846
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public editWallPost(JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    .line 1671
    new-instance v0, Lcom/perm/kate/session/Session$150;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v16}, Lcom/perm/kate/session/Session$150;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1676
    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveAddLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2376
    new-instance v0, Lcom/perm/kate/session/Session$227;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$227;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2381
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveAddPage(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2358
    new-instance v6, Lcom/perm/kate/session/Session$225;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$225;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2363
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveAddPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 960
    new-instance v7, Lcom/perm/kate/session/Session$75;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$75;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 966
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveAddVideo(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1473
    new-instance v9, Lcom/perm/kate/session/Session$128;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$128;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    move-object v0, p0

    .line 1478
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveRemoveLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2385
    new-instance v0, Lcom/perm/kate/session/Session$228;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$228;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2390
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveRemovePage(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2367
    new-instance v6, Lcom/perm/kate/session/Session$226;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$226;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2372
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveRemovePost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 970
    new-instance v7, Lcom/perm/kate/session/Session$76;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$76;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 976
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public faveRemoveVideo(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1482
    new-instance v8, Lcom/perm/kate/session/Session$129;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$129;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1487
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public fixTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2965
    new-instance v8, Lcom/perm/kate/session/Session$292;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$292;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2970
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public friendsEdit(JLjava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2340
    new-instance v7, Lcom/perm/kate/session/Session$223;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$223;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/util/Collection;)V

    .line 2345
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1234
    new-instance v6, Lcom/perm/kate/session/Session$103;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$103;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Z)V

    .line 1239
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAccount()Lcom/perm/kate/account/Account;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    return-object v0
.end method

.method public getAlbumComments(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2767
    new-instance v8, Lcom/perm/kate/session/Session$270;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$270;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2772
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 425
    new-instance v9, Lcom/perm/kate/session/Session$19;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$19;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 430
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAlbumsByVideo(JLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2322
    new-instance v8, Lcom/perm/kate/session/Session$221;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$221;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Long;)V

    .line 2327
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAllPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 620
    new-instance v8, Lcom/perm/kate/session/Session$40;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$40;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 625
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 638
    new-instance v11, Lcom/perm/kate/session/Session$42;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$42;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IILjava/lang/String;)V

    move-object v0, p0

    .line 643
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1608
    new-instance v7, Lcom/perm/kate/session/Session$143;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$143;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1613
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAudioById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 661
    new-instance v0, Lcom/perm/kate/session/Session$43;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$43;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAudioPopular(Ljava/lang/Integer;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1635
    new-instance v7, Lcom/perm/kate/session/Session$146;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$146;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;II)V

    .line 1640
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAudioRecommendations(Ljava/lang/String;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1626
    new-instance v7, Lcom/perm/kate/session/Session$145;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$145;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;II)V

    .line 1631
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getAudioUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 751
    new-instance v0, Lcom/perm/kate/session/Session$53;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$53;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 756
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getBanned(ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1752
    new-instance v6, Lcom/perm/kate/session/Session$159;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$159;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 1757
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getBlackList(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1878
    new-instance v6, Lcom/perm/kate/session/Session$173;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$173;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1883
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getBotButtons(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 371
    new-instance v6, Lcom/perm/kate/session/Session$13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$13;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 376
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getChat(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2241
    new-instance v7, Lcom/perm/kate/session/Session$212;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$212;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;)V

    .line 2246
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getChatUsers(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1545
    new-instance v7, Lcom/perm/kate/session/Session$136;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$136;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;)V

    .line 1550
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 298
    new-instance v0, Lcom/perm/kate/session/Session$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$5;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 303
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getCitiesByCountry(ILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 289
    new-instance v6, Lcom/perm/kate/session/Session$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$4;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;ILjava/lang/String;)V

    .line 294
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getConversationsById(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 362
    new-instance v6, Lcom/perm/kate/session/Session$12;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$12;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 367
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getCounters(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1428
    new-instance v0, Lcom/perm/kate/session/Session$123;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$123;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1433
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getCountries(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 316
    new-instance v0, Lcom/perm/kate/session/Session$7;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$7;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 321
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getCountriesByCode(Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 307
    new-instance v6, Lcom/perm/kate/session/Session$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$6;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getDocs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1707
    new-instance v7, Lcom/perm/kate/session/Session$154;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$154;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1712
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getDocsById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2830
    new-instance v0, Lcom/perm/kate/session/Session$277;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$277;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2835
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFaveGroups(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1518
    new-instance v7, Lcom/perm/kate/session/Session$133;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$133;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1523
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFaveLinks(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1509
    new-instance v6, Lcom/perm/kate/session/Session$132;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$132;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1514
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFavePhotos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1446
    new-instance v6, Lcom/perm/kate/session/Session$125;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$125;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1451
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFavePosts(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1491
    new-instance v6, Lcom/perm/kate/session/Session$130;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$130;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1496
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFavePostsNew(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1500
    new-instance v6, Lcom/perm/kate/session/Session$131;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$131;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1505
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFaveUsers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1437
    new-instance v7, Lcom/perm/kate/session/Session$124;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$124;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1442
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1455
    new-instance v6, Lcom/perm/kate/session/Session$126;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$126;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1460
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFaveVideosNew(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1464
    new-instance v6, Lcom/perm/kate/session/Session$127;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$127;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1469
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1144
    new-instance v9, Lcom/perm/kate/session/Session$93;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$93;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 1149
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 515
    new-instance v6, Lcom/perm/kate/session/Session$29;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$29;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getFriendsByLid(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 526
    new-instance v7, Lcom/perm/kate/session/Session$30;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$30;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGames(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2088
    new-instance v0, Lcom/perm/kate/session/Session$195;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$195;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2093
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGifts(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2349
    new-instance v7, Lcom/perm/kate/session/Session$224;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$224;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2354
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1932
    new-instance v9, Lcom/perm/kate/session/Session$179;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$179;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 1937
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroupSettings(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2268
    new-instance v6, Lcom/perm/kate/session/Session$215;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$215;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2273
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 15

    .line 1288
    new-instance v14, Lcom/perm/kate/session/Session$109;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/perm/kate/session/Session$109;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJIIIIZLjava/lang/Long;)V

    move-object v0, p0

    .line 1293
    invoke-direct {p0, v14}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroupTopics(JLjava/lang/Integer;IIILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1279
    new-instance v10, Lcom/perm/kate/session/Session$108;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$108;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;III)V

    move-object v0, p0

    .line 1284
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1342
    new-instance v6, Lcom/perm/kate/session/Session$115;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$115;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1347
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroupsInvites(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1977
    new-instance v6, Lcom/perm/kate/session/Session$184;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$184;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1982
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 1590
    new-instance v11, Lcom/perm/kate/session/Session$141;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$141;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 1595
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getInstanceIdToken(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 207
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "Kate.Session"

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGooglePlayServicesAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 212
    invoke-direct {p0, p1, v1, v2}, Lcom/perm/kate/session/Session;->showGoogleApiDialog(Ljava/lang/ref/WeakReference;Lcom/google/android/gms/common/GoogleApiAvailability;I)V

    :cond_0
    return-object v0

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object p2, p2, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p2

    const-string v1, "54740537194"

    invoke-virtual {p2, v1, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getInviteLinkForChat(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 3102
    new-instance v6, Lcom/perm/kate/session/Session$307;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$307;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 3107
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getLikeUsers(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 545
    new-instance v12, Lcom/perm/kate/session/Session$32;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$32;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 550
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 554
    new-instance v10, Lcom/perm/kate/session/Session$33;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$33;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;)V

    move-object v0, p0

    .line 559
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getLists(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2043
    new-instance v0, Lcom/perm/kate/session/Session$190;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$190;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2048
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getLongPollServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1090
    new-instance v0, Lcom/perm/kate/session/Session$87;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$87;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1095
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getLyrics(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1644
    new-instance v7, Lcom/perm/kate/session/Session$147;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$147;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 1649
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2566
    new-instance v8, Lcom/perm/kate/session/Session$248;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$248;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 2571
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMarketCategories(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2639
    new-instance v0, Lcom/perm/kate/session/Session$256;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$256;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2644
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2584
    new-instance v9, Lcom/perm/kate/session/Session$250;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$250;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)V

    move-object v0, p0

    .line 2589
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMarketItem(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2630
    new-instance v0, Lcom/perm/kate/session/Session$255;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$255;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2635
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2575
    new-instance v9, Lcom/perm/kate/session/Session$249;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$249;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 2580
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMessages(JILjava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 335
    new-instance v9, Lcom/perm/kate/session/Session$9;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$9;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JILjava/lang/String;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 340
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1419
    new-instance v0, Lcom/perm/kate/session/Session$122;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$122;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1424
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMessagesDialogs(JIZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 353
    new-instance v8, Lcom/perm/kate/session/Session$11;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$11;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JIZ)V

    .line 358
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 344
    new-instance v12, Lcom/perm/kate/session/Session$10;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$10;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 349
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getMutual(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 563
    new-instance v6, Lcom/perm/kate/session/Session$34;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$34;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 568
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getNewPhotoTags(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2521
    new-instance v6, Lcom/perm/kate/session/Session$243;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$243;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2526
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 573
    new-instance v12, Lcom/perm/kate/session/Session$35;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$35;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 580
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getNewsComments(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 593
    new-instance v0, Lcom/perm/kate/session/Session$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$37;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 598
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getNoteComments(Ljava/lang/Long;Ljava/lang/Long;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 443
    new-instance v8, Lcom/perm/kate/session/Session$21;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$21;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;II)V

    .line 448
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getNotes(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 697
    new-instance v9, Lcom/perm/kate/session/Session$47;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$47;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 702
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1410
    new-instance v9, Lcom/perm/kate/session/Session$121;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$121;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, p0

    .line 1415
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getOnlineFriends(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 536
    new-instance v0, Lcom/perm/kate/session/Session$31;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$31;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 541
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPageUrl(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2785
    new-instance v8, Lcom/perm/kate/session/Session$272;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$272;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;)V

    .line 2790
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 434
    new-instance v9, Lcom/perm/kate/session/Session$20;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$20;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)V

    move-object v0, p0

    .line 439
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPhotoCountsByIdWithExecute(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 931
    new-instance v6, Lcom/perm/kate/session/Session$72;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$72;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 936
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPhotoTagsById(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1261
    new-instance v6, Lcom/perm/kate/session/Session$106;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$106;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1266
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 602
    new-instance v9, Lcom/perm/kate/session/Session$38;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$38;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    move-object v0, p0

    .line 607
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 922
    new-instance v7, Lcom/perm/kate/session/Session$71;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$71;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 927
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPlaylistById(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1617
    new-instance v8, Lcom/perm/kate/session/Session$144;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$144;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1622
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPodcasts(JLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 3075
    new-instance v8, Lcom/perm/kate/session/Session$304;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$304;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Long;)V

    .line 3080
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPoll(JJZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1180
    new-instance v9, Lcom/perm/kate/session/Session$97;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$97;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJZ)V

    move-object v0, p0

    .line 1185
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 14

    .line 1207
    new-instance v13, Lcom/perm/kate/session/Session$100;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/session/Session$100;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Z)V

    move-object v0, p0

    .line 1212
    invoke-direct {p0, v13}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getPrivacySettings(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2466
    new-instance v0, Lcom/perm/kate/session/Session$237;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$237;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2471
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getProducts(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2023
    new-instance v7, Lcom/perm/kate/session/Session$189;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$189;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2028
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getProfileInfo(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2004
    new-instance v0, Lcom/perm/kate/session/Session$187;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$187;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2009
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 326
    new-instance v8, Lcom/perm/kate/session/Session$8;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$8;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 584
    new-instance v10, Lcom/perm/kate/session/Session$36;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$36;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 589
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1126
    new-instance v6, Lcom/perm/kate/session/Session$91;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$91;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Z)V

    .line 1131
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2286
    new-instance v9, Lcom/perm/kate/session/Session$217;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$217;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 2291
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getServerTime(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1599
    new-instance v0, Lcom/perm/kate/session/Session$142;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$142;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1604
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getStats(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2259
    new-instance v8, Lcom/perm/kate/session/Session$214;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$214;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2264
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getStatus(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 407
    new-instance v6, Lcom/perm/kate/session/Session$17;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$17;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 412
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getStickersKeywords(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2866
    new-instance v0, Lcom/perm/kate/session/Session$281;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$281;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2871
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getStories(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2097
    new-instance v0, Lcom/perm/kate/session/Session$196;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$196;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 2102
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getStoriesById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2106
    new-instance v0, Lcom/perm/kate/session/Session$197;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$197;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2111
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1135
    new-instance v8, Lcom/perm/kate/session/Session$92;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$92;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/Integer;)V

    .line 1140
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1581
    new-instance v6, Lcom/perm/kate/session/Session$140;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$140;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getUniversities(ILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 3131
    new-instance v0, Lcom/perm/kate/session/Session$310;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$310;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;I)V

    .line 3136
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getUnreadDialogsCount(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2794
    new-instance v0, Lcom/perm/kate/session/Session$273;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$273;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2799
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 940
    new-instance v9, Lcom/perm/kate/session/Session$73;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$73;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, p0

    .line 946
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getUserPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 611
    new-instance v8, Lcom/perm/kate/session/Session$39;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$39;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 616
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 670
    new-instance v11, Lcom/perm/kate/session/Session$44;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$44;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)V

    move-object v0, p0

    .line 675
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1653
    new-instance v9, Lcom/perm/kate/session/Session$148;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$148;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Z)V

    move-object v0, p0

    .line 1658
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 452
    new-instance v10, Lcom/perm/kate/session/Session$22;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$22;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;IILjava/lang/Long;)V

    move-object v0, p0

    .line 457
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallComment(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 877
    new-instance v8, Lcom/perm/kate/session/Session$66;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$66;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 882
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 868
    new-instance v12, Lcom/perm/kate/session/Session$65;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$65;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;J)V

    move-object v0, p0

    .line 873
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallCount(JZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2439
    new-instance v7, Lcom/perm/kate/session/Session$234;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$234;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JZ)V

    .line 2444
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1842
    new-instance v0, Lcom/perm/kate/session/Session$169;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$169;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1847
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 629
    new-instance v8, Lcom/perm/kate/session/Session$41;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$41;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/String;)V

    .line 634
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallNotesCount(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2448
    new-instance v6, Lcom/perm/kate/session/Session$235;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$235;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2453
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public getWallOffsetByDate(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2848
    new-instance v9, Lcom/perm/kate/session/Session$279;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$279;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2853
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public groupsApproveRequest(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2295
    new-instance v8, Lcom/perm/kate/session/Session$218;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$218;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2300
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 14

    .line 2313
    new-instance v13, Lcom/perm/kate/session/Session$220;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/session/Session$220;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 2318
    invoke-direct {p0, v13}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public groupsInvite(JLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2250
    new-instance v7, Lcom/perm/kate/session/Session$213;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$213;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/util/ArrayList;)V

    .line 2255
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public groupsRemoveUser(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2304
    new-instance v8, Lcom/perm/kate/session/Session$219;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$219;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2309
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public ignoreAd(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2821
    new-instance v6, Lcom/perm/kate/session/Session$276;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$276;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 2826
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public ignoreItem(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2803
    new-instance v9, Lcom/perm/kate/session/Session$274;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$274;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V

    move-object v0, p0

    .line 2808
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public isFriend(JLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2061
    new-instance v7, Lcom/perm/kate/session/Session$192;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$192;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;)V

    .line 2066
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 1360
    new-instance v6, Lcom/perm/kate/session/Session$117;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$117;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 1365
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public leaveGroup(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1369
    new-instance v0, Lcom/perm/kate/session/Session$118;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$118;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 1374
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public makeMainProfilePhoto(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2430
    new-instance v0, Lcom/perm/kate/session/Session$233;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$233;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 2435
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public markAsRead(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 389
    new-instance v6, Lcom/perm/kate/session/Session$15;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$15;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 394
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public markNotificationsAsViewed(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1743
    new-instance v0, Lcom/perm/kate/session/Session$158;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$158;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1748
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public marketAlbumGetPhotoUploadServer(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2740
    new-instance v6, Lcom/perm/kate/session/Session$267;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$267;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2745
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public marketGetPhotoUploadServer(JLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2722
    new-instance v7, Lcom/perm/kate/session/Session$265;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$265;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;)V

    .line 2727
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public messageMarkAsImportant(Ljava/util/Collection;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2070
    new-instance v6, Lcom/perm/kate/session/Session$193;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$193;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Z)V

    .line 2075
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public messagesGetChatPreview(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 3039
    new-instance v0, Lcom/perm/kate/session/Session$300;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$300;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 3044
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public messagesJoinChatByInviteLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 3048
    new-instance v0, Lcom/perm/kate/session/Session$301;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$301;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 3053
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public messagesPin(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 3021
    new-instance v8, Lcom/perm/kate/session/Session$298;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$298;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 3026
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public messagesUnpin(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 3030
    new-instance v6, Lcom/perm/kate/session/Session$299;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$299;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 3035
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public movePhoto(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2178
    new-instance v9, Lcom/perm/kate/session/Session$205;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$205;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJ)V

    move-object v0, p0

    .line 2183
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public movePhotos(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2911
    new-instance v7, Lcom/perm/kate/session/Session$286;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$286;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;J)V

    .line 2916
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public moveToAudioAlbum(Ljava/util/ArrayList;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1824
    new-instance v9, Lcom/perm/kate/session/Session$167;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$167;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;JJ)V

    move-object v0, p0

    .line 1829
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public newsfeedGetMentions(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1923
    new-instance v9, Lcom/perm/kate/session/Session$178;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$178;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V

    move-object v0, p0

    .line 1928
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1869
    new-instance v7, Lcom/perm/kate/session/Session$172;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$172;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1874
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public openTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2956
    new-instance v8, Lcom/perm/kate/session/Session$291;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$291;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2961
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photoCopy(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1959
    new-instance v9, Lcom/perm/kate/session/Session$182;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$182;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    move-object v0, p0

    .line 1964
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photoEdit(Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1680
    new-instance v8, Lcom/perm/kate/session/Session$151;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$151;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/String;)V

    .line 1685
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photosGetChatUploadServer(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2214
    new-instance v9, Lcom/perm/kate/session/Session$209;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$209;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v0, p0

    .line 2219
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photosGetMessagesUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 760
    new-instance v0, Lcom/perm/kate/session/Session$54;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$54;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 765
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photosGetOwnerPhotoUploadServer(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 769
    new-instance v0, Lcom/perm/kate/session/Session$55;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$55;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 774
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photosGetUploadServer(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 715
    new-instance v7, Lcom/perm/kate/session/Session$49;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$49;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;)V

    .line 720
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photosGetWallUploadServer(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 742
    new-instance v6, Lcom/perm/kate/session/Session$52;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$52;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 747
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 778
    new-instance v10, Lcom/perm/kate/session/Session$56;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$56;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 783
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public pinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2187
    new-instance v7, Lcom/perm/kate/session/Session$206;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$206;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 2192
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public putPhotoTag(Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1270
    new-instance v0, Lcom/perm/kate/session/Session$107;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$107;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Lcom/perm/kate/api/PhotoTag;)V

    .line 1275
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removeFromAudioAlbum(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1833
    new-instance v9, Lcom/perm/kate/session/Session$168;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$168;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V

    move-object v0, p0

    .line 1838
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removeMarketFromAlbum(JJLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2685
    new-instance v9, Lcom/perm/kate/session/Session$261;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$261;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;)V

    move-object v0, p0

    .line 2690
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removePhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2539
    new-instance v9, Lcom/perm/kate/session/Session$245;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$245;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJ)V

    move-object v0, p0

    .line 2544
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removeUserFromChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1563
    new-instance v8, Lcom/perm/kate/session/Session$138;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$138;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1568
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removeUserFromGroup(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2839
    new-instance v8, Lcom/perm/kate/session/Session$278;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$278;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2844
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removeVideoFromAlbum(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 2331
    new-instance v10, Lcom/perm/kate/session/Session$222;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$222;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 2336
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public removeWallPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 950
    new-instance v7, Lcom/perm/kate/session/Session$74;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$74;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 956
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reorderAlbums(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1698
    new-instance v10, Lcom/perm/kate/session/Session$153;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$153;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 1703
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reorderPhotos(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1689
    new-instance v10, Lcom/perm/kate/session/Session$152;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$152;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 1694
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportAd(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2812
    new-instance v6, Lcom/perm/kate/session/Session$275;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$275;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportMarketComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2612
    new-instance v9, Lcom/perm/kate/session/Session$253;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$253;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2617
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportPhoto(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2151
    new-instance v9, Lcom/perm/kate/session/Session$202;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$202;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2156
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportPhotoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2160
    new-instance v9, Lcom/perm/kate/session/Session$203;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$203;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2165
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportPost(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2115
    new-instance v9, Lcom/perm/kate/session/Session$198;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$198;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2120
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportPostComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2124
    new-instance v9, Lcom/perm/kate/session/Session$199;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$199;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2129
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportUser(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2169
    new-instance v8, Lcom/perm/kate/session/Session$204;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$204;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportVideo(JJILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 2133
    new-instance v11, Lcom/perm/kate/session/Session$200;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$200;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 2138
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public reportVideoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2142
    new-instance v9, Lcom/perm/kate/session/Session$201;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$201;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    move-object v0, p0

    .line 2147
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 859
    new-instance v8, Lcom/perm/kate/session/Session$64;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$64;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 864
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public resolveScreenName(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1995
    new-instance v0, Lcom/perm/kate/session/Session$186;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$186;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2000
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public revealWallPost(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 3121
    new-instance v6, Lcom/perm/kate/session/Session$309;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$309;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 3127
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 796
    new-instance v9, Lcom/perm/kate/session/Session$58;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$58;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 801
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveDoc(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1725
    new-instance v0, Lcom/perm/kate/session/Session$156;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$156;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1730
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveMarketAlbumPhoto(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2749
    new-instance v9, Lcom/perm/kate/session/Session$268;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$268;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 2754
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveMarketPhoto(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 2731
    new-instance v9, Lcom/perm/kate/session/Session$266;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$266;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 2736
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveMessagesPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 805
    new-instance v7, Lcom/perm/kate/session/Session$59;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$59;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 814
    new-instance v7, Lcom/perm/kate/session/Session$60;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$60;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 17

    .line 2014
    new-instance v15, Lcom/perm/kate/session/Session$188;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/perm/kate/session/Session$188;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    .line 2019
    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 1243
    new-instance v11, Lcom/perm/kate/session/Session$104;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$104;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object v0, p0

    .line 1248
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public saveWallPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 787
    new-instance v9, Lcom/perm/kate/session/Session$57;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$57;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 792
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 886
    new-instance v10, Lcom/perm/kate/session/Session$67;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$67;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v0, p0

    .line 891
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchDialogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1860
    new-instance v7, Lcom/perm/kate/session/Session$171;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$171;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1865
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2758
    new-instance v7, Lcom/perm/kate/session/Session$269;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$269;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2763
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 1378
    new-instance v8, Lcom/perm/kate/session/Session$119;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$119;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1383
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11

    .line 1851
    new-instance v10, Lcom/perm/kate/session/Session$170;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$170;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;)V

    move-object v0, p0

    .line 1856
    invoke-direct {p0, v10}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 16

    .line 1914
    new-instance v15, Lcom/perm/kate/session/Session$177;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    invoke-direct/range {v0 .. v14}, Lcom/perm/kate/session/Session$177;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDD)V

    move-object/from16 v0, p0

    .line 1919
    invoke-direct {v0, v15}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-wide/from16 v31, p28

    move-object/from16 v33, p30

    move-object/from16 v2, p31

    move-object/from16 v3, p32

    .line 1033
    new-instance v0, Lcom/perm/kate/session/Session$82;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v33}, Lcom/perm/kate/session/Session$82;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1042
    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-wide/from16 v31, p28

    move-object/from16 v33, p30

    move-object/from16 v2, p31

    move-object/from16 v3, p32

    .line 1050
    new-instance v0, Lcom/perm/kate/session/Session$83;

    move-object/from16 p1, v0

    invoke-direct/range {v0 .. v33}, Lcom/perm/kate/session/Session$83;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1059
    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 1020
    new-instance v11, Lcom/perm/kate/session/Session$81;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$81;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, p0

    .line 1025
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13

    .line 2079
    new-instance v12, Lcom/perm/kate/session/Session$194;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$194;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;)V

    move-object v0, p0

    .line 2084
    invoke-direct {p0, v12}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 17

    .line 380
    new-instance v15, Lcom/perm/kate/session/Session$14;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/perm/kate/session/Session$14;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    .line 385
    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iput-object p1, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v0, p1}, Lcom/perm/kate/api/Api;->setAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method public setChatMemberRole(JJZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10

    .line 1572
    new-instance v9, Lcom/perm/kate/session/Session$139;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$139;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJZ)V

    move-object v0, p0

    .line 1577
    invoke-direct {p0, v9}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setChatPhoto(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 2223
    new-instance v0, Lcom/perm/kate/session/Session$210;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$210;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2228
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 1662
    new-instance v7, Lcom/perm/kate/session/Session$149;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$149;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Z)V

    .line 1667
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setOffline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1968
    new-instance v0, Lcom/perm/kate/session/Session$183;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$183;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1973
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setOnline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1099
    new-instance v0, Lcom/perm/kate/session/Session$88;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$88;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1104
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setPrivacySettings(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 2475
    new-instance v6, Lcom/perm/kate/session/Session$238;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$238;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7

    .line 416
    new-instance v6, Lcom/perm/kate/session/Session$18;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$18;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    invoke-direct {p0, v6}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public storiesGetPhotoUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 724
    new-instance v0, Lcom/perm/kate/session/Session$50;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$50;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 729
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public storiesGetVideoUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 733
    new-instance v0, Lcom/perm/kate/session/Session$51;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$51;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 738
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public storiesGetViewers(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 3012
    new-instance v8, Lcom/perm/kate/session/Session$297;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$297;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 3017
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public unfixTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 2974
    new-instance v8, Lcom/perm/kate/session/Session$293;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$293;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2979
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public unpinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8

    .line 2196
    new-instance v7, Lcom/perm/kate/session/Session$207;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$207;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 2201
    invoke-direct {p0, v7}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1

    .line 1401
    new-instance v0, Lcom/perm/kate/session/Session$120;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$120;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1406
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public videoAddToAlbum(Ljava/lang/Long;JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12

    .line 2394
    new-instance v11, Lcom/perm/kate/session/Session$229;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$229;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJJ)V

    move-object v0, p0

    .line 2399
    invoke-direct {p0, v11}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public wallCloseComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 3057
    new-instance v8, Lcom/perm/kate/session/Session$302;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$302;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 3062
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method public wallOpenComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9

    .line 3066
    new-instance v8, Lcom/perm/kate/session/Session$303;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$303;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 3071
    invoke-direct {p0, v8}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method
