.class public Lcom/perm/kate/session/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field public account:Lcom/perm/kate/account/Account;

.field public api:Lcom/perm/kate/api/Api;

.field context:Landroid/content/Context;

.field invalid_token_counter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "a"    # Lcom/perm/kate/account/Account;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    .line 35
    iput-object p1, p0, Lcom/perm/kate/session/Session;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    .line 37
    new-instance v0, Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v2, v1, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    sget-object v3, Lcom/perm/kate/KateConstants;->API_ID:Ljava/lang/String;

    iget-object v4, v1, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;
    
    iget-boolean v5, v1, Lcom/perm/kate/account/Account;->use_tls:Z

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/perm/kate/api/Api;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    .line 38
    return-void
.end method

.method private ShowDialogForCaptcha(Lcom/perm/kate/session/Command;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Lcom/perm/kate/session/Command;
    .param p2, "captcha_img"    # Ljava/lang/String;
    .param p3, "captcha_sid"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v2, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v3, 0x7f070052

    invoke-virtual {v2, v3}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 185
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v0, Lcom/perm/kate/session/Session$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/perm/kate/session/Session$1;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;Ljava/lang/String;)V

    .line 184
    .local v0, "callback":Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;
    iget-object v2, p1, Lcom/perm/kate/session/Command;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p2, v0}, Lcom/perm/kate/session/CaptchaDialog;->display(Landroid/app/Activity;Ljava/lang/String;Lcom/perm/kate/session/CaptchaDialog$CaptchaCallback;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/session/Session;
    .param p1, "x1"    # Lcom/perm/kate/session/Command;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    return-void
.end method

.method private execute(Lcom/perm/kate/session/Command;)V
    .locals 10
    .param p1, "command"    # Lcom/perm/kate/session/Command;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 64
    :try_start_0
    iget v6, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    .line 65
    invoke-virtual {p1}, Lcom/perm/kate/session/Command;->run()V
    :try_end_0
    .catch Lcom/perm/kate/api/KException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 153
    iget-object v6, p1, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lcom/perm/kate/session/Command;->reportSuccess(Ljava/lang/Object;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ex":Lcom/perm/kate/api/KException;
    invoke-virtual {v1}, Lcom/perm/kate/api/KException;->printStackTrace()V

    .line 70
    iget v6, p1, Lcom/perm/kate/session/Command;->recursion_count:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 71
    const-string v6, "Session recursion limit reached"

    invoke-static {v1, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_1
    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    if-ne v6, v9, :cond_5

    .line 78
    :cond_2
    iget v6, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    .line 79
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 80
    iget-object v6, v1, Lcom/perm/kate/api/KException;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 84
    iget v6, p0, Lcom/perm/kate/session/Session;->invalid_token_counter:I

    if-le v6, v8, :cond_3

    .line 85
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v6}, Lcom/perm/kate/notifications/LoginNotification;->display(Landroid/content/Context;)V

    .line 88
    :cond_3
    invoke-virtual {v1}, Lcom/perm/kate/api/KException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/perm/kate/api/KException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user is deactivated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v6}, Lcom/perm/kate/notifications/DeactivatedNotification;->display(Landroid/content/Context;)V

    .line 93
    :cond_4
    :try_start_1
    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    if-ne v6, v9, :cond_0

    .line 95
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 96
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "error_5_reported"

    .line 97
    .local v3, "pref_name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 98
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/perm/kate/AdDisabler;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/perm/kate/session/Session;->getSplitAds()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/perm/kate/session/Session;->getDeactivated()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/perm/kate/api/KException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "message":Ljava/lang/String;
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 103
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "pref_name":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v5

    .line 104
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 108
    .end local v5    # "th":Ljava/lang/Throwable;
    :cond_5
    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    .line 110
    const-wide/16 v6, 0x3e8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :goto_1
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    goto/16 :goto_0

    .line 111
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_7

    .line 115
    iget-object v6, v1, Lcom/perm/kate/api/KException;->captcha_img:Ljava/lang/String;

    iget-object v7, v1, Lcom/perm/kate/api/KException;->captcha_sid:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v7}, Lcom/perm/kate/session/Session;->ShowDialogForCaptcha(Lcom/perm/kate/session/Command;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_7
    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_8

    .line 117
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 119
    iget-object v6, v1, Lcom/perm/kate/api/KException;->redirect_uri:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/notifications/ValidationNotification;->display(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_8
    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xaa

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xd4

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xd2

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xb4

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xf

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xd6

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0x104

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xc9

    if-eq v6, v7, :cond_9

    iget v6, v1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v7, 0xd5

    if-eq v6, v7, :cond_9

    .line 139
    iget-object v6, v1, Lcom/perm/kate/api/KException;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 140
    :cond_9
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "ex":Lcom/perm/kate/api/KException;
    :catch_3
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    invoke-virtual {p1, v1}, Lcom/perm/kate/session/Command;->reportError(Ljava/lang/Throwable;)V

    .line 147
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 148
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 149
    :cond_a
    instance-of v6, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v6, :cond_0

    .line 150
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto/16 :goto_0
.end method

.method private getDeactivated()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2253
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    new-instance v0, Lcom/perm/kate/api/Api;

    const/4 v2, 0x0

    sget-object v3, Lcom/perm/kate/KateConstants;->API_ID:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/api/Api;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/api/Api;->getProfiles(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2257
    .local v8, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2258
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2263
    .end local v1    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :goto_0
    return-object v0

    .line 2259
    :catch_0
    move-exception v7

    .line 2260
    .local v7, "th":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2261
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .end local v7    # "th":Ljava/lang/Throwable;
    :cond_0
    move-object v0, v9

    .line 2263
    goto :goto_0
.end method

.method private getSplitAds()Z
    .locals 1

    .prologue
    .line 2268
    invoke-static {}, Lcom/perm/kate/AdDisabler;->toSplit()Z

    move-result v0

    return v0
.end method

.method public static isMusicOverHttp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 535
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "audio_https"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 536
    .local v0, "audio_https":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "aid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 756
    new-instance v0, Lcom/perm/kate/session/Session$63;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$63;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 761
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 762
    return-void
.end method

.method public addAudioAlbum(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1548
    new-instance v0, Lcom/perm/kate/session/Session$147;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$147;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1553
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1554
    return-void
.end method

.method public addBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1512
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, "gids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$143;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$143;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1517
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1518
    return-void
.end method

.method public addFriend(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 949
    new-instance v0, Lcom/perm/kate/session/Session$82;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$82;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 954
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 955
    return-void
.end method

.method public addGroupBanUser(JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "end_date"    # Ljava/lang/Long;
    .param p6, "reason"    # Ljava/lang/Integer;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "comment_visible"    # Z
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1674
    new-instance v0, Lcom/perm/kate/session/Session$161;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$161;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 1679
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1680
    return-void
.end method

.method public addGroupLink(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2206
    new-instance v0, Lcom/perm/kate/session/Session$220;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$220;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 2211
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2212
    return-void
.end method

.method public addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "item_id"    # Ljava/lang/Long;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 765
    new-instance v0, Lcom/perm/kate/session/Session$64;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$64;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 771
    return-void
.end method

.method public addPollVote(JJJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "poll_id"    # J
    .param p3, "answer_id"    # J
    .param p5, "owner_id"    # J
    .param p7, "topic_id"    # J
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1030
    new-instance v0, Lcom/perm/kate/session/Session$91;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$91;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJJ)V

    .line 1035
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1036
    return-void
.end method

.method public addToBlackList(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1629
    new-instance v0, Lcom/perm/kate/session/Session$156;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$156;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 1634
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1635
    return-void
.end method

.method public addUserToChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "chat_id"    # J
    .param p3, "uid"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1341
    new-instance v0, Lcom/perm/kate/session/Session$124;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$124;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1346
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1347
    return-void
.end method

.method public addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "target_id"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 913
    new-instance v0, Lcom/perm/kate/session/Session$78;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$78;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 918
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 919
    return-void
.end method

.method public addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # Ljava/lang/Long;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "privacy"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2134
    new-instance v0, Lcom/perm/kate/session/Session$212;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$212;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2140
    return-void
.end method

.method public allowMessagesFromGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2471
    new-instance v0, Lcom/perm/kate/session/Session$247;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$247;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2476
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2477
    return-void
.end method

.method public audioReorder(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "before"    # Ljava/lang/Long;
    .param p6, "after"    # Ljava/lang/Long;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2444
    new-instance v0, Lcom/perm/kate/session/Session$244;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$244;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;)V

    .line 2449
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2450
    return-void
.end method

.method public audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "audio"    # Ljava/lang/String;
    .param p2, "target_ids"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1539
    new-instance v0, Lcom/perm/kate/session/Session$146;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$146;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1545
    return-void
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "new_password"    # Ljava/lang/String;
    .param p2, "old_password"    # Ljava/lang/String;
    .param p3, "restore_sid"    # Ljava/lang/String;
    .param p4, "change_password_hash"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2161
    new-instance v0, Lcom/perm/kate/session/Session$215;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$215;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2167
    return-void
.end method

.method public chatCreate(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1314
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$121;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$121;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1319
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1320
    return-void
.end method

.method public chatEdit(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1323
    new-instance v0, Lcom/perm/kate/session/Session$122;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$122;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;)V

    .line 1328
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1329
    return-void
.end method

.method public confirmPhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "photo_id"    # J
    .param p4, "tag_id"    # J
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2234
    new-instance v1, Lcom/perm/kate/session/Session$223;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/session/Session$223;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJ)V

    .line 2239
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2240
    return-void
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/Long;
    .param p3, "privacy"    # Ljava/lang/String;
    .param p4, "comment_privacy"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 567
    new-instance v0, Lcom/perm/kate/session/Session$43;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$43;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 573
    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "subtype"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1918
    new-instance v0, Lcom/perm/kate/session/Session$188;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$188;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1923
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1924
    return-void
.end method

.method public createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "gid"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "from_group"    # Z
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1156
    new-instance v0, Lcom/perm/kate/session/Session$105;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$105;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1161
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1162
    return-void
.end method

.method public createGroupTopicComment(JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p7, "from_group"    # Z
    .param p8, "sticker_id"    # Ljava/lang/Integer;
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$102;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$102;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    .line 1134
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1135
    return-void
.end method

.method public createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2317
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$230;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$230;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    .line 2322
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2323
    return-void
.end method

.method public createNote(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 922
    new-instance v0, Lcom/perm/kate/session/Session$79;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$79;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 928
    return-void
.end method

.method public createNoteComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "nid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 370
    new-instance v0, Lcom/perm/kate/session/Session$22;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$22;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 375
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 376
    return-void
.end method

.method public createPhotoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "pid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$20;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$20;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    .line 357
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 358
    return-void
.end method

.method public createPoll(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "is_anonymous"    # Z
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p4, "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$94;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$94;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Long;Ljava/util/ArrayList;)V

    .line 1062
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1063
    return-void
.end method

.method public createVideoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "video_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "reply_to_comment"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$24;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$24;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    .line 393
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 394
    return-void
.end method

.method public createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$57;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$57;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;)V

    .line 707
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 708
    return-void
.end method

.method public createWallPost(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 18
    .param p1, "owner_id"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p5, "export"    # Ljava/lang/String;
    .param p6, "only_friends"    # Z
    .param p7, "from_group"    # Z
    .param p8, "signed"    # Z
    .param p9, "lat"    # Ljava/lang/String;
    .param p10, "lon"    # Ljava/lang/String;
    .param p11, "publish_date"    # Ljava/lang/Long;
    .param p12, "post_id"    # J
    .param p14, "callback"    # Lcom/perm/kate/session/Callback;
    .param p15, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "J",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 720
    .local p4, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/perm/kate/session/Session$59;

    move-object/from16 v2, p0

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    invoke-direct/range {v1 .. v17}, Lcom/perm/kate/session/Session$59;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    .line 725
    .local v1, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 726
    return-void
.end method

.method public deleteAlbum(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "aid"    # Ljava/lang/Long;
    .param p2, "gid"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1084
    new-instance v0, Lcom/perm/kate/session/Session$97;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$97;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1089
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1090
    return-void
.end method

.method public deleteAudioAlbum(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "album_id"    # J
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1566
    new-instance v0, Lcom/perm/kate/session/Session$149;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$149;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;)V

    .line 1571
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1572
    return-void
.end method

.method public deleteAudios(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p2, "owner_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2516
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Lcom/perm/kate/session/Session$252;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$252;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;J)V

    .line 2521
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2522
    return-void
.end method

.method public deleteBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, "gids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$144;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$144;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1526
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1527
    return-void
.end method

.method public deleteChatPhoto(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1945
    new-instance v0, Lcom/perm/kate/session/Session$191;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$191;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 1950
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1951
    return-void
.end method

.method public deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2480
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$248;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$248;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2485
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2486
    return-void
.end method

.method public deleteDoc(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "doc_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1485
    new-instance v0, Lcom/perm/kate/session/Session$140;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$140;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1490
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1491
    return-void
.end method

.method public deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 958
    new-instance v0, Lcom/perm/kate/session/Session$83;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$83;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 963
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 964
    return-void
.end method

.method public deleteFromBlackList(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1638
    new-instance v0, Lcom/perm/kate/session/Session$157;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$157;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 1643
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1644
    return-void
.end method

.method public deleteGroupBanUser(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1683
    new-instance v0, Lcom/perm/kate/session/Session$162;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$162;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1688
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1689
    return-void
.end method

.method public deleteGroupLink(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "link_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2197
    new-instance v0, Lcom/perm/kate/session/Session$219;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$219;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2202
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2203
    return-void
.end method

.method public deleteGroupTopic(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1165
    new-instance v0, Lcom/perm/kate/session/Session$106;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$106;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1170
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1171
    return-void
.end method

.method public deleteGroupTopicComment(JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "cid"    # J
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1147
    new-instance v0, Lcom/perm/kate/session/Session$104;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$104;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJ)V

    .line 1152
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1153
    return-void
.end method

.method public deleteGroups(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2507
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$251;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$251;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 2512
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2513
    return-void
.end method

.method public deleteLastWallPosts(JILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "count"    # I
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2215
    new-instance v0, Lcom/perm/kate/session/Session$221;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$221;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JILjava/lang/String;)V

    .line 2221
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2222
    return-void
.end method

.method public deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "item_id"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 774
    new-instance v0, Lcom/perm/kate/session/Session$65;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$65;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 780
    return-void
.end method

.method public deleteMarketComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "wallOwnerId"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2326
    new-instance v1, Lcom/perm/kate/session/Session$231;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$231;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 2332
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2333
    return-void
.end method

.method public deleteMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$12;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$12;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 285
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 286
    return-void
.end method

.method public deleteMessageThread(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "chat_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 994
    new-instance v0, Lcom/perm/kate/session/Session$87;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$87;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 999
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1000
    return-void
.end method

.method public deleteNote(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "nid"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 594
    new-instance v0, Lcom/perm/kate/session/Session$46;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$46;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 599
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 600
    return-void
.end method

.method public deleteNoteComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "noteOwnerId"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 831
    new-instance v1, Lcom/perm/kate/session/Session$71;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$71;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 837
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 838
    return-void
.end method

.method public deletePhoto(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "photo_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1012
    new-instance v0, Lcom/perm/kate/session/Session$89;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$89;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1017
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1018
    return-void
.end method

.method public deletePhotoComment(JLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "photo_id"    # J
    .param p3, "photoOwnerId"    # Ljava/lang/Long;
    .param p4, "comment_id"    # J
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 851
    new-instance v0, Lcom/perm/kate/session/Session$73;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$73;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;J)V

    .line 857
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 858
    return-void
.end method

.method public deletePhotos(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/IdsPair;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2489
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    new-instance v0, Lcom/perm/kate/session/Session$249;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$249;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 2494
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2495
    return-void
.end method

.method public deletePollVote(JJJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "poll_id"    # J
    .param p3, "answer_id"    # J
    .param p5, "owner_id"    # J
    .param p7, "topic_id"    # J
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1039
    new-instance v0, Lcom/perm/kate/session/Session$92;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$92;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJJ)V

    .line 1044
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1045
    return-void
.end method

.method public deleteRecentTopicComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "spammer_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2281
    new-instance v0, Lcom/perm/kate/session/Session$226;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$226;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2286
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2287
    return-void
.end method

.method public deleteRecentWallComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "spammer_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2272
    new-instance v0, Lcom/perm/kate/session/Session$225;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$225;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2277
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2278
    return-void
.end method

.method public deleteVideo(Ljava/lang/Long;Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "target_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 904
    new-instance v0, Lcom/perm/kate/session/Session$77;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$77;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;J)V

    .line 909
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 910
    return-void
.end method

.method public deleteVideoComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "videoOwnerId"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 841
    new-instance v1, Lcom/perm/kate/session/Session$72;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$72;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 847
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 848
    return-void
.end method

.method public deleteWallComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "wallOwnerId"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 821
    new-instance v1, Lcom/perm/kate/session/Session$70;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$70;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 827
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 828
    return-void
.end method

.method public denyMessagesFromGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2462
    new-instance v0, Lcom/perm/kate/session/Session$246;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$246;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2467
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2468
    return-void
.end method

.method public docsAdd(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "document_id"    # J
    .param p5, "access_key"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1647
    new-instance v0, Lcom/perm/kate/session/Session$158;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$158;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    .line 1652
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1653
    return-void
.end method

.method public docsGetUploadServer(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "group_id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1467
    new-instance v0, Lcom/perm/kate/session/Session$138;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$138;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1472
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1473
    return-void
.end method

.method public editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "aid"    # J
    .param p3, "oid"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "privacy"    # Ljava/lang/String;
    .param p6, "comment_privacy"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 576
    new-instance v0, Lcom/perm/kate/session/Session$44;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$44;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 582
    return-void
.end method

.method public editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "owner_id"    # J
    .param p3, "audio_id"    # J
    .param p5, "artist"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "genre_id"    # Ljava/lang/Integer;
    .param p9, "no_search"    # Ljava/lang/Integer;
    .param p10, "callback"    # Lcom/perm/kate/session/Callback;
    .param p11, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1719
    new-instance v0, Lcom/perm/kate/session/Session$166;

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

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/session/Session$166;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1724
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1725
    return-void
.end method

.method public editAudioAlbum(Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "album_id"    # J
    .param p4, "gid"    # Ljava/lang/Long;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1557
    new-instance v1, Lcom/perm/kate/session/Session$148;

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/session/Session$148;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JLjava/lang/Long;)V

    .line 1562
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1563
    return-void
.end method

.method public editDoc(JJLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "owner_id"    # J
    .param p3, "doc_id"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "tags"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2381
    new-instance v0, Lcom/perm/kate/session/Session$237;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$237;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)V

    .line 2386
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2387
    return-void
.end method

.method public editGroupLink(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "link_id"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2188
    new-instance v0, Lcom/perm/kate/session/Session$218;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$218;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    .line 2193
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2194
    return-void
.end method

.method public editGroupSettings(JLcom/perm/kate/api/GroupSettings;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "gs"    # Lcom/perm/kate/api/GroupSettings;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1990
    new-instance v0, Lcom/perm/kate/session/Session$196;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$196;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLcom/perm/kate/api/GroupSettings;)V

    .line 1995
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1996
    return-void
.end method

.method public editGroupTopicComment(JJJLjava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "cid"    # J
    .param p3, "gid"    # J
    .param p5, "tid"    # J
    .param p7, "text"    # Ljava/lang/String;
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1138
    .local p8, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$103;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$103;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJLjava/lang/String;Ljava/util/ArrayList;)V

    .line 1143
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1144
    return-void
.end method

.method public editMarketComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "text"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2345
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$233;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$233;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2350
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2351
    return-void
.end method

.method public editNoteComment(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 379
    new-instance v0, Lcom/perm/kate/session/Session$23;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$23;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;)V

    .line 384
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 385
    return-void
.end method

.method public editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "cid"    # J
    .param p3, "pid"    # J
    .param p5, "owner_id"    # Ljava/lang/Long;
    .param p6, "message"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    .local p7, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$21;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$21;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 366
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 367
    return-void
.end method

.method public editVideo(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "privacy_view"    # Ljava/lang/String;
    .param p7, "privacy_comment"    # Ljava/lang/String;
    .param p8, "repeat"    # Ljava/lang/Integer;
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1783
    new-instance v0, Lcom/perm/kate/session/Session$173;

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

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$173;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1788
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1789
    return-void
.end method

.method public editVideoComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "message"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$25;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$25;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 402
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 403
    return-void
.end method

.method public editWallComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "text"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 711
    .local p5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$58;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$58;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 716
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 717
    return-void
.end method

.method public editWallPost(JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 19
    .param p1, "owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p7, "lat"    # Ljava/lang/String;
    .param p8, "lon"    # Ljava/lang/String;
    .param p9, "place_id"    # J
    .param p11, "publish_date"    # Ljava/lang/Long;
    .param p12, "signed"    # Z
    .param p13, "callback"    # Lcom/perm/kate/session/Callback;
    .param p14, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Z",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1440
    .local p6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/perm/kate/session/Session$135;

    move-object/from16 v3, p0

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-wide/from16 v14, p9

    move-object/from16 v16, p11

    move/from16 v17, p12

    invoke-direct/range {v2 .. v17}, Lcom/perm/kate/session/Session$135;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Z)V

    .line 1445
    .local v2, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1446
    return-void
.end method

.method public faveAddGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2089
    new-instance v0, Lcom/perm/kate/session/Session$207;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$207;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2094
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2095
    return-void
.end method

.method public faveAddLink(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2107
    new-instance v0, Lcom/perm/kate/session/Session$209;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$209;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2113
    return-void
.end method

.method public faveAddUser(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "user_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2071
    new-instance v0, Lcom/perm/kate/session/Session$205;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$205;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2076
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2077
    return-void
.end method

.method public faveRemoveGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2098
    new-instance v0, Lcom/perm/kate/session/Session$208;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$208;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2103
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2104
    return-void
.end method

.method public faveRemoveLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "link_id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2116
    new-instance v0, Lcom/perm/kate/session/Session$210;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$210;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2121
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2122
    return-void
.end method

.method public faveRemoveUser(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "user_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2080
    new-instance v0, Lcom/perm/kate/session/Session$206;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$206;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2085
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2086
    return-void
.end method

.method public friendsEdit(JLjava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "user_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2053
    .local p3, "list_ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/perm/kate/session/Session$203;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$203;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/util/Collection;)V

    .line 2058
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2059
    return-void
.end method

.method public friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "return_system"    # Z
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1066
    new-instance v0, Lcom/perm/kate/session/Session$95;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$95;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Z)V

    .line 1071
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1072
    return-void
.end method

.method public getAccount()Lcom/perm/kate/account/Account;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    return-object v0
.end method

.method public getAlbumComments(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "album_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2372
    new-instance v0, Lcom/perm/kate/session/Session$236;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$236;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2377
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2378
    return-void
.end method

.method public getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "oid"    # Ljava/lang/Long;
    .param p3, "need_system"    # Ljava/lang/Integer;
    .param p4, "need_covers"    # Ljava/lang/Integer;
    .param p5, "photo_sizes"    # Ljava/lang/Integer;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "aids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$15;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$15;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 312
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 313
    return-void
.end method

.method public getAlbumsByVideo(JLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "target_id"    # J
    .param p3, "vid"    # Ljava/lang/Long;
    .param p4, "oid"    # Ljava/lang/Long;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2035
    new-instance v0, Lcom/perm/kate/session/Session$201;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$201;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Long;)V

    .line 2040
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2041
    return-void
.end method

.method public getAllPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "extended"    # Z
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 508
    new-instance v0, Lcom/perm/kate/session/Session$37;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$37;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 513
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 514
    return-void
.end method

.method public getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "gid"    # Ljava/lang/Long;
    .param p3, "album_id"    # Ljava/lang/Long;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    .local p4, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$39;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$39;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;)V

    .line 531
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 532
    return-void
.end method

.method public getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1386
    new-instance v0, Lcom/perm/kate/session/Session$129;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$129;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1391
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1392
    return-void
.end method

.method public getAudioById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "audios"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 540
    new-instance v0, Lcom/perm/kate/session/Session$40;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$40;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 545
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 546
    return-void
.end method

.method public getAudioPopular(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "genre_id"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1404
    new-instance v0, Lcom/perm/kate/session/Session$131;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$131;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;)V

    .line 1409
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1410
    return-void
.end method

.method public getAudioRecommendations(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "target_audio"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1395
    new-instance v0, Lcom/perm/kate/session/Session$130;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$130;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1400
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1401
    return-void
.end method

.method public getAudioUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 621
    new-instance v0, Lcom/perm/kate/session/Session$49;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$49;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 626
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 627
    return-void
.end method

.method public getBanned(ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "is_extended"    # Z
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1503
    new-instance v0, Lcom/perm/kate/session/Session$142;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$142;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;ZLjava/lang/String;)V

    .line 1508
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1509
    return-void
.end method

.method public getBlackList(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "offset"    # Ljava/lang/Long;
    .param p2, "count"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1620
    new-instance v0, Lcom/perm/kate/session/Session$155;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$155;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1625
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1626
    return-void
.end method

.method public getChat(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1954
    new-instance v0, Lcom/perm/kate/session/Session$192;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$192;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;)V

    .line 1959
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1960
    return-void
.end method

.method public getChatUsers(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "chat_id"    # J
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1332
    new-instance v0, Lcom/perm/kate/session/Session$123;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$123;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;)V

    .line 1337
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1338
    return-void
.end method

.method public getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$3;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 203
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 204
    return-void
.end method

.method public getCitiesByCountry(ILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "country"    # I
    .param p2, "q"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    new-instance v0, Lcom/perm/kate/session/Session$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$2;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;ILjava/lang/String;)V

    .line 194
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 195
    return-void
.end method

.method public getCounters(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1260
    new-instance v0, Lcom/perm/kate/session/Session$115;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$115;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1265
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1266
    return-void
.end method

.method public getCountries(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$5;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 221
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 222
    return-void
.end method

.method public getCountriesByCode(Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "need_full"    # Ljava/lang/Integer;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    new-instance v0, Lcom/perm/kate/session/Session$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$4;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 212
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 213
    return-void
.end method

.method public getDocs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "count"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1458
    new-instance v0, Lcom/perm/kate/session/Session$137;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$137;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1463
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1464
    return-void
.end method

.method public getDocsById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "docs"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2417
    new-instance v0, Lcom/perm/kate/session/Session$241;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$241;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2422
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2423
    return-void
.end method

.method public getFaveLinks(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1305
    new-instance v0, Lcom/perm/kate/session/Session$120;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$120;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1310
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1311
    return-void
.end method

.method public getFavePhotos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1278
    new-instance v0, Lcom/perm/kate/session/Session$117;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$117;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1283
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1284
    return-void
.end method

.method public getFavePosts(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1296
    new-instance v0, Lcom/perm/kate/session/Session$119;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$119;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1301
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1302
    return-void
.end method

.method public getFaveUsers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1269
    new-instance v0, Lcom/perm/kate/session/Session$116;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$116;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1274
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1275
    return-void
.end method

.method public getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1287
    new-instance v0, Lcom/perm/kate/session/Session$118;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$118;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1292
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1293
    return-void
.end method

.method public getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "fields"    # Ljava/lang/String;
    .param p5, "name_case"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 985
    new-instance v0, Lcom/perm/kate/session/Session$86;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$86;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;)V

    .line 990
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 991
    return-void
.end method

.method public getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 406
    new-instance v0, Lcom/perm/kate/session/Session$26;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$26;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;)V

    .line 412
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 413
    return-void
.end method

.method public getFriendsByLid(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "list_id"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 417
    new-instance v0, Lcom/perm/kate/session/Session$27;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$27;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 424
    return-void
.end method

.method public getGames(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1819
    new-instance v0, Lcom/perm/kate/session/Session$177;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$177;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1824
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1825
    return-void
.end method

.method public getGifts(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Long;
    .param p3, "count"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2062
    new-instance v0, Lcom/perm/kate/session/Session$204;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$204;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2067
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2068
    return-void
.end method

.method public getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "offset"    # Ljava/lang/Long;
    .param p4, "count"    # Ljava/lang/Long;
    .param p5, "user_id"    # Ljava/lang/Long;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1665
    new-instance v0, Lcom/perm/kate/session/Session$160;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$160;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1670
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1671
    return-void
.end method

.method public getGroupSettings(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1981
    new-instance v0, Lcom/perm/kate/session/Session$195;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$195;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 1986
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1987
    return-void
.end method

.method public getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 15
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "photo_sizes"    # I
    .param p6, "extended"    # I
    .param p7, "count"    # I
    .param p8, "offset"    # I
    .param p9, "reverse_order"    # Z
    .param p10, "start_comment_id"    # Ljava/lang/Long;
    .param p11, "callback"    # Lcom/perm/kate/session/Callback;
    .param p12, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1120
    new-instance v0, Lcom/perm/kate/session/Session$101;

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

    invoke-direct/range {v0 .. v13}, Lcom/perm/kate/session/Session$101;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJIIIIZLjava/lang/Long;)V

    .line 1125
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1126
    return-void
.end method

.method public getGroupTopics(JLjava/lang/Integer;IIILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "gid"    # J
    .param p3, "order"    # Ljava/lang/Integer;
    .param p4, "extended"    # I
    .param p5, "count"    # I
    .param p6, "offset"    # I
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1111
    new-instance v0, Lcom/perm/kate/session/Session$100;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$100;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;III)V

    .line 1116
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1117
    return-void
.end method

.method public getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$107;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$107;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1179
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1180
    return-void
.end method

.method public getGroupsInvites(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "offset"    # Ljava/lang/Long;
    .param p2, "count"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1710
    new-instance v0, Lcom/perm/kate/session/Session$165;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$165;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1715
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1716
    return-void
.end method

.method public getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "group_id"    # J
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "sort"    # Ljava/lang/String;
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "fields"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1368
    new-instance v0, Lcom/perm/kate/session/Session$127;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$127;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1374
    return-void
.end method

.method public getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12
    .param p1, "item_type"    # Ljava/lang/String;
    .param p2, "item_id"    # J
    .param p4, "owner_id"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 445
    new-instance v1, Lcom/perm/kate/session/Session$30;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/perm/kate/session/Session$30;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;)V

    .line 450
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 451
    return-void
.end method

.method public getLists(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1774
    new-instance v0, Lcom/perm/kate/session/Session$172;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$172;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1779
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1780
    return-void
.end method

.method public getLongPollServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 931
    new-instance v0, Lcom/perm/kate/session/Session$80;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$80;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 936
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 937
    return-void
.end method

.method public getLyrics(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "lyrics_id"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1413
    new-instance v0, Lcom/perm/kate/session/Session$132;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$132;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 1418
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1419
    return-void
.end method

.method public getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2290
    new-instance v0, Lcom/perm/kate/session/Session$227;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$227;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 2295
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2296
    return-void
.end method

.method public getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "item_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "start_comment_id"    # Ljava/lang/Long;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2308
    new-instance v0, Lcom/perm/kate/session/Session$229;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$229;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)V

    .line 2313
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2314
    return-void
.end method

.method public getMarketItem(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "item_ids"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2354
    new-instance v0, Lcom/perm/kate/session/Session$234;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$234;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2359
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2360
    return-void
.end method

.method public getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "album_id"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Integer;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2299
    new-instance v0, Lcom/perm/kate/session/Session$228;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$228;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2304
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2305
    return-void
.end method

.method public getMessages(JZILjava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "time_offset"    # J
    .param p3, "out"    # Z
    .param p4, "count"    # I
    .param p5, "filters"    # Ljava/lang/String;
    .param p6, "offset"    # Ljava/lang/Integer;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    new-instance v0, Lcom/perm/kate/session/Session$7;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$7;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JZILjava/lang/String;Ljava/lang/Integer;)V

    .line 240
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 241
    return-void
.end method

.method public getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$114;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$114;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1256
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1257
    return-void
.end method

.method public getMessagesDialogs(JILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "offset"    # J
    .param p3, "count"    # I
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 253
    new-instance v0, Lcom/perm/kate/session/Session$9;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$9;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JI)V

    .line 258
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 259
    return-void
.end method

.method public getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "offset"    # Ljava/lang/Long;
    .param p6, "count"    # I
    .param p7, "start_message_id"    # Ljava/lang/Long;
    .param p8, "rev"    # Ljava/lang/Integer;
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 244
    new-instance v0, Lcom/perm/kate/session/Session$8;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$8;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;)V

    .line 249
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 250
    return-void
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getMutual(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "target_uid"    # Ljava/lang/Long;
    .param p2, "source_uid"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 454
    new-instance v0, Lcom/perm/kate/session/Session$31;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$31;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 459
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 460
    return-void
.end method

.method public getNewPhotoTags(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "offset"    # Ljava/lang/Integer;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2225
    new-instance v0, Lcom/perm/kate/session/Session$222;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$222;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2230
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2231
    return-void
.end method

.method public getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 14
    .param p1, "start_time"    # Ljava/lang/Long;
    .param p2, "count"    # J
    .param p4, "end_time"    # Ljava/lang/Long;
    .param p5, "from"    # Ljava/lang/String;
    .param p6, "source_ids"    # Ljava/lang/String;
    .param p7, "filters"    # Ljava/lang/String;
    .param p8, "max_photos"    # Ljava/lang/Integer;
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 463
    new-instance v1, Lcom/perm/kate/session/Session$32;

    move-object v2, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/perm/kate/session/Session$32;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 469
    return-void
.end method

.method public getNewsComments(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 481
    new-instance v0, Lcom/perm/kate/session/Session$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$34;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 486
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 487
    return-void
.end method

.method public getNoteComments(Ljava/lang/Long;Ljava/lang/Long;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "nid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 325
    new-instance v0, Lcom/perm/kate/session/Session$17;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$17;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;II)V

    .line 330
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 331
    return-void
.end method

.method public getNotes(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "uid"    # Ljava/lang/Long;
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "count"    # Ljava/lang/Long;
    .param p5, "offset"    # Ljava/lang/Long;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 585
    .local p2, "nids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$45;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$45;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 590
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 591
    return-void
.end method

.method public getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "filters"    # Ljava/lang/String;
    .param p2, "start_time"    # Ljava/lang/Long;
    .param p3, "end_time"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Integer;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1242
    new-instance v0, Lcom/perm/kate/session/Session$113;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$113;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1247
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1248
    return-void
.end method

.method public getOnlineFriends(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 427
    new-instance v0, Lcom/perm/kate/session/Session$28;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$28;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 432
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 433
    return-void
.end method

.method public getPageUrl(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "page_id"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2390
    new-instance v0, Lcom/perm/kate/session/Session$238;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$238;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;)V

    .line 2395
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2396
    return-void
.end method

.method public getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "pid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "start_comment_id"    # Ljava/lang/Long;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 316
    new-instance v0, Lcom/perm/kate/session/Session$16;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$16;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)V

    .line 321
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 322
    return-void
.end method

.method public getPhotoCountsByIdWithExecute(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "get_user_id"    # Z
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 792
    new-instance v0, Lcom/perm/kate/session/Session$67;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$67;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 797
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 798
    return-void
.end method

.method public getPhotoTagsById(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "pid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1093
    new-instance v0, Lcom/perm/kate/session/Session$98;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$98;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1098
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1099
    return-void
.end method

.method public getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "aid"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .param p5, "rev"    # Z
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 490
    new-instance v0, Lcom/perm/kate/session/Session$35;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$35;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 495
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 496
    return-void
.end method

.method public getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "photos"    # Ljava/lang/String;
    .param p2, "extended"    # Ljava/lang/Integer;
    .param p3, "photo_sizes"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 783
    new-instance v0, Lcom/perm/kate/session/Session$66;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$66;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 788
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 789
    return-void
.end method

.method public getPoll(JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "poll_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "topic_id"    # J
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1021
    new-instance v0, Lcom/perm/kate/session/Session$90;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$90;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJ)V

    .line 1026
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1027
    return-void
.end method

.method public getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 15
    .param p1, "poll_id"    # J
    .param p3, "owner_id"    # J
    .param p6, "count"    # Ljava/lang/Long;
    .param p7, "offset"    # Ljava/lang/Long;
    .param p8, "fields"    # Ljava/lang/String;
    .param p9, "topic_id"    # J
    .param p11, "callback"    # Lcom/perm/kate/session/Callback;
    .param p12, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "J",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p5, "answer_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$93;

    move-object v1, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-direct/range {v0 .. v13}, Lcom/perm/kate/session/Session$93;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)V

    .line 1053
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1054
    return-void
.end method

.method public getPrivacySettings(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2170
    new-instance v0, Lcom/perm/kate/session/Session$216;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$216;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2175
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2176
    return-void
.end method

.method public getProducts(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "filters"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "extended"    # Z
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1756
    new-instance v0, Lcom/perm/kate/session/Session$170;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$170;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1761
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1762
    return-void
.end method

.method public getProfileInfo(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1737
    new-instance v0, Lcom/perm/kate/session/Session$168;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$168;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1742
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1743
    return-void
.end method

.method public getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "name_case"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$6;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$6;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 232
    return-void
.end method

.method public getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12
    .param p1, "start_time"    # Ljava/lang/Long;
    .param p2, "count"    # J
    .param p4, "end_time"    # Ljava/lang/Long;
    .param p5, "from"    # Ljava/lang/String;
    .param p6, "max_photos"    # Ljava/lang/Integer;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 472
    new-instance v1, Lcom/perm/kate/session/Session$33;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/perm/kate/session/Session$33;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 478
    return-void
.end method

.method public getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "out"    # Ljava/lang/Integer;
    .param p2, "is_suggested"    # Z
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 967
    new-instance v0, Lcom/perm/kate/session/Session$84;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$84;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Z)V

    .line 972
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 973
    return-void
.end method

.method public getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Integer;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1999
    new-instance v0, Lcom/perm/kate/session/Session$197;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$197;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2004
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2005
    return-void
.end method

.method public getServerTime(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1377
    new-instance v0, Lcom/perm/kate/session/Session$128;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$128;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1382
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1383
    return-void
.end method

.method public getStats(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "group_id"    # Ljava/lang/Long;
    .param p2, "app_id"    # Ljava/lang/Long;
    .param p3, "date_from"    # Ljava/lang/String;
    .param p4, "date_to"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1972
    new-instance v0, Lcom/perm/kate/session/Session$194;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$194;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1978
    return-void
.end method

.method public getStatus(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "group_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 289
    new-instance v0, Lcom/perm/kate/session/Session$13;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$13;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 294
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 295
    return-void
.end method

.method public getStickersKeywords(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2453
    new-instance v0, Lcom/perm/kate/session/Session$245;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$245;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2458
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2459
    return-void
.end method

.method public getStockItems(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "extended"    # Z
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1765
    new-instance v0, Lcom/perm/kate/session/Session$171;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$171;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1770
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1771
    return-void
.end method

.method public getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "extended"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 976
    new-instance v0, Lcom/perm/kate/session/Session$85;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$85;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/Integer;)V

    .line 981
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 982
    return-void
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1359
    new-instance v0, Lcom/perm/kate/session/Session$126;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$126;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1365
    return-void
.end method

.method public getUnreadDialogsCount(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2399
    new-instance v0, Lcom/perm/kate/session/Session$239;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$239;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2404
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2405
    return-void
.end method

.method public getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 801
    new-instance v0, Lcom/perm/kate/session/Session$68;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$68;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 807
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 808
    return-void
.end method

.method public getUserPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "reverse"    # Z
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 499
    new-instance v0, Lcom/perm/kate/session/Session$36;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$36;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 504
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 505
    return-void
.end method

.method public getUserVideo(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 558
    new-instance v0, Lcom/perm/kate/session/Session$42;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$42;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 563
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 564
    return-void
.end method

.method public getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "videos"    # Ljava/lang/String;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "album_id"    # Ljava/lang/Long;
    .param p4, "width"    # Ljava/lang/String;
    .param p5, "count"    # Ljava/lang/Long;
    .param p6, "offset"    # Ljava/lang/Long;
    .param p7, "extended"    # Z
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 549
    new-instance v0, Lcom/perm/kate/session/Session$41;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$41;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)V

    .line 554
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 555
    return-void
.end method

.method public getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .param p5, "is_need_system"    # Z
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1422
    new-instance v0, Lcom/perm/kate/session/Session$133;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$133;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1427
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1428
    return-void
.end method

.method public getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .param p6, "start_comment_id"    # Ljava/lang/Long;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 334
    new-instance v0, Lcom/perm/kate/session/Session$18;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$18;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;IILjava/lang/Long;)V

    .line 339
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 340
    return-void
.end method

.method public getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "reverse_order"    # Z
    .param p6, "start_comment_id"    # Ljava/lang/Long;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 738
    new-instance v0, Lcom/perm/kate/session/Session$61;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$61;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;)V

    .line 743
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 744
    return-void
.end method

.method public getWallCount(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2152
    new-instance v0, Lcom/perm/kate/session/Session$214;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$214;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V

    .line 2157
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2158
    return-void
.end method

.method public getWallMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1584
    .local p1, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/session/Session$151;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$151;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1589
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1590
    return-void
.end method

.method public getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "count"    # I
    .param p3, "offset"    # I
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 517
    new-instance v0, Lcom/perm/kate/session/Session$38;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$38;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/String;)V

    .line 522
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 523
    return-void
.end method

.method public getWallOffsetByDate(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "date"    # J
    .param p5, "count"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2435
    new-instance v0, Lcom/perm/kate/session/Session$243;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$243;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 2440
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2441
    return-void
.end method

.method public groupsApproveRequest(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2008
    new-instance v0, Lcom/perm/kate/session/Session$198;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$198;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2013
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2014
    return-void
.end method

.method public groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "role"    # Ljava/lang/String;
    .param p6, "is_contact"    # Ljava/lang/Integer;
    .param p7, "contact_position"    # Ljava/lang/String;
    .param p8, "contact_phone"    # Ljava/lang/String;
    .param p9, "contact_email"    # Ljava/lang/String;
    .param p10, "callback"    # Lcom/perm/kate/session/Callback;
    .param p11, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2026
    new-instance v0, Lcom/perm/kate/session/Session$200;

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

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/session/Session$200;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2032
    return-void
.end method

.method public groupsInvite(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1963
    new-instance v0, Lcom/perm/kate/session/Session$193;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$193;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1968
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1969
    return-void
.end method

.method public groupsRemoveUser(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2017
    new-instance v0, Lcom/perm/kate/session/Session$199;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$199;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2022
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2023
    return-void
.end method

.method public ignoreItem(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "owner_id"    # J
    .param p4, "item_id"    # J
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2408
    new-instance v1, Lcom/perm/kate/session/Session$240;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/session/Session$240;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V

    .line 2413
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2414
    return-void
.end method

.method public isFriend(JLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "user_id"    # J
    .param p3, "need_sign"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1792
    new-instance v0, Lcom/perm/kate/session/Session$174;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$174;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;)V

    .line 1797
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1798
    return-void
.end method

.method public joinGroup(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "gid"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1192
    new-instance v0, Lcom/perm/kate/session/Session$109;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$109;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 1197
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1198
    return-void
.end method

.method public leaveGroup(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "gid"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1201
    new-instance v0, Lcom/perm/kate/session/Session$110;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$110;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 1206
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1207
    return-void
.end method

.method public makeMainProfilePhoto(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "photo_id"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2143
    new-instance v0, Lcom/perm/kate/session/Session$213;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$213;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 2148
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2149
    return-void
.end method

.method public markAsRead(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$11;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$11;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 276
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 277
    return-void
.end method

.method public markNotificationsAsViewed(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1494
    new-instance v0, Lcom/perm/kate/session/Session$141;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$141;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1499
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1500
    return-void
.end method

.method public messageMarkAsImportant(Ljava/util/Collection;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p2, "important"    # Z
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1801
    .local p1, "message_ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/session/Session$175;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$175;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Z)V

    .line 1806
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1807
    return-void
.end method

.method public movePhoto(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "target_album_id"    # J
    .param p4, "photo_id"    # J
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1891
    new-instance v1, Lcom/perm/kate/session/Session$185;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/session/Session$185;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJ)V

    .line 1896
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1897
    return-void
.end method

.method public movePhotos(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p2, "target_album_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/IdsPair;",
            ">;J",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2498
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    new-instance v1, Lcom/perm/kate/session/Session$250;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$250;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;J)V

    .line 2503
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2504
    return-void
.end method

.method public moveToAudioAlbum(Ljava/util/Collection;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p2, "album_id"    # J
    .param p4, "gid"    # Ljava/lang/Long;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p1, "aids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v1, Lcom/perm/kate/session/Session$150;

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/session/Session$150;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;JLjava/lang/Long;)V

    .line 1580
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1581
    return-void
.end method

.method public newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "item_id"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1611
    new-instance v0, Lcom/perm/kate/session/Session$154;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$154;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1616
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1617
    return-void
.end method

.method public photoCopy(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "photo_id"    # J
    .param p5, "access_key"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1692
    new-instance v0, Lcom/perm/kate/session/Session$163;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$163;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V

    .line 1697
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1698
    return-void
.end method

.method public photoEdit(Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "pid"    # J
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1449
    new-instance v1, Lcom/perm/kate/session/Session$136;

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/session/Session$136;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/String;)V

    .line 1454
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1455
    return-void
.end method

.method public photosGetChatUploadServer(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "chat_id"    # J
    .param p3, "crop_x"    # Ljava/lang/Integer;
    .param p4, "crop_y"    # Ljava/lang/Integer;
    .param p5, "crop_width"    # Ljava/lang/Integer;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1927
    new-instance v0, Lcom/perm/kate/session/Session$189;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$189;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1932
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1933
    return-void
.end method

.method public photosGetMessagesUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 630
    new-instance v0, Lcom/perm/kate/session/Session$50;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$50;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 635
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 636
    return-void
.end method

.method public photosGetOwnerPhotoUploadServer(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 639
    new-instance v0, Lcom/perm/kate/session/Session$51;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$51;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 644
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 645
    return-void
.end method

.method public photosGetUploadServer(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "album_id"    # J
    .param p3, "group_id"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 603
    new-instance v0, Lcom/perm/kate/session/Session$47;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$47;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;)V

    .line 608
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 609
    return-void
.end method

.method public photosGetWallUploadServer(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "group_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 612
    new-instance v0, Lcom/perm/kate/session/Session$48;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$48;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 617
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 618
    return-void
.end method

.method public photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photos_list"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/Long;
    .param p4, "group_id"    # Ljava/lang/Long;
    .param p5, "hash"    # Ljava/lang/String;
    .param p6, "caption"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 648
    new-instance v0, Lcom/perm/kate/session/Session$52;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$52;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 654
    return-void
.end method

.method public pinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1900
    new-instance v1, Lcom/perm/kate/session/Session$186;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$186;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 1905
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1906
    return-void
.end method

.method public putPhotoTag(Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "ptag"    # Lcom/perm/kate/api/PhotoTag;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1102
    new-instance v0, Lcom/perm/kate/session/Session$99;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$99;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Lcom/perm/kate/api/PhotoTag;)V

    .line 1107
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1108
    return-void
.end method

.method public removePhotoTag(Ljava/lang/Long;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "photo_id"    # J
    .param p4, "tag_id"    # J
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2243
    new-instance v1, Lcom/perm/kate/session/Session$224;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/session/Session$224;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJ)V

    .line 2248
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2249
    return-void
.end method

.method public removeUserFromChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "chat_id"    # J
    .param p3, "uid"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1350
    new-instance v0, Lcom/perm/kate/session/Session$125;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$125;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 1355
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1356
    return-void
.end method

.method public removeUserFromGroup(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2426
    new-instance v0, Lcom/perm/kate/session/Session$242;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$242;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V

    .line 2431
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2432
    return-void
.end method

.method public removeVideoFromAlbum(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "target_id"    # J
    .param p3, "album_id"    # J
    .param p5, "vid"    # Ljava/lang/Long;
    .param p6, "oid"    # Ljava/lang/Long;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2044
    new-instance v0, Lcom/perm/kate/session/Session$202;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$202;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;)V

    .line 2049
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2050
    return-void
.end method

.method public removeWallPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "wallOwnerId"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 811
    new-instance v1, Lcom/perm/kate/session/Session$69;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$69;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 817
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 818
    return-void
.end method

.method public reportMarketComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2336
    new-instance v0, Lcom/perm/kate/session/Session$232;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$232;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 2341
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2342
    return-void
.end method

.method public reportPhoto(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "photo_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1864
    new-instance v0, Lcom/perm/kate/session/Session$182;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$182;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 1869
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1870
    return-void
.end method

.method public reportPhotoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1873
    new-instance v0, Lcom/perm/kate/session/Session$183;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$183;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 1878
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1879
    return-void
.end method

.method public reportPost(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1828
    new-instance v0, Lcom/perm/kate/session/Session$178;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$178;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 1833
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1834
    return-void
.end method

.method public reportPostComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1837
    new-instance v0, Lcom/perm/kate/session/Session$179;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$179;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 1842
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1843
    return-void
.end method

.method public reportUser(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "user_id"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1882
    new-instance v0, Lcom/perm/kate/session/Session$184;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$184;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 1887
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1888
    return-void
.end method

.method public reportVideo(JJILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "search_query"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1846
    new-instance v0, Lcom/perm/kate/session/Session$180;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$180;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJILjava/lang/String;Ljava/lang/String;)V

    .line 1851
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1852
    return-void
.end method

.method public reportVideoComment(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1855
    new-instance v0, Lcom/perm/kate/session/Session$181;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$181;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJI)V

    .line 1860
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1861
    return-void
.end method

.method public repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 729
    new-instance v0, Lcom/perm/kate/session/Session$60;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$60;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 735
    return-void
.end method

.method public resolveScreenName(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1728
    new-instance v0, Lcom/perm/kate/session/Session$167;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$167;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1733
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1734
    return-void
.end method

.method public saveAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "audio"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 666
    new-instance v0, Lcom/perm/kate/session/Session$54;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$54;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 672
    return-void
.end method

.method public saveDoc(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1476
    new-instance v0, Lcom/perm/kate/session/Session$139;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$139;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1481
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1482
    return-void
.end method

.method public saveMessagesPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 675
    new-instance v0, Lcom/perm/kate/session/Session$55;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$55;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 681
    return-void
.end method

.method public saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 684
    new-instance v0, Lcom/perm/kate/session/Session$56;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$56;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 690
    return-void
.end method

.method public saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 17
    .param p1, "first_name"    # Ljava/lang/String;
    .param p2, "last_name"    # Ljava/lang/String;
    .param p3, "maiden_name"    # Ljava/lang/String;
    .param p4, "cancel_request_id"    # Ljava/lang/Long;
    .param p5, "sex"    # Ljava/lang/Integer;
    .param p6, "relation"    # Ljava/lang/Integer;
    .param p7, "relation_partner_id"    # Ljava/lang/Long;
    .param p8, "bdate"    # Ljava/lang/String;
    .param p9, "bdate_visibility"    # Ljava/lang/Integer;
    .param p10, "home_town"    # Ljava/lang/String;
    .param p11, "country_id"    # Ljava/lang/Integer;
    .param p12, "city_id"    # Ljava/lang/Integer;
    .param p13, "callback"    # Lcom/perm/kate/session/Callback;
    .param p14, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1747
    new-instance v1, Lcom/perm/kate/session/Session$169;

    move-object/from16 v2, p0

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    invoke-direct/range {v1 .. v16}, Lcom/perm/kate/session/Session$169;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1752
    .local v1, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1753
    return-void
.end method

.method public saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "privacy_view"    # Ljava/lang/String;
    .param p5, "privacy_comment"    # Ljava/lang/String;
    .param p6, "is_private"    # Z
    .param p7, "link"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1075
    new-instance v0, Lcom/perm/kate/session/Session$96;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$96;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1080
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1081
    return-void
.end method

.method public saveWallPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 9
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/Long;
    .param p5, "group_id"    # Ljava/lang/Long;
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 657
    new-instance v0, Lcom/perm/kate/session/Session$53;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/session/Session$53;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 662
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 663
    return-void
.end method

.method public searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "sort"    # Ljava/lang/String;
    .param p3, "lyrics"    # Ljava/lang/String;
    .param p4, "performer_only"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Long;
    .param p6, "offset"    # Ljava/lang/Long;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 747
    new-instance v0, Lcom/perm/kate/session/Session$62;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$62;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 752
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 753
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1602
    new-instance v0, Lcom/perm/kate/session/Session$153;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$153;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1607
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1608
    return-void
.end method

.method public searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2363
    new-instance v0, Lcom/perm/kate/session/Session$235;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$235;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2368
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2369
    return-void
.end method

.method public searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Long;
    .param p4, "fields"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/perm/kate/session/Callback;
    .param p6, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1210
    new-instance v0, Lcom/perm/kate/session/Session$111;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/session/Session$111;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1215
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1216
    return-void
.end method

.method public searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 10
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "peer_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "preview_length"    # Ljava/lang/Integer;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1593
    new-instance v0, Lcom/perm/kate/session/Session$152;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/perm/kate/session/Session$152;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;)V

    .line 1598
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1599
    return-void
.end method

.method public searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 18
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "extended"    # I
    .param p4, "start_time"    # Ljava/lang/Long;
    .param p5, "end_time"    # Ljava/lang/Long;
    .param p6, "count"    # J
    .param p8, "latitude"    # D
    .param p10, "longitude"    # D
    .param p12, "callback"    # Lcom/perm/kate/session/Callback;
    .param p13, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1656
    new-instance v3, Lcom/perm/kate/session/Session$159;

    move-object/from16 v4, p0

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    invoke-direct/range {v3 .. v17}, Lcom/perm/kate/session/Session$159;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDD)V

    .line 1661
    .local v3, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1662
    return-void
.end method

.method public searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 34
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Long;
    .param p5, "sort"    # Ljava/lang/Integer;
    .param p6, "city"    # Ljava/lang/Integer;
    .param p7, "country"    # Ljava/lang/Integer;
    .param p8, "hometown"    # Ljava/lang/String;
    .param p9, "university_country"    # Ljava/lang/Integer;
    .param p10, "university"    # Ljava/lang/Integer;
    .param p11, "university_year"    # Ljava/lang/Integer;
    .param p12, "sex"    # Ljava/lang/Integer;
    .param p13, "status"    # Ljava/lang/Integer;
    .param p14, "age_from"    # Ljava/lang/Integer;
    .param p15, "age_to"    # Ljava/lang/Integer;
    .param p16, "birth_day"    # Ljava/lang/Integer;
    .param p17, "birth_month"    # Ljava/lang/Integer;
    .param p18, "birth_year"    # Ljava/lang/Integer;
    .param p19, "online"    # Ljava/lang/Integer;
    .param p20, "has_photo"    # Ljava/lang/Integer;
    .param p21, "school_country"    # Ljava/lang/Integer;
    .param p22, "school_city"    # Ljava/lang/Integer;
    .param p23, "school"    # Ljava/lang/Integer;
    .param p24, "school_year"    # Ljava/lang/Integer;
    .param p25, "religion"    # Ljava/lang/String;
    .param p26, "interests"    # Ljava/lang/String;
    .param p27, "company"    # Ljava/lang/String;
    .param p28, "position"    # Ljava/lang/String;
    .param p29, "gid"    # Ljava/lang/Long;
    .param p30, "callback"    # Lcom/perm/kate/session/Callback;
    .param p31, "activity"    # Landroid/app/Activity;

    .prologue
    .line 874
    new-instance v1, Lcom/perm/kate/session/Session$75;

    move-object/from16 v2, p0

    move-object/from16 v3, p30

    move-object/from16 v4, p31

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    move-object/from16 v26, p22

    move-object/from16 v27, p23

    move-object/from16 v28, p24

    move-object/from16 v29, p25

    move-object/from16 v30, p26

    move-object/from16 v31, p27

    move-object/from16 v32, p28

    move-object/from16 v33, p29

    invoke-direct/range {v1 .. v33}, Lcom/perm/kate/session/Session$75;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 883
    .local v1, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 884
    return-void
.end method

.method public searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 34
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Long;
    .param p5, "sort"    # Ljava/lang/Integer;
    .param p6, "city"    # Ljava/lang/Integer;
    .param p7, "country"    # Ljava/lang/Integer;
    .param p8, "hometown"    # Ljava/lang/String;
    .param p9, "university_country"    # Ljava/lang/Integer;
    .param p10, "university"    # Ljava/lang/Integer;
    .param p11, "university_year"    # Ljava/lang/Integer;
    .param p12, "sex"    # Ljava/lang/Integer;
    .param p13, "status"    # Ljava/lang/Integer;
    .param p14, "age_from"    # Ljava/lang/Integer;
    .param p15, "age_to"    # Ljava/lang/Integer;
    .param p16, "birth_day"    # Ljava/lang/Integer;
    .param p17, "birth_month"    # Ljava/lang/Integer;
    .param p18, "birth_year"    # Ljava/lang/Integer;
    .param p19, "online"    # Ljava/lang/Integer;
    .param p20, "has_photo"    # Ljava/lang/Integer;
    .param p21, "school_country"    # Ljava/lang/Integer;
    .param p22, "school_city"    # Ljava/lang/Integer;
    .param p23, "school"    # Ljava/lang/Integer;
    .param p24, "school_year"    # Ljava/lang/Integer;
    .param p25, "religion"    # Ljava/lang/String;
    .param p26, "interests"    # Ljava/lang/String;
    .param p27, "company"    # Ljava/lang/String;
    .param p28, "position"    # Ljava/lang/String;
    .param p29, "gid"    # Ljava/lang/Long;
    .param p30, "callback"    # Lcom/perm/kate/session/Callback;
    .param p31, "activity"    # Landroid/app/Activity;

    .prologue
    .line 891
    new-instance v1, Lcom/perm/kate/session/Session$76;

    move-object/from16 v2, p0

    move-object/from16 v3, p30

    move-object/from16 v4, p31

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    move-object/from16 v26, p22

    move-object/from16 v27, p23

    move-object/from16 v28, p24

    move-object/from16 v29, p25

    move-object/from16 v30, p26

    move-object/from16 v31, p27

    move-object/from16 v32, p28

    move-object/from16 v33, p29

    invoke-direct/range {v1 .. v33}, Lcom/perm/kate/session/Session$76;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    .local v1, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 901
    return-void
.end method

.method public searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 11
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "sort"    # Ljava/lang/Integer;
    .param p3, "hd"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Long;
    .param p5, "offset"    # Ljava/lang/Long;
    .param p6, "adult"    # Ljava/lang/Integer;
    .param p7, "filters"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 861
    new-instance v0, Lcom/perm/kate/session/Session$74;

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/session/Session$74;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 866
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 867
    return-void
.end method

.method public searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 13
    .param p1, "owner_id"    # J
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "owners_only"    # Ljava/lang/Integer;
    .param p6, "count"    # I
    .param p7, "offset"    # I
    .param p8, "extended"    # Ljava/lang/Integer;
    .param p9, "callback"    # Lcom/perm/kate/session/Callback;
    .param p10, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1810
    new-instance v0, Lcom/perm/kate/session/Session$176;

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

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/session/Session$176;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;)V

    .line 1815
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1816
    return-void
.end method

.method public sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 18
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "chat_id"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p9, "lat"    # Ljava/lang/String;
    .param p10, "lon"    # Ljava/lang/String;
    .param p11, "sticker_id"    # Ljava/lang/Integer;
    .param p12, "callback"    # Lcom/perm/kate/session/Callback;
    .param p13, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/perm/kate/session/Callback;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p7, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "forward_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Lcom/perm/kate/session/Session$10;

    move-object/from16 v4, p0

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-direct/range {v3 .. v17}, Lcom/perm/kate/session/Session$10;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    .local v3, "command":Lcom/perm/kate/session/Command;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 268
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iput-object p1, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v0, p1}, Lcom/perm/kate/api/Api;->setAccessToken(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setChatPhoto(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1936
    new-instance v0, Lcom/perm/kate/session/Session$190;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$190;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1941
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1942
    return-void
.end method

.method public setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "chat_id"    # Ljava/lang/Long;
    .param p3, "typing"    # Z
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1431
    new-instance v0, Lcom/perm/kate/session/Session$134;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/session/Session$134;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Z)V

    .line 1436
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1437
    return-void
.end method

.method public setOffline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1701
    new-instance v0, Lcom/perm/kate/session/Session$164;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$164;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1706
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1707
    return-void
.end method

.method public setOnline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 940
    new-instance v0, Lcom/perm/kate/session/Session$81;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/session/Session$81;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 945
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 946
    return-void
.end method

.method public setPrivacySettings(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2179
    new-instance v0, Lcom/perm/kate/session/Session$217;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$217;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2185
    return-void
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 6
    .param p1, "status_text"    # Ljava/lang/String;
    .param p2, "group_id"    # Ljava/lang/Long;
    .param p3, "callback"    # Lcom/perm/kate/session/Callback;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 298
    new-instance v0, Lcom/perm/kate/session/Session$14;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/session/Session$14;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 304
    return-void
.end method

.method public unpinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # J
    .param p4, "callback"    # Lcom/perm/kate/session/Callback;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1909
    new-instance v1, Lcom/perm/kate/session/Session$187;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/session/Session$187;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V

    .line 1914
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1915
    return-void
.end method

.method public unregisterDevice(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 1
    .param p1, "device_id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1233
    new-instance v0, Lcom/perm/kate/session/Session$112;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/perm/kate/session/Session$112;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1238
    .local v0, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v0}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 1239
    return-void
.end method

.method public videoAddToAlbum(Ljava/lang/Long;JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12
    .param p1, "target_id"    # Ljava/lang/Long;
    .param p2, "album_id"    # J
    .param p4, "owner_id"    # J
    .param p6, "video_id"    # J
    .param p8, "callback"    # Lcom/perm/kate/session/Callback;
    .param p9, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2125
    new-instance v1, Lcom/perm/kate/session/Session$211;

    move-object v2, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v1 .. v11}, Lcom/perm/kate/session/Session$211;-><init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JJJ)V

    .line 2130
    .local v1, "command":Lcom/perm/kate/session/Command;
    invoke-direct {p0, v1}, Lcom/perm/kate/session/Session;->execute(Lcom/perm/kate/session/Command;)V

    .line 2131
    return-void
.end method
