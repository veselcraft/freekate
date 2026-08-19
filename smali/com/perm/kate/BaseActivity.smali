.class public abstract Lcom/perm/kate/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/BaseActivity$TargetingParams;
    }
.end annotation


# static fields
.field public static IsCustomTheme:Z = false

.field public static Theme:I = -0x1

.field private static longPollStopper:Ljava/lang/Runnable; = null

.field private static showMenuButton:Ljava/lang/Boolean; = null

.field private static targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams; = null

.field public static theme_id:Ljava/lang/String; = "11"


# instance fields
.field blocked:Z

.field private fl_refresh_button:Landroid/view/View;

.field protected goHomeOnHeaderClick:Z

.field handler:Landroid/os/Handler;

.field header_flag:Z

.field no_translucent_status:Z

.field private pb_header_progress:Landroid/view/View;

.field playerClick:Landroid/view/View$OnClickListener;

.field progressBarRunnable:Ljava/lang/Runnable;

.field refreshState:Z

.field private setupedRefreshButton:Z

.field smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;


# direct methods
.method public static synthetic $r8$lambda$PghZjNDOY1AAZt70JOj--vbroms()V
    .locals 0

    invoke-static {}, Lcom/perm/kate/BaseActivity;->lambda$onStop$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 748
    new-instance v0, Lcom/perm/kate/BaseActivity$1;

    invoke-direct {v0}, Lcom/perm/kate/BaseActivity$1;-><init>()V

    sput-object v0, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    .line 92
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->blocked:Z

    .line 603
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    .line 604
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->header_flag:Z

    const/4 v1, 0x1

    .line 605
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->goHomeOnHeaderClick:Z

    .line 736
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    .line 760
    new-instance v1, Lcom/perm/kate/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$2;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object v1, p0, Lcom/perm/kate/BaseActivity;->progressBarRunnable:Ljava/lang/Runnable;

    .line 1039
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->setupedRefreshButton:Z

    const/4 v0, 0x0

    .line 1040
    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    .line 1151
    new-instance v0, Lcom/perm/kate/BaseActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$9;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->playerClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static GetTheme(Landroid/content/Context;)V
    .locals 3

    .line 535
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    invoke-static {p0}, Lcom/perm/utils/NightThemeHelper;->isNight(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "11"

    if-eqz v1, :cond_1

    const-string v1, "key_night_theme"

    goto :goto_0

    :cond_1
    const-string v1, "key_theme"

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    sput-object v0, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    .line 540
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 541
    invoke-static {v1}, Lcom/perm/kate/BaseActivity;->reportTheme(I)V

    .line 542
    invoke-static {v1}, Lcom/perm/kate/BaseActivity;->GetThemeByValue(I)I

    move-result v1

    sput v1, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 543
    invoke-static {v0, p0}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    return-void
.end method

.method public static GetThemeByValue(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f1000cf

    return p0

    :pswitch_0
    const p0, 0x7f1000df

    return p0

    :pswitch_1
    const p0, 0x7f1000d3

    return p0

    :pswitch_2
    const p0, 0x7f1000cd

    return p0

    :pswitch_3
    const p0, 0x7f1000d7

    return p0

    :pswitch_4
    const p0, 0x7f1000cb

    return p0

    :pswitch_5
    const p0, 0x7f1000c5

    return p0

    :pswitch_6
    const p0, 0x7f1000d5

    return p0

    :pswitch_7
    const p0, 0x7f1000d9

    return p0

    :pswitch_8
    const p0, 0x7f1000d1

    return p0

    :pswitch_9
    const p0, 0x7f1000c9

    return p0

    :pswitch_a
    const p0, 0x7f1000db

    return p0

    :pswitch_b
    const p0, 0x7f1000c7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/perm/kate/BaseActivity;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/perm/kate/BaseActivity;->pb_header_progress:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/BaseActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->pb_header_progress:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->hideRefreshButtonByProgress()V

    return-void
.end method

.method public static displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V
    .locals 1

    .line 772
    new-instance v0, Lcom/perm/kate/BaseActivity$3;

    invoke-direct {v0, p1, p0}, Lcom/perm/kate/BaseActivity$3;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fixNavBarColor()V
    .locals 3

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 166
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G8441"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v2, 0x7f1000df

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v0, :cond_3

    const/high16 v0, -0x35000000    # -8388608.0f

    goto :goto_1

    :cond_3
    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private getBlockFlag()Z
    .locals 1

    .line 526
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static getShowMenuFlag(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;
    .locals 5

    .line 421
    sget-object v0, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    if-eqz v0, :cond_0

    return-object v0

    .line 423
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 425
    :cond_1
    new-instance v0, Lcom/perm/kate/BaseActivity$TargetingParams;

    invoke-direct {v0}, Lcom/perm/kate/BaseActivity$TargetingParams;-><init>()V

    sput-object v0, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    .line 427
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUserTargetingParams(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v1, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    iget-object v1, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/BirthdayHelper;->parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 433
    iget-object v2, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 434
    sget-object v2, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, v1, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    .line 439
    :cond_2
    sget-object v1, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    iget-object v0, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 445
    :cond_3
    :goto_0
    sget-object v0, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    return-object v0
.end method

.method public static goHome(Landroid/app/Activity;)V
    .locals 1

    .line 819
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 820
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static goSearch(Landroid/app/Activity;)V
    .locals 2

    .line 796
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private hideRefreshButtonByProgress()V
    .locals 2

    .line 1042
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->setupedRefreshButton:Z

    if-nez v0, :cond_0

    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 1046
    :cond_1
    iget-boolean v1, p0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$onStop$0()V
    .locals 2

    .line 733
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->saveFileCacheStats(Z)V

    return-void
.end method

.method private static makeDarker(I)I
    .locals 4

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    const v3, 0x3fa66666    # 1.3f

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 1231
    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1234
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return p0
.end method

.method private reportActivityCreate()V
    .locals 5

    .line 174
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    .line 175
    rem-long/2addr v0, v2

    const-wide/32 v2, 0x1869f

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "screen"

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ACTIVITY_CREATE_1"

    .line 179
    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static reportTheme(I)V
    .locals 5

    .line 580
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 581
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "theme"

    .line 584
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "THEME"

    .line 594
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 596
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 597
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static scaleText(Landroid/content/Context;)V
    .locals 2

    .line 897
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0161

    .line 898
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 899
    invoke-static {p0}, Lcom/perm/kate/ScaleTextView;->setGlobalScale(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 901
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 902
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setFullScreen()V
    .locals 3

    .line 187
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_fullscreen"

    const/4 v2, 0x0

    .line 188
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    :cond_1
    return-void
.end method

.method private setHeaderClick()V
    .locals 2

    .line 800
    new-instance v0, Lcom/perm/kate/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$4;-><init>(Lcom/perm/kate/BaseActivity;)V

    const v1, 0x7f0901d7

    .line 806
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f090167

    .line 809
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 811
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static setStatusBarBg(Landroid/app/Activity;)V
    .locals 2

    .line 1210
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    .line 1212
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    return-void

    .line 1214
    :cond_1
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_2

    return-void

    .line 1218
    :cond_2
    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->makeDarker(I)I

    move-result v0

    .line 1219
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private startBlockActivity()V
    .locals 3

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "first_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stopLongpollDelayed()V
    .locals 5

    .line 741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x927c0

    .line 744
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public displayToast(I)V
    .locals 0

    .line 784
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method displayToast(Ljava/lang/CharSequence;)V
    .locals 0

    .line 780
    invoke-static {p1, p0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected hideHomeButton()V
    .locals 3

    const v0, 0x7f0901d7

    .line 1081
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1083
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901d6

    .line 1084
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public newWallPost()V
    .locals 2

    .line 789
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/WallPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onAddButton()V
    .locals 0

    return-void
.end method

.method protected onAlbumsButton()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1370
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1376
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onComposeButton()V
    .locals 0

    .line 1019
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->newWallPost()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 99
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->setFullScreen()V

    .line 112
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->getBlockFlag()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/perm/kate/BaseActivity;->blocked:Z

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 115
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->startBlockActivity()V

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->setStatusBarBg(Landroid/app/Activity;)V

    .line 120
    invoke-static {p0}, Lcom/perm/kate/Helper;->checkTransparentTheme(Landroid/app/Activity;)V

    .line 124
    sget-boolean p1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 125
    invoke-static {p0}, Lcom/perm/utils/TaskDescriptionWrapper;->setTaskDescription(Landroid/app/Activity;)V

    .line 128
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->scaleText(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->reportActivityCreate()V

    .line 132
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 134
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->fixNavBarColor()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 851
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 853
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 854
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 874
    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 881
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected onGoHome()V
    .locals 0

    .line 815
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->goHome(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1177
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->onKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1185
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "Kate.BaseActivity"

    const-string v1, "onLowMemory"

    .line 908
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 910
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 956
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 915
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onSearchButton()V
    .locals 0

    .line 1036
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->goSearch(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 609
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 613
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 614
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    const-string v0, "LRLYCGYV2C3J627J66YD"

    .line 615
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->header_flag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->header_flag:Z

    .line 621
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->goHomeOnHeaderClick:Z

    if-eqz v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->setHeaderClick()V

    .line 627
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->start()V

    .line 628
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 630
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->backgroundStop()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 669
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 670
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 671
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 677
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->checkAlwaysBlock(Landroid/content/Context;)V

    .line 681
    :cond_0
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 682
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    goto :goto_0

    .line 687
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->stopLongpollDelayed()V

    .line 695
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 696
    sput v0, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 700
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->reset()V

    .line 708
    :cond_2
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 709
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 712
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->backgroundStart()V

    .line 714
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_4

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pause"

    .line 716
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 719
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    .line 725
    :cond_4
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 726
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->reportFileCacheEfficiency()V

    .line 729
    :cond_5
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 730
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->saveFileCount()V

    .line 732
    :cond_6
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/perm/kate/ImageLoader;->lastModifiedSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 733
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/perm/kate/BaseActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/perm/kate/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_7
    return-void
.end method

.method public setBgForColorTheme()V
    .locals 2

    .line 1189
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0901d6

    .line 1191
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1193
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1194
    :cond_1
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f1000cb

    if-ne v0, v1, :cond_2

    const v0, 0x7f090195

    .line 1195
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1197
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBottomLineDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected setButtonsBg()V
    .locals 2

    .line 1202
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1204
    fill-array-data v0, :array_0

    .line 1205
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1206
    invoke-static {v1, v0}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090138
        0x7f090139
        0x7f09013a
    .end array-data
.end method

.method public setContentView(I)V
    .locals 1

    .line 1161
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 1166
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setBgForColorTheme()V

    .line 1170
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    if-nez p1, :cond_0

    .line 1171
    sget-boolean p1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-static {p0, p1}, Lcom/perm/utils/TranslucentStatus;->makeTranslucentStatus(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method protected setHeaderTitle(I)V
    .locals 1

    .line 1090
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method protected setHeaderTitle(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f090167

    .line 1101
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setupAddButton()V
    .locals 2

    const v0, 0x7f090137

    .line 1318
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1321
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1322
    new-instance v1, Lcom/perm/kate/BaseActivity$10;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$10;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupAlbumsButton()V
    .locals 2

    const v0, 0x7f090136

    .line 1066
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1069
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    new-instance v1, Lcom/perm/kate/BaseActivity$8;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$8;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupComposeButton()V
    .locals 2

    const v0, 0x7f09013d

    .line 1006
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    new-instance v1, Lcom/perm/kate/BaseActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$5;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupFilterSpinner(Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemSelectedListener;I)V
    .locals 5

    const v0, 0x7f090302

    .line 1334
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1337
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1338
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1340
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const-wide/high16 v3, 0x4048000000000000L    # 48.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1341
    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0801b3

    .line 1342
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 1343
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090167

    .line 1345
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 1347
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c007c

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x1090009

    .line 1350
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1351
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1352
    invoke-virtual {v2, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    if-eqz p3, :cond_2

    .line 1354
    invoke-virtual {v2, p3}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1356
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1357
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setupMenuButton()V
    .locals 2

    .line 996
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->showMenuButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09013e

    .line 998
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1001
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    new-instance v1, Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$MenuOnClickListener;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setupPlayerButton()V
    .locals 2

    const v0, 0x7f09013f

    .line 1146
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 1147
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->playerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupRefreshButton()V
    .locals 2

    const v0, 0x7f090145

    .line 1050
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1053
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    new-instance v1, Lcom/perm/kate/BaseActivity$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$7;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 1060
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->setupedRefreshButton:Z

    return-void
.end method

.method public setupSearchButton()V
    .locals 2

    const v0, 0x7f090140

    .line 1023
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1026
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    new-instance v1, Lcom/perm/kate/BaseActivity$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$6;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showMenuButton()Z
    .locals 1

    .line 983
    sget-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 985
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->getShowMenuFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    .line 986
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public showProgressBar(Z)V
    .locals 0

    .line 756
    iput-boolean p1, p0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    .line 757
    iget-object p1, p0, Lcom/perm/kate/BaseActivity;->progressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
