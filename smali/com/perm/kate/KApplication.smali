.class public Lcom/perm/kate/KApplication;
.super Landroid/app/Application;
.source "KApplication.java"


# static fields
.field public static LEFT_PANE_NEWS_MAX_WIDTH:I

.field public static LEFT_PANE_NEWS_MIN_WIDTH:I

.field public static LEFT_PANE_PROFILE_MAX_WIDTH:I

.field public static LEFT_PANE_PROFILE_MIN_WIDTH:I

.field public static accountManager:Lcom/perm/kate/account/AccountManager;

.field private static audioQueue:Lcom/perm/kate/AudioQueue;

.field static callback_groups:Lcom/perm/kate/session/Callback;

.field static callback_profiles:Lcom/perm/kate/session/Callback;

.field public static chat_in_dialog:J

.field public static current:Landroid/app/Application;

.field public static db:Lcom/perm/kate/db/DataHelper;

.field static group_sessions:Ljava/util/HashMap;

.field private static imageLoader:Lcom/perm/kate/ImageLoader;

.field public static isTablet:Z

.field public static isTabletUi:Z

.field public static is_dev:Z

.field public static is_pro:Z

.field public static longPoll:Lcom/perm/kate/LongPoll;

.field public static mirrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static newMessageCounter:Lcom/perm/kate/Counter;

.field public static online:Lcom/perm/kate/Online;

.field public static screenSize:I

.field public static session:Lcom/perm/kate/session/Session;

.field public static sessions:Ljava/util/ArrayList;

.field public static user_in_dialog:J


# instance fields
.field project_id:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$xFFtCF5c9emDMEO8F6MV6TPGv8E(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perm/kate/KApplication;->lambda$new$0(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/perm/kate/LongPoll;

    invoke-direct {v0}, Lcom/perm/kate/LongPoll;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    .line 70
    new-instance v0, Lcom/perm/kate/Online;

    invoke-direct {v0}, Lcom/perm/kate/Online;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    .line 71
    new-instance v0, Lcom/perm/kate/account/AccountManager;

    invoke-direct {v0}, Lcom/perm/kate/account/AccountManager;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    .line 74
    sput-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    const/4 v1, 0x2

    .line 75
    sput v1, Lcom/perm/kate/KApplication;->screenSize:I

    .line 77
    sput-boolean v0, Lcom/perm/kate/KApplication;->is_pro:Z

    .line 78
    sput-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    .line 344
    new-instance v0, Lcom/perm/kate/KApplication$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perm/kate/KApplication$1;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/KApplication;->callback_profiles:Lcom/perm/kate/session/Callback;

    .line 373
    new-instance v0, Lcom/perm/kate/KApplication$2;

    invoke-direct {v0, v1}, Lcom/perm/kate/KApplication$2;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/KApplication;->callback_groups:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "3"

    .line 133
    iput-object v0, p0, Lcom/perm/kate/KApplication;->project_id:Ljava/lang/String;

    .line 108
    sput-object p0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Jdr98gtU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 110
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    sput-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    .line 111
    sget-object v0, Lcom/perm/kate/KApplication$$ExternalSyntheticLambda0;->INSTANCE:Lcom/perm/kate/KApplication$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lcom/perm/utils/ErrorReporter;->setCallback(Lcom/perm/utils/ErrorReporter$CallBack;)V

    return-void
.end method

.method public static addAccount(Lcom/perm/kate/account/Account;)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->removeOldAccountIfExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0, p0}, Lcom/perm/kate/account/AccountManager;->addAccount(Lcom/perm/kate/account/Account;)V

    .line 385
    new-instance v0, Lcom/perm/kate/session/Session;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v0, v1, p0}, Lcom/perm/kate/session/Session;-><init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V

    .line 386
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sput-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 388
    invoke-static {}, Lcom/perm/kate/KApplication;->saveActiveSession()V

    .line 389
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0, p0}, Lcom/perm/kate/account/AccountManager;->downloadAccountDetails(Lcom/perm/kate/account/Account;)V

    .line 392
    invoke-static {}, Lcom/perm/kate/push/Push;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 393
    sget-object p0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v2, Lcom/perm/kate/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static addGroupToken(Ljava/lang/String;J)V
    .locals 2

    .line 140
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 143
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/perm/kate/KApplication;->createGroupSession(JLjava/lang/String;J)V

    return-void
.end method

.method private chooseDefaultPhotoSize()V
    .locals 7

    .line 275
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0173

    .line 276
    invoke-virtual {p0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 277
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x1000000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const-string v2, "1"

    .line 283
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static createGroupSession(JLjava/lang/String;J)V
    .locals 1

    .line 149
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    .line 150
    iput-object p2, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 153
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    sget-object p1, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    new-instance p2, Lcom/perm/kate/session/Session;

    const/4 p3, 0x0

    invoke-direct {p2, p3, v0}, Lcom/perm/kate/session/Session;-><init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private enableStrictMode()V
    .locals 4

    .line 235
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_dev:Z

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 240
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 242
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    :cond_1
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 246
    :cond_2
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 249
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 250
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 252
    sget-boolean v3, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v3, :cond_3

    .line 253
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_3
    if-lt v1, v2, :cond_4

    .line 256
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_4
    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    .line 258
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 259
    :cond_5
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 264
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method private findActiveSession()V
    .locals 6

    .line 302
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_account"

    const/4 v2, 0x0

    .line 303
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "current_instance"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    if-eqz v0, :cond_1

    .line 305
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/session/Session;

    .line 306
    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    sput-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 311
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_2

    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 312
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/session/Session;

    sput-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    :cond_2
    return-void
.end method

.method public static getAudioQueue()Lcom/perm/kate/AudioQueue;
    .locals 1

    .line 102
    sget-object v0, Lcom/perm/kate/KApplication;->audioQueue:Lcom/perm/kate/AudioQueue;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/perm/kate/AudioQueue;

    invoke-direct {v0}, Lcom/perm/kate/AudioQueue;-><init>()V

    sput-object v0, Lcom/perm/kate/KApplication;->audioQueue:Lcom/perm/kate/AudioQueue;

    .line 104
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->audioQueue:Lcom/perm/kate/AudioQueue;

    return-object v0
.end method

.method public static getImageLoader()Lcom/perm/kate/ImageLoader;
    .locals 4

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/perm/kate/ImageLoader;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/perm/kate/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    .line 95
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v3, 0x7f0f0164

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/perm/kate/ImageLoader;->download_images:Z

    .line 98
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->imageLoader:Lcom/perm/kate/ImageLoader;

    return-object v0
.end method

.method public static getMissingGroups(Ljava/util/ArrayList;)Z
    .locals 8

    .line 356
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0}, Lcom/perm/kate/db/DataHelper;->fetchGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 362
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "groups_not_in_db="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Kate.KApplication"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_2

    .line 367
    sget-object p0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v0, Lcom/perm/kate/KApplication;->callback_groups:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)Z
    .locals 8

    .line 325
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p0}, Lcom/perm/kate/db/DataHelper;->fetchUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget v5, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "users_not_in_db="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Kate.KApplication"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_3

    .line 338
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v3, 0x0

    sget-object v6, Lcom/perm/kate/KApplication;->callback_profiles:Lcom/perm/kate/session/Callback;

    const/4 v7, 0x0

    const-string v4, "uid,first_name,last_name,nickname,photo_100"

    const-string v5, "nom"

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstanceUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_fallback

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    if-eqz v1, :cond_fallback

    invoke-virtual {v1}, Lcom/perm/kate/api/Api;->getInstanceUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_fallback
    const-string v0, "https://api.openvk.org/"

    return-object v0
.end method

.method public static instanceLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSession(J)Lcom/perm/kate/session/Session;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 160
    sget-object p0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    return-object p0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    sget-object p1, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/session/Session;

    return-object p0
.end method

.method public static getSessionsWithoutPush()Ljava/util/ArrayList;
    .locals 3

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 446
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/session/Session;

    .line 447
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v2

    iget-boolean v2, v2, Lcom/perm/kate/account/Account;->push_registered:Z

    if-nez v2, :cond_1

    .line 448
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static initIsTabletUi()V
    .locals 3

    .line 268
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    sput-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    .line 270
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_force_phone_ui"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sput-boolean v2, Lcom/perm/kate/KApplication;->isTabletUi:Z

    :cond_0
    return-void
.end method

.method private initLeftPanesWidths()V
    .locals 6

    .line 115
    sget v0, Lcom/perm/kate/KApplication;->screenSize:I

    const/16 v1, 0x12c

    const/16 v2, 0x82

    const/16 v3, 0xfa

    const/16 v4, 0x78

    const/4 v5, 0x4

    if-lt v0, v5, :cond_0

    .line 116
    sput v2, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    .line 117
    sput v1, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MAX_WIDTH:I

    goto :goto_0

    .line 119
    :cond_0
    sput v4, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    .line 120
    sput v3, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MAX_WIDTH:I

    :goto_0
    if-lt v0, v5, :cond_1

    .line 125
    sput v2, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    .line 126
    sput v1, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MAX_WIDTH:I

    goto :goto_1

    .line 128
    :cond_1
    sput v4, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    .line 129
    sput v3, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MAX_WIDTH:I

    :goto_1
    return-void
.end method

.method public static isPackageNew()Z
    .locals 2

    .line 481
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_new_6"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPackagePro()Z
    .locals 2

    .line 474
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pro"

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isPackagePro(Landroid/content/Context;)Z
    .locals 1

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pro"

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTwoPaneMessages()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 455
    sget v0, Lcom/perm/kate/KApplication;->screenSize:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 0

    .line 111
    invoke-static {p0, p1, p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method static removeGroupSessions(Ljava/lang/String;)V
    .locals 4

    .line 166
    sget-object v0, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static removeOldAccountIfExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 398
    :goto_0
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/account/Account;

    .line 400
    iget-object v2, v1, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    sget-object p0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/session/Session;

    .line 404
    new-instance v1, Lcom/perm/kate/KApplication$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/KApplication$3;-><init>(Lcom/perm/kate/session/Session;)V

    .line 409
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 411
    sget-object p0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object p0, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 412
    sget-object p0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 418
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static saveActiveSession()V
    .locals 3

    .line 423
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v1, "current_account"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v1, "current_instance"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/perm/utils/MirrorsHelper;->refresh()V

    return-void
.end method

.method private startPushService()V
    .locals 1

    .line 290
    invoke-static {}, Lcom/perm/kate/push/Push;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    sget-object v0, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/perm/kate/KApplication;->getSessionsWithoutPush()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 298
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/push/PushService;->startService(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .line 174
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->enableStrictMode()V

    .line 175
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 177
    iget-object v0, p0, Lcom/perm/kate/KApplication;->project_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/dynamixsoftware/ErrorAgent;->register(Landroid/content/Context;J)V

    .line 178
    invoke-static {}, Lcom/perm/utils/ProxyManager;->putProxyToApi()V

    .line 179
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->isPackagePro()Z

    move-result v0

    sput-boolean v0, Lcom/perm/kate/KApplication;->is_pro:Z

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lxhD8O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0, p0}, Lcom/perm/kate/account/AccountManager;->loadAccounts(Landroid/content/Context;)V

    .line 190
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/account/Account;

    .line 191
    sget-object v2, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    new-instance v3, Lcom/perm/kate/session/Session;

    invoke-direct {v3, p0, v1}, Lcom/perm/kate/session/Session;-><init>(Landroid/content/Context;Lcom/perm/kate/account/Account;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, v1, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 193
    iget-object v4, v1, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v5, v6, v7, v8}, Lcom/perm/kate/KApplication;->createGroupSession(JLjava/lang/String;J)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->findActiveSession()V

    invoke-static {}, Lcom/perm/utils/MirrorsHelper;->refresh()V

    .line 184
    new-instance v0, Lcom/perm/kate/db/DataHelper;

    invoke-direct {v0, p0}, Lcom/perm/kate/db/DataHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 185
    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper;->open()V

    .line 188
    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper;->setPragmaSync()V

    .line 198
    invoke-static {p0}, Lcom/perm/kate/Helper;->getScreenSize(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/perm/kate/KApplication;->screenSize:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 199
    :goto_1
    sput-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    .line 202
    invoke-static {}, Lcom/perm/kate/KApplication;->initIsTabletUi()V

    .line 205
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->initLeftPanesWidths()V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0359

    invoke-virtual {p0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Im5IUY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    const/16 v1, 0x1c

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/KateConstants;->tmp:Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/perm/kate/push/Push;->init()V

    .line 214
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->startPushService()V

    .line 216
    invoke-direct {p0}, Lcom/perm/kate/KApplication;->chooseDefaultPhotoSize()V

    .line 218
    new-instance v0, Lcom/perm/kate/Counter;

    const-string v1, "new_messages"

    invoke-direct {v0, v1}, Lcom/perm/kate/Counter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    .line 224
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->checkAlwaysBlock(Landroid/content/Context;)V

    .line 226
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 227
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    .line 229
    invoke-static {}, Lcom/perm/utils/UserAgent;->init()V

    .line 230
    sget-object v0, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    sput-object v0, Lcom/perm/kate/api/Api;->user_agent:Ljava/lang/String;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 317
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper;->close()V

    .line 318
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
