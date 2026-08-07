.class public Lcom/perm/kate/KApplication;
.super Landroid/app/Application;
.source "KApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/KApplication$NullHostNameVerifier;
    }
.end annotation


# static fields
.field public static LEFT_PANE_NEWS_MAX_WIDTH:I

.field public static LEFT_PANE_NEWS_MIN_WIDTH:I

.field public static LEFT_PANE_PROFILE_MAX_WIDTH:I

.field public static LEFT_PANE_PROFILE_MIN_WIDTH:I

.field public static accountManager:Lcom/perm/kate/account/AccountManager;

.field public static adConfig:Lcom/perm/kate/ads/AdConfig;

.field private static adListener:Lcom/perm/ads/Listener;

.field static callback_groups:Lcom/perm/kate/session/Callback;

.field static callback_profiles:Lcom/perm/kate/session/Callback;

.field public static chat_in_dialog:J

.field public static current:Landroid/app/Application;

.field public static db:Lcom/perm/kate/db/DataHelper;

.field static group_sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/perm/kate/session/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static imageLoader:Lcom/perm/kate/ImageLoader;

.field public static isHoneycomb:Z

.field public static isTablet:Z

.field public static isTabletUi:Z

.field public static is_dev:Z

.field public static is_music_restricted:Z

.field public static is_pro:Z

.field public static longPoll:Lcom/perm/kate/LongPoll;

.field public static newMessageCounter:Lcom/perm/kate/Counter;

.field public static online:Lcom/perm/kate/Online;

.field public static screenSize:I

.field public static session:Lcom/perm/kate/session/Session;

.field public static sessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/session/Session;",
            ">;"
        }
    .end annotation
.end field

.field public static user_in_dialog:J

.field public static yandex_metrica_inited:Z


# instance fields
.field project_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    new-instance v0, Lcom/perm/kate/LongPoll;

    invoke-direct {v0}, Lcom/perm/kate/LongPoll;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    .line 71
    new-instance v0, Lcom/perm/kate/Online;

    invoke-direct {v0}, Lcom/perm/kate/Online;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    .line 72
    new-instance v0, Lcom/perm/kate/account/AccountManager;

    invoke-direct {v0}, Lcom/perm/kate/account/AccountManager;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    .line 74
    sput-boolean v1, Lcom/perm/kate/KApplication;->isHoneycomb:Z

    .line 75
    sput-boolean v1, Lcom/perm/kate/KApplication;->isTablet:Z

    .line 76
    sput-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    .line 77
    const/4 v0, 0x2

    sput v0, Lcom/perm/kate/KApplication;->screenSize:I

    .line 79
    new-instance v0, Lcom/perm/kate/ads/AdConfig;

    invoke-direct {v0}, Lcom/perm/kate/ads/AdConfig;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->adConfig:Lcom/perm/kate/ads/AdConfig;

    .line 80
    sput-boolean v1, Lcom/perm/kate/KApplication;->is_pro:Z

    .line 81
    sput-boolean v1, Lcom/perm/kate/KApplication;->is_music_restricted:Z

    .line 82
    sput-boolean v1, Lcom/perm/kate/KApplication;->is_dev:Z

    .line 84
    sput-boolean v1, Lcom/perm/kate/KApplication;->yandex_metrica_inited:Z

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    .line 330
    new-instance v0, Lcom/perm/kate/KApplication$1;

    invoke-direct {v0, v2}, Lcom/perm/kate/KApplication$1;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/KApplication;->callback_profiles:Lcom/perm/kate/session/Callback;

    .line 359
    new-instance v0, Lcom/perm/kate/KApplication$2;

    invoke-direct {v0, v2}, Lcom/perm/kate/KApplication$2;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/KApplication;->callback_groups:Lcom/perm/kate/session/Callback;

    .line 444
    new-instance v0, Lcom/perm/kate/KApplication$4;

    invoke-direct {v0}, Lcom/perm/kate/KApplication$4;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->adListener:Lcom/perm/ads/Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 129
    const-string v0, "3"

    iput-object v0, p0, Lcom/perm/kate/KApplication;->project_id:Ljava/lang/String;

    .line 105
    sput-object p0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Jdr98gtU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 107
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    sput-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    .line 108
    return-void
.end method

.method public static addAccount(Lcom/perm/kate/account/Account;)V
    .locals 5
    .param p0, "a"    # Lcom/perm/kate/account/Account;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/KApplication;->removeOldAccountIfExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v1, p0}, Lcom/perm/kate/account/AccountManager;->addAccount(Lcom/perm/kate/account/Account;)V

    .line 371
    new-instance v0, Lcom/perm/kate/session/Session;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v0, v1, p0}, Lcom/perm/kate/session/Session;-><init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V

    .line 372
    .local v0, "s":Lcom/perm/kate/session/Session;
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sput-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 374
    invoke-static {}, Lcom/perm/kate/KApplication;->saveActiveSession()V

    .line 375
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v1, p0}, Lcom/perm/kate/account/AccountManager;->downloadAccountDetails(Lcom/perm/kate/account/Account;)V

    .line 378
    invoke-static {}, Lcom/perm/kate/push/Push;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v4, Lcom/perm/kate/push/PushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 380
    :cond_0
    return-void
.end method

.method public static addGroupToken(Ljava/lang/String;J)V
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "group_id"    # J

    .prologue
    .line 136
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 139
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/perm/kate/KApplication;->createGroupSession(JLjava/lang/String;J)V

    .line 140
    return-void
.end method

.method private chooseDefaultPhotoSize()V
    .locals 8

    .prologue
    .line 257
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 258
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const v4, 0x7f070548

    invoke-virtual {p0, v4}, Lcom/perm/kate/KApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "key":Ljava/lang/String;
    const-string v4, "-1"

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "value":Ljava/lang/String;
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x1000000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 265
    const-string v4, "1"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static createGroupSession(JLjava/lang/String;J)V
    .locals 6
    .param p0, "account_id"    # J
    .param p2, "group_token"    # Ljava/lang/String;
    .param p3, "group_id"    # J

    .prologue
    .line 145
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    .line 146
    .local v0, "ga":Lcom/perm/kate/account/Account;
    iput-object p2, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 149
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    new-instance v3, Lcom/perm/kate/session/Session;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/perm/kate/session/Session;-><init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private enableOkHttp()V
    .locals 4

    .prologue
    .line 494
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-static {}, Lcom/perm/kate/KApplication;->preferIPv4()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 503
    .local v0, "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    new-instance v3, Lcom/perm/kate/KApplication$5;

    invoke-direct {v3, p0}, Lcom/perm/kate/KApplication$5;-><init>(Lcom/perm/kate/KApplication;)V

    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/Internal;->setNetwork(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/Network;)V

    .line 524
    new-instance v2, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-direct {v2, v0}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-static {v2}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    .end local v0    # "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :catch_0
    move-exception v1

    .line 526
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 527
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private enableStrictMode()V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    sget-boolean v1, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 241
    invoke-static {}, Lcom/perm/utils/StrictModeWrapper;->enableDefaults()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private findActiveSession()V
    .locals 6

    .prologue
    .line 288
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 289
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v3, "current_account"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "current_account":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "current_instance"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "current_instance":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 291
    sget-object v3, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 292
    .local v1, "s":Lcom/perm/kate/session/Session;
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    sput-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 297
    .end local v1    # "s":Lcom/perm/kate/session/Session;
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v3, :cond_2

    sget-object v3, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 298
    sget-object v3, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/session/Session;

    sput-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 299
    :cond_2
    return-void
.end method

.method public static getImageLoader()Lcom/perm/kate/ImageLoader;
    .locals 4

    .prologue
    .line 96
    sget-object v1, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/perm/kate/ImageLoader;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/perm/kate/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    .line 98
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v3, 0x7f070532

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/perm/kate/ImageLoader;->download_images:Z

    .line 101
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    return-object v1
.end method

.method public static getMissingGroups(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "groups_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 342
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, p0}, Lcom/perm/kate/db/DataHelper;->fetchGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    .local v0, "groups_in_db":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, "groups_not_in_db":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 348
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v2    # "id":Ljava/lang/Long;
    :cond_1
    const-string v3, "Kate.KApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groups_not_in_db="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v4, Lcom/perm/kate/KApplication;->callback_groups:Lcom/perm/kate/session/Callback;

    invoke-virtual {v3, v1, v8, v4, v8}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 354
    const/4 v3, 0x1

    .line 356
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 311
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0}, Lcom/perm/kate/db/DataHelper;->fetchUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 314
    .local v8, "users_in_db":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v1, "users_not_in_db":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 317
    .local v7, "id":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-gtz v4, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget v6, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v10, v6

    cmp-long v4, v4, v10

    if-gez v4, :cond_0

    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v7    # "id":Ljava/lang/Long;
    :cond_2
    const-string v0, "Kate.KApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "users_not_in_db="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    const-string v3, "uid,first_name,last_name,nickname,photo_100"

    .line 324
    .local v3, "fields":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v4, "nom"

    sget-object v5, Lcom/perm/kate/KApplication;->callback_profiles:Lcom/perm/kate/session/Callback;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 325
    const/4 v0, 0x1

    .line 327
    .end local v3    # "fields":Ljava/lang/String;
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSession(J)Lcom/perm/kate/session/Session;
    .locals 4
    .param p0, "group_id"    # J

    .prologue
    .line 155
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    .line 156
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 158
    :goto_0
    return-object v1

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    goto :goto_0
.end method

.method public static getSessionsWithoutPush()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/session/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 433
    .local v1, "s":Lcom/perm/kate/session/Session;
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v2

    iget-boolean v2, v2, Lcom/perm/kate/account/Account;->push_registered:Z

    if-nez v2, :cond_0

    .line 434
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static initIsTabletUi()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 250
    sget-boolean v0, Lcom/perm/kate/KApplication;->isHoneycomb:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    .line 252
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "key_force_phone_ui"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sput-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    .line 254
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method private initLeftPanesWidths()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0xfa

    const/16 v3, 0x82

    const/16 v2, 0x78

    const/4 v1, 0x4

    .line 111
    sget v0, Lcom/perm/kate/KApplication;->screenSize:I

    if-lt v0, v1, :cond_0

    .line 112
    sput v3, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    .line 113
    sput v5, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MAX_WIDTH:I

    .line 120
    :goto_0
    sget v0, Lcom/perm/kate/KApplication;->screenSize:I

    if-lt v0, v1, :cond_1

    .line 121
    sput v3, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    .line 122
    sput v5, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MAX_WIDTH:I

    .line 127
    :goto_1
    return-void

    .line 115
    :cond_0
    sput v2, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    .line 116
    sput v4, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MAX_WIDTH:I

    goto :goto_0

    .line 124
    :cond_1
    sput v2, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    .line 125
    sput v4, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MAX_WIDTH:I

    goto :goto_1
.end method

.method static initYandexMetrica()V
    .locals 3

    .prologue
    .line 474
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 486
    .local v0, "th":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 477
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "08a4d03d-78aa-4505-aa70-51753d4bf666"

    invoke-static {v1, v2}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x1

    sput-boolean v1, Lcom/perm/kate/KApplication;->yandex_metrica_inited:Z

    .line 479
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yandex/metrica/YandexMetrica;->setReportCrashesEnabled(Z)V

    .line 480
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yandex/metrica/YandexMetrica;->setReportNativeCrashesEnabled(Z)V

    .line 481
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yandex/metrica/YandexMetrica;->setTrackLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static isPackageNew()Z
    .locals 2

    .prologue
    .line 465
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "name":Ljava/lang/String;
    const-string v1, "_new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x1

    .line 468
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPackagePro()Z
    .locals 2

    .prologue
    .line 458
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const/4 v1, 0x1

    .line 461
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTwoPaneMessages()Z
    .locals 2

    .prologue
    .line 441
    sget-boolean v0, Lcom/perm/kate/KApplication;->isHoneycomb:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/perm/kate/KApplication;->screenSize:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static preferIPv4()Z
    .locals 3

    .prologue
    .line 532
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ipv4"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static removeGroupSessions(Ljava/lang/String;)V
    .locals 4
    .param p0, "account_id"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v1, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "x":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    sget-object v2, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "x":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static removeOldAccountIfExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v4, v4, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 385
    sget-object v4, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v4, v4, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 386
    .local v0, "a":Lcom/perm/kate/account/Account;
    iget-object v4, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .local v0, "a":Lcom/perm/kate/account/Account;
    iget-object v4, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    sget-object v4, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/session/Session;

    .line 390
    .local v2, "s":Lcom/perm/kate/session/Session;
    new-instance v4, Lcom/perm/kate/KApplication$3;

    invoke-direct {v4, v2}, Lcom/perm/kate/KApplication$3;-><init>(Lcom/perm/kate/session/Session;)V

    .line 395
    invoke-virtual {v4}, Lcom/perm/kate/KApplication$3;->start()V

    .line 397
    sget-object v4, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v4, v4, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    sget-object v4, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    .end local v2    # "s":Lcom/perm/kate/session/Session;
    :cond_0
    :goto_1
    return-void

    .line 384
    .restart local v0    # "a":Lcom/perm/kate/account/Account;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    :catch_0
    move-exception v3

    .line 403
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static saveActiveSession()V
    .locals 4

    .prologue
    .line 409
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 410
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v2, :cond_0

    .line 412
    const-string v2, "current_account"

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "current_instance"

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    return-void
.end method

.method private startPushService()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/perm/kate/push/Push;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 280
    sget-object v0, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/perm/kate/KApplication;->getSessionsWithoutPush()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :cond_2
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->startService(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method disableSSLValidation()V
    .locals 7

    .prologue
    .line 537
    :try_start_0
    new-instance v5, Lcom/perm/kate/KApplication$NullHostNameVerifier;

    invoke-direct {v5, p0}, Lcom/perm/kate/KApplication$NullHostNameVerifier;-><init>(Lcom/perm/kate/KApplication;)V

    invoke-static {v5}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 539
    new-instance v4, Lcom/perm/kate/KApplication$6;

    invoke-direct {v4, p0}, Lcom/perm/kate/KApplication$6;-><init>(Lcom/perm/kate/KApplication;)V

    .line 557
    .local v4, "x":Ljavax/net/ssl/X509TrustManager;
    const/4 v5, 0x1

    new-array v3, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 560
    .local v3, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 561
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v5, v3, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 563
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 564
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "x":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 171
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->enableStrictMode()V

    .line 172
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->isPackagePro()Z

    move-result v2

    sput-boolean v2, Lcom/perm/kate/KApplication;->is_pro:Z

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lxhD8O"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/perm/kate/KApplication;->project_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/dynamixsoftware/ErrorAgent;->register(Landroid/content/Context;J)V

    .line 176
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v12, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/perm/kate/KApplication;->disableSSLValidation()V

    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v2, p0}, Lcom/perm/kate/account/AccountManager;->loadAccounts(Landroid/content/Context;)V

    .line 181
    sget-object v2, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v2, v2, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 182
    .local v0, "a":Lcom/perm/kate/account/Account;
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    new-instance v3, Lcom/perm/kate/session/Session;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/session/Session;-><init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, v0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    .local v1, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v2, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v2, v10, v11}, Lcom/perm/kate/KApplication;->createGroupSession(JLjava/lang/String;J)V

    goto :goto_0

    .line 187
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    .end local v1    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->findActiveSession()V
    
    new-instance v2, Lcom/perm/kate/db/DataHelper;

    invoke-direct {v2, p0}, Lcom/perm/kate/db/DataHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 179
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper;->open()V

    .line 188
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->enableOkHttp()V

    .line 199
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v12, :cond_3

    .line 200
    const-string v2, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    :cond_3
    invoke-static {}, Lcom/perm/kate/Helper;->isHoneycomb()Z

    move-result v2

    sput-boolean v2, Lcom/perm/kate/KApplication;->isHoneycomb:Z

    .line 203
    invoke-static {p0}, Lcom/perm/kate/Helper;->getScreenSize(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/perm/kate/KApplication;->screenSize:I

    .line 204
    sget v2, Lcom/perm/kate/KApplication;->screenSize:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    move v2, v4

    :goto_1
    sput-boolean v2, Lcom/perm/kate/KApplication;->isTablet:Z

    .line 207
    invoke-static {}, Lcom/perm/kate/KApplication;->initIsTabletUi()V

    .line 210
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->initLeftPanesWidths()V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070525

    invoke-virtual {p0, v3}, Lcom/perm/kate/KApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Im5IUY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 214
    sget-object v2, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/perm/kate/push/Push;->init()V

    .line 219
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->startPushService()V

    .line 221
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->chooseDefaultPhotoSize()V

    .line 223
    new-instance v2, Lcom/perm/kate/Counter;

    const-string v3, "new_messages"

    invoke-direct {v2, v3}, Lcom/perm/kate/Counter;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    .line 225
    invoke-static {v4}, Lcom/perm/ads/AdView;->setProjectId(I)V

    .line 226
    sget-object v2, Lcom/perm/kate/KApplication;->adListener:Lcom/perm/ads/Listener;

    invoke-static {v2}, Lcom/perm/ads/AdView;->setListener(Lcom/perm/ads/Listener;)V

    .line 229
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->checkAlwaysBlock(Landroid/content/Context;)V

    .line 231
    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 232
    invoke-static {v5}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    .line 234
    invoke-static {}, Lcom/perm/utils/UserAgent;->init()V

    .line 235
    sget-object v2, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    sput-object v2, Lcom/perm/kate/api/Api;->user_agent:Ljava/lang/String;

    .line 236
    return-void

    :cond_4
    move v2, v5

    .line 204
    goto :goto_1
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper;->close()V

    .line 304
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 305
    return-void
.end method
