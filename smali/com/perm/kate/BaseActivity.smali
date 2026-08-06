.class public Lcom/perm/kate/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/BaseActivity$inMobiAdListener;,
        Lcom/perm/kate/BaseActivity$MenuOnClickListener;,
        Lcom/perm/kate/BaseActivity$TargetingParams;,
        Lcom/perm/kate/BaseActivity$MyAdListener;
    }
.end annotation


# static fields
.field public static IsCustomTheme:Z

.field public static Theme:I

.field private static inmobi_inited:Z

.field private static longPollStopper:Ljava/lang/Runnable;

.field private static showMenuButton:Ljava/lang/Boolean;

.field private static targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

.field public static theme_id:Ljava/lang/String;


# instance fields
.field adInMobi:Lcom/inmobi/ads/InMobiBanner;

.field private adViewYandex:Lcom/yandex/mobile/ads/AdView;

.field adman:Lcom/my/target/ads/MyTargetView;

.field private admanListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

.field private begunAd:Lru/begun/adlib/AdView;

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, -0x1

    sput v0, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 86
    const-string v0, "11"

    sput-object v0, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    .line 87
    sput-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    .line 441
    sput-boolean v1, Lcom/perm/kate/BaseActivity;->inmobi_inited:Z

    .line 748
    new-instance v0, Lcom/perm/kate/BaseActivity$3;

    invoke-direct {v0}, Lcom/perm/kate/BaseActivity$3;-><init>()V

    sput-object v0, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    .line 99
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->blocked:Z

    .line 579
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    .line 580
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->header_flag:Z

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->goHomeOnHeaderClick:Z

    .line 736
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    .line 760
    new-instance v0, Lcom/perm/kate/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$4;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->progressBarRunnable:Ljava/lang/Runnable;

    .line 1045
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->setupedRefreshButton:Z

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    .line 1151
    new-instance v0, Lcom/perm/kate/BaseActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$11;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->playerClick:Landroid/view/View$OnClickListener;

    .line 1314
    new-instance v0, Lcom/perm/kate/BaseActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$12;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->admanListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    return-void
.end method

.method public static GetTheme(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 522
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 516
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/perm/utils/NightThemeHelper;->isNight(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "key_night_theme"

    const-string v4, "11"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "theme":Ljava/lang/String;
    :goto_1
    sput-object v2, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    .line 518
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 519
    .local v1, "th":I
    invoke-static {v1}, Lcom/perm/kate/BaseActivity;->reportTheme(I)V

    .line 520
    invoke-static {v1}, Lcom/perm/kate/BaseActivity;->GetThemeByValue(I)I

    move-result v3

    sput v3, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 521
    invoke-static {v2, p0}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    goto :goto_0

    .line 516
    .end local v1    # "th":I
    .end local v2    # "theme":Ljava/lang/String;
    :cond_1
    const-string v3, "key_theme"

    const-string v4, "10"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static GetThemeByValue(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 525
    packed-switch p0, :pswitch_data_0

    .line 551
    const v0, 0x7f0a00c4

    :goto_0
    return v0

    .line 527
    :pswitch_0
    const v0, 0x7f0a00c0

    goto :goto_0

    .line 529
    :pswitch_1
    const v0, 0x7f0a00ca

    goto :goto_0

    .line 531
    :pswitch_2
    const v0, 0x7f0a00c1

    goto :goto_0

    .line 533
    :pswitch_3
    const v0, 0x7f0a00c5

    goto :goto_0

    .line 535
    :pswitch_4
    const v0, 0x7f0a00c9

    goto :goto_0

    .line 537
    :pswitch_5
    const v0, 0x7f0a00c7

    goto :goto_0

    .line 539
    :pswitch_6
    const v0, 0x7f0a00bf

    goto :goto_0

    .line 541
    :pswitch_7
    const v0, 0x7f0a00c2

    goto :goto_0

    .line 543
    :pswitch_8
    const v0, 0x7f0a00c8

    goto :goto_0

    .line 545
    :pswitch_9
    const v0, 0x7f0a00c3

    goto :goto_0

    .line 547
    :pswitch_a
    const v0, 0x7f0a00c6

    goto :goto_0

    .line 549
    :pswitch_b
    const v0, 0x7f0a00cc

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/perm/kate/BaseActivity;)Lru/begun/adlib/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->destroyWebViewInsideBegun()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/BaseActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->pb_header_progress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/BaseActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->pb_header_progress:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->hideRefreshButtonByProgress()V

    return-void
.end method

.method private destroyWebViewInsideBegun()V
    .locals 2

    .prologue
    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    invoke-virtual {v1}, Lru/begun/adlib/AdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/CharSequence;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 772
    new-instance v0, Lcom/perm/kate/BaseActivity$5;

    invoke-direct {v0, p1, p0}, Lcom/perm/kate/BaseActivity$5;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 777
    return-void
.end method

.method private getBlockFlag()Z
    .locals 1

    .prologue
    .line 504
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockFlag(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static getShowMenuFlag(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 992
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 994
    .local v0, "ver":I
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 995
    const/4 v1, 0x0

    .line 997
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;
    .locals 6

    .prologue
    .line 397
    sget-object v3, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    if-eqz v3, :cond_0

    .line 398
    sget-object v3, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    .line 421
    .local v2, "user":Lcom/perm/kate/api/User;
    :goto_0
    return-object v3

    .line 399
    .end local v2    # "user":Lcom/perm/kate/api/User;
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v3, :cond_1

    .line 400
    const/4 v3, 0x0

    goto :goto_0

    .line 401
    :cond_1
    new-instance v3, Lcom/perm/kate/BaseActivity$TargetingParams;

    invoke-direct {v3}, Lcom/perm/kate/BaseActivity$TargetingParams;-><init>()V

    sput-object v3, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    .line 403
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserTargetingParams(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 404
    .restart local v2    # "user":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_3

    .line 407
    iget-object v3, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    iget-object v3, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/BirthdayHelper;->parseDateInfo(Ljava/lang/String;)Lcom/perm/kate/BirthdayHelper$DateInfo;

    move-result-object v0

    .line 409
    .local v0, "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 410
    sget-object v3, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, v0, Lcom/perm/kate/BirthdayHelper$DateInfo;->year:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    .line 415
    .end local v0    # "date":Lcom/perm/kate/BirthdayHelper$DateInfo;
    :cond_2
    sget-object v3, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    iget-object v4, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    iput-object v4, v3, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_3
    :goto_1
    sget-object v3, Lcom/perm/kate/BaseActivity;->targeting_params_cache:Lcom/perm/kate/BaseActivity$TargetingParams;

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static goHome(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 817
    invoke-static {p0}, Lcom/perm/kate/Helper;->createMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 818
    return-void
.end method

.method public static goSearch(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 793
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 794
    return-void
.end method

.method private hideRefreshButtonByProgress()V
    .locals 2

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->setupedRefreshButton:Z

    if-nez v0, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initAd()V
    .locals 6

    .prologue
    .line 609
    :try_start_0
    sget-boolean v4, Lcom/perm/kate/KApplication;->is_pro:Z

    if-eqz v4, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    sget-object v4, Lcom/perm/kate/KApplication;->adConfig:Lcom/perm/kate/ads/AdConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/perm/kate/ads/AdConfig;->getAdType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "ad_type":Ljava/lang/String;
    const-string v4, "n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 618
    :try_start_1
    invoke-static {}, Lcom/perm/kate/AdDisabler;->toSplit()Z

    move-result v2

    .line 620
    .local v2, "split_ads":Z
    if-eqz v2, :cond_2

    .line 621
    invoke-static {}, Lcom/perm/kate/AdDisabler;->get()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "enabled_ad":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    .end local v1    # "enabled_ad":Ljava/lang/String;
    .end local v2    # "split_ads":Z
    :cond_2
    :goto_1
    :try_start_2
    const-string v4, "b"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->initBegun()V

    .line 638
    :cond_3
    const-string v4, "a"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 639
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->initAdnet()V

    .line 640
    :cond_4
    const-string v4, "i"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 641
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->initInMobi()V

    .line 642
    :cond_5
    const-string v4, "l"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 643
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->initMailRu()V

    .line 644
    :cond_6
    const-string v4, "y"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->initYandexAds()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 646
    .end local v0    # "ad_type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 647
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 648
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 625
    .end local v3    # "th":Ljava/lang/Throwable;
    .restart local v0    # "ad_type":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 626
    .restart local v3    # "th":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 627
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private initAdnet()V
    .locals 6

    .prologue
    .line 276
    const v3, 0x7f0e006a

    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 277
    .local v1, "container":Landroid/widget/FrameLayout;
    if-nez v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    new-instance v0, Lcom/perm/ads/AdView;

    invoke-direct {v0, p0}, Lcom/perm/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "adnetAd":Lcom/perm/ads/AdView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 283
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initBegun()V
    .locals 4

    .prologue
    .line 233
    const v2, 0x7f0e006a

    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 234
    .local v0, "container":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    new-instance v2, Lru/begun/adlib/AdView;

    invoke-direct {v2, p0}, Lru/begun/adlib/AdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    .line 241
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v2, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    new-instance v3, Lcom/perm/kate/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/BaseActivity$1;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v2, v3}, Lru/begun/adlib/AdView;->setOnApiListener(Lru/begun/adlib/Callback;)V

    .line 270
    sget-boolean v2, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lru/begun/adlib/AdView;->onDebug:Z

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    invoke-virtual {v2}, Lru/begun/adlib/AdView;->init()V

    goto :goto_0
.end method

.method private initInMobi()V
    .locals 8

    .prologue
    .line 444
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v5, "C2105"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "4.4.4"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 452
    :cond_2
    const-string v3, "dad3b1b63e6442c3a608b2137b853181"

    .line 455
    .local v3, "property_id":Ljava/lang/String;
    sget-boolean v5, Lcom/perm/kate/BaseActivity;->inmobi_inited:Z

    if-nez v5, :cond_5

    .line 456
    invoke-static {p0, v3}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    new-instance v5, Lcom/perm/utils/MyLocation;

    invoke-direct {v5, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/perm/utils/MyLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 458
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_3

    .line 459
    invoke-static {v1}, Lcom/inmobi/sdk/InMobiSdk;->setLocation(Landroid/location/Location;)V

    .line 460
    :cond_3
    invoke-static {}, Lcom/perm/kate/BaseActivity;->getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;

    move-result-object v4

    .line 461
    .local v4, "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    if-eqz v4, :cond_5

    .line 462
    iget-object v5, v4, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 463
    iget-object v5, v4, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setAge(I)V

    .line 464
    :cond_4
    iget-object v5, v4, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 465
    iget-object v5, v4, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    sget-object v5, Lcom/inmobi/sdk/InMobiSdk$Gender;->MALE:Lcom/inmobi/sdk/InMobiSdk$Gender;

    :goto_1
    invoke-static {v5}, Lcom/inmobi/sdk/InMobiSdk;->setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V

    .line 471
    .end local v1    # "location":Landroid/location/Location;
    .end local v4    # "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    :cond_5
    const v5, 0x7f0e006a

    invoke-virtual {p0, v5}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 472
    .local v0, "container":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 478
    new-instance v5, Lcom/inmobi/ads/InMobiBanner;

    const-wide v6, 0x5165fab427305L

    invoke-direct {v5, p0, v6, v7}, Lcom/inmobi/ads/InMobiBanner;-><init>(Landroid/content/Context;J)V

    iput-object v5, p0, Lcom/perm/kate/BaseActivity;->adInMobi:Lcom/inmobi/ads/InMobiBanner;

    .line 480
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adInMobi:Lcom/inmobi/ads/InMobiBanner;

    sget-object v6, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_OFF:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {v5, v6}, Lcom/inmobi/ads/InMobiBanner;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    .line 481
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 482
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adInMobi:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adInMobi:Lcom/inmobi/ads/InMobiBanner;

    new-instance v6, Lcom/perm/kate/BaseActivity$inMobiAdListener;

    invoke-direct {v6}, Lcom/perm/kate/BaseActivity$inMobiAdListener;-><init>()V

    invoke-virtual {v5, v6}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    .line 486
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adInMobi:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v5}, Lcom/inmobi/ads/InMobiBanner;->load()V

    goto/16 :goto_0

    .line 465
    .end local v0    # "container":Landroid/widget/FrameLayout;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1    # "location":Landroid/location/Location;
    .restart local v4    # "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    :cond_6
    sget-object v5, Lcom/inmobi/sdk/InMobiSdk$Gender;->FEMALE:Lcom/inmobi/sdk/InMobiSdk$Gender;

    goto :goto_1
.end method

.method private initMailRu()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1281
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-ge v6, v7, :cond_1

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    const v6, 0x7f0e006a

    invoke-virtual {p0, v6}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1285
    .local v0, "container":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 1294
    new-instance v6, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v6, p0}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    .line 1295
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-direct {v2, v6, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1296
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    iget-object v6, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    iget-object v7, p0, Lcom/perm/kate/BaseActivity;->admanListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    invoke-virtual {v6, v7}, Lcom/my/target/ads/MyTargetView;->setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V

    .line 1301
    iget-object v6, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    const/16 v7, 0x1ca8

    invoke-virtual {v6, v7}, Lcom/my/target/ads/MyTargetView;->init(I)V

    .line 1303
    iget-object v6, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v6}, Lcom/my/target/ads/MyTargetView;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v1

    .line 1304
    .local v1, "custom":Lcom/my/target/ads/CustomParams;
    invoke-static {}, Lcom/perm/kate/BaseActivity;->getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;

    move-result-object v3

    .line 1305
    .local v3, "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    if-eqz v3, :cond_3

    .line 1306
    iget-object v6, v3, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 1307
    iget-object v6, v3, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/my/target/ads/CustomParams;->setAge(I)V

    .line 1308
    :cond_2
    iget-object v6, v3, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 1309
    iget-object v6, v3, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_4

    :goto_1
    invoke-virtual {v1, v4}, Lcom/my/target/ads/CustomParams;->setGender(I)V

    .line 1311
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v4}, Lcom/my/target/ads/MyTargetView;->load()V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 1309
    goto :goto_1
.end method

.method private initYandexAds()V
    .locals 8

    .prologue
    .line 289
    sget-boolean v5, Lcom/perm/kate/KApplication;->yandex_metrica_inited:Z

    if-nez v5, :cond_0

    .line 290
    invoke-static {}, Lcom/perm/kate/KApplication;->initYandexMetrica()V

    .line 291
    :cond_0
    sget-boolean v5, Lcom/perm/kate/KApplication;->yandex_metrica_inited:Z

    if-nez v5, :cond_2

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_1

    .line 297
    const v5, 0x7f0e006a

    invoke-virtual {p0, v5}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 298
    .local v2, "container":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_1

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    new-instance v5, Lcom/yandex/mobile/ads/AdView;

    invoke-direct {v5, p0}, Lcom/yandex/mobile/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    .line 305
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    const-string v6, "R-M-138230-1"

    invoke-virtual {v5, v6}, Lcom/yandex/mobile/ads/AdView;->setBlockId(Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    sget-object v6, Lcom/yandex/mobile/ads/AdSize;->BANNER_320x50:Lcom/yandex/mobile/ads/AdSize;

    invoke-virtual {v5, v6}, Lcom/yandex/mobile/ads/AdView;->setAdSize(Lcom/yandex/mobile/ads/AdSize;)V

    .line 308
    sget-boolean v5, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v5, :cond_3

    .line 309
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    new-instance v6, Lcom/perm/kate/BaseActivity$2;

    invoke-direct {v6, p0}, Lcom/perm/kate/BaseActivity$2;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v5, v6}, Lcom/yandex/mobile/ads/AdView;->setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V

    .line 310
    :cond_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 311
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-static {}, Lcom/yandex/mobile/ads/AdRequest;->builder()Lcom/yandex/mobile/ads/AdRequest$Builder;

    move-result-object v1

    .line 314
    .local v1, "builder":Lcom/yandex/mobile/ads/AdRequest$Builder;
    new-instance v5, Lcom/perm/utils/MyLocation;

    invoke-direct {v5, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/perm/utils/MyLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v3

    .line 315
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_4

    .line 316
    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/AdRequest$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/mobile/ads/AdRequest$Builder;

    .line 317
    :cond_4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    .line 318
    .local v0, "adRequest":Lcom/yandex/mobile/ads/AdRequest;
    iget-object v5, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v5, v0}, Lcom/yandex/mobile/ads/AdView;->loadAd(Lcom/yandex/mobile/ads/AdRequest;)V

    goto :goto_0
.end method

.method private static makeDarker(I)I
    .locals 6
    .param p0, "color"    # I

    .prologue
    .line 1224
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v2, v5, 0xff

    .line 1225
    .local v2, "r":I
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v1, v5, 0xff

    .line 1226
    .local v1, "g":I
    and-int/lit16 v0, p0, 0xff

    .line 1227
    .local v0, "b":I
    const v3, 0x3fa66666    # 1.3f

    .line 1228
    .local v3, "ratio":F
    int-to-float v5, v2

    div-float/2addr v5, v3

    float-to-int v2, v5

    .line 1229
    int-to-float v5, v1

    div-float/2addr v5, v3

    float-to-int v1, v5

    .line 1230
    int-to-float v5, v0

    div-float/2addr v5, v3

    float-to-int v0, v5

    .line 1231
    :try_start_0
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 1235
    .end local p0    # "color":I
    :goto_0
    return p0

    .line 1232
    .restart local p0    # "color":I
    :catch_0
    move-exception v4

    .line 1233
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1234
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reportActivityCreate()V
    .locals 8

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 157
    .local v2, "time":J
    const-wide/16 v4, 0x2710

    rem-long v4, v2, v4

    const-wide/16 v6, 0x270e

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 166
    .end local v2    # "time":J
    :goto_0
    return-void

    .line 159
    .restart local v2    # "time":J
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 160
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "screen"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v4, "ACTIVITY_CREATE_1"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "time":J
    :catch_0
    move-exception v1

    .line 163
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static reportTheme(I)V
    .locals 10
    .param p0, "theme"    # I

    .prologue
    .line 558
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 559
    .local v4, "time":J
    const-wide/16 v6, 0x3e8

    rem-long v6, v4, v6

    const-wide/16 v8, 0xa

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 575
    .end local v4    # "time":J
    :goto_0
    return-void

    .line 561
    .restart local v4    # "time":J
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 562
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "theme"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {}, Lcom/perm/kate/BaseActivity;->getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;

    move-result-object v1

    .line 564
    .local v1, "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    if-eqz v1, :cond_2

    .line 565
    iget-object v3, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 566
    const-string v3, "age"

    iget-object v6, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_1
    iget-object v3, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 568
    const-string v3, "gender"

    iget-object v6, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_2
    const-string v3, "THEME"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    .end local v4    # "time":J
    :catch_0
    move-exception v2

    .line 572
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 573
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static scaleText(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 895
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 896
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v3, 0x7f07052f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x64

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 897
    .local v0, "font_size":I
    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/perm/kate/ScaleTextView;->setGlobalScale(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v0    # "font_size":I
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v2

    .line 899
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 900
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setFullScreen()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 170
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_fullscreen"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    .local v0, "is_fullscreen":Z
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 173
    :cond_0
    if-eqz v0, :cond_1

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    .line 175
    :cond_1
    return-void
.end method

.method private setHeaderClick()V
    .locals 4

    .prologue
    .line 797
    new-instance v0, Lcom/perm/kate/BaseActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$6;-><init>(Lcom/perm/kate/BaseActivity;)V

    .line 803
    .local v0, "headerClick":Landroid/view/View$OnClickListener;
    const v3, 0x7f0e01f5

    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 804
    .local v2, "ll_home_button":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 805
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :cond_0
    const v3, 0x7f0e01f6

    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 807
    .local v1, "header_text":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 808
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    :cond_1
    return-void
.end method

.method public static setStatusBarBg(Landroid/app/Activity;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 1210
    sget-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v1, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1214
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    .line 1216
    .local v0, "color":I
    const/high16 v1, 0x60000000

    if-eq v0, v1, :cond_0

    .line 1218
    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->makeDarker(I)I

    move-result v0

    .line 1219
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perm/kate/BaseActivity;->setStatusBarColorWithReflection(Landroid/view/Window;I)V

    goto :goto_0
.end method

.method private static setStatusBarColorWithReflection(Landroid/view/Window;I)V
    .locals 6
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1240
    new-array v3, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    .line 1242
    .local v3, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-class v4, Landroid/view/Window;

    const-string v5, "setStatusBarColor"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1243
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 1244
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1245
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1257
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1248
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1249
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 1250
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 1251
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1252
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1254
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1255
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private startBlockActivity()V
    .locals 3

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "first_intent"

    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method private stopLongpollDelayed()V
    .locals 6

    .prologue
    .line 741
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    const v0, 0x927c0

    .line 744
    .local v0, "delay":I
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public displayToast(I)V
    .locals 1
    .param p1, "res_id"    # I

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 785
    return-void
.end method

.method displayToast(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 780
    invoke-static {p1, p0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    .line 781
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method protected hideHomeButton()V
    .locals 2

    .prologue
    .line 1087
    const v1, 0x7f0e01f5

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1088
    .local v0, "ll_home_button":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1089
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    :cond_0
    return-void
.end method

.method public newWallPost()V
    .locals 2

    .prologue
    .line 789
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/WallPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 790
    return-void
.end method

.method protected onAddButton()V
    .locals 0

    .prologue
    .line 1350
    return-void
.end method

.method protected onAlbumsButton()V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1390
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1399
    :goto_0
    return-void

    .line 1391
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->finish()V

    goto :goto_0

    .line 1394
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1396
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->finish()V

    goto :goto_0
.end method

.method protected onComposeButton()V
    .locals 0

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->newWallPost()V

    .line 1026
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 106
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setTheme(I)V

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->setFullScreen()V

    .line 119
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->getBlockFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->blocked:Z

    .line 121
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->finish()V

    .line 122
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->startBlockActivity()V

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->setStatusBarBg(Landroid/app/Activity;)V

    .line 127
    invoke-static {p0}, Lcom/perm/kate/Helper;->checkTransparentTheme(Landroid/app/Activity;)V

    .line 131
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 132
    invoke-static {p0}, Lcom/perm/utils/TaskDescriptionWrapper;->setTaskDescription(Landroid/app/Activity;)V

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->scaleText(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->reportActivityCreate()V

    .line 139
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 141
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 149
    sget-boolean v0, Lcom/perm/kate/KApplication;->is_pro:Z

    if-nez v0, :cond_2

    .line 150
    invoke-static {}, Lcom/perm/kate/ads/AdManager;->initConfig()V

    .line 151
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/AdView;->destroy()V

    .line 828
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 853
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    if-eqz v1, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->destroyWebViewInsideBegun()V

    .line 863
    :cond_1
    iput-object v3, p0, Lcom/perm/kate/BaseActivity;->begunAd:Lru/begun/adlib/AdView;

    .line 870
    iput-object v3, p0, Lcom/perm/kate/BaseActivity;->adInMobi:Lcom/inmobi/ads/InMobiBanner;

    .line 872
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v1}, Lcom/perm/kate/smile/SmileKeyboard;->destroy()V

    .line 874
    :cond_2
    iput-object v3, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 876
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    if-eqz v1, :cond_3

    .line 877
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetView;->destroy()V

    .line 878
    :cond_3
    iput-object v3, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    .line 881
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    iput-object v3, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    .line 883
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 832
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 847
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 848
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 849
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onGoHome()V
    .locals 0

    .prologue
    .line 812
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->goHome(Landroid/app/Activity;)V

    .line 813
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->onKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 906
    const-string v0, "Kate.BaseActivity"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 908
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onLowMemory()V

    .line 909
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/AdView;->pause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 966
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetView;->pause()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 974
    :cond_1
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/perm/kate/KApplication;->yandex_metrica_inited:Z

    if-eqz v1, :cond_2

    .line 976
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 977
    invoke-static {p0}, Lcom/yandex/metrica/YandexMetrica;->onPauseActivity(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 982
    :cond_2
    :goto_2
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 953
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 968
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 969
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 970
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 978
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 979
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 980
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 913
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 923
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adman:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetView;->resume()V

    .line 927
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/perm/kate/KApplication;->yandex_metrica_inited:Z

    if-eqz v1, :cond_1

    .line 929
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 930
    invoke-static {p0}, Lcom/yandex/metrica/YandexMetrica;->onResumeActivity(Landroid/app/Activity;)V

    .line 932
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    if-eqz v1, :cond_2

    .line 935
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->adViewYandex:Lcom/yandex/mobile/ads/AdView;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/AdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :cond_2
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 939
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onSearchButton()V
    .locals 0

    .prologue
    .line 1042
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->goSearch(Landroid/app/Activity;)V

    .line 1043
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 589
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 590
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->increment()V

    .line 591
    const-string v0, "T7A4JA7UBXDKAV5DCANQ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 595
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->header_flag:Z

    if-nez v0, :cond_0

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->header_flag:Z

    .line 597
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->goHomeOnHeaderClick:Z

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->setHeaderClick()V

    .line 603
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->start()V

    .line 604
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/perm/kate/BaseActivity;->longPollStopper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 701
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->decrement()V

    .line 702
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 708
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->checkAlwaysBlock(Landroid/content/Context;)V

    .line 712
    :cond_0
    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    .line 726
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    const/4 v0, -0x1

    sput v0, Lcom/perm/kate/BaseActivity;->Theme:I

    .line 731
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->reset()V

    .line 734
    :cond_1
    return-void

    .line 718
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->stopLongpollDelayed()V

    goto :goto_0
.end method

.method public setBgForColorTheme()V
    .locals 4

    .prologue
    .line 1189
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v2, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    const v2, 0x7f0e01f4

    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1192
    .local v1, "ll_header":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1193
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1194
    :cond_2
    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v3, 0x7f0a00c2

    if-ne v2, v3, :cond_0

    .line 1195
    const v2, 0x7f0e0200

    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1196
    .local v0, "iv_header_bottom_line":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1197
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBottomLineDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setButtonsBg()V
    .locals 3

    .prologue
    .line 1202
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v2, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1204
    :cond_0
    const/4 v2, 0x3

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1205
    .local v1, "view_ids":[I
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1206
    .local v0, "root_view":Landroid/view/View;
    invoke-static {v0, v1}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    goto :goto_0

    .line 1204
    nop

    :array_0
    .array-data 4
        0x7f0e0068
        0x7f0e00a3
        0x7f0e00cf
    .end array-data
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layout_id"    # I

    .prologue
    .line 1161
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 1165
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;->initAd()V

    .line 1166
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setBgForColorTheme()V

    .line 1170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    if-nez v0, :cond_0

    .line 1171
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-static {p0, v0}, Lcom/perm/utils/TranslucentStatus;->makeTranslucentStatus(Landroid/app/Activity;Z)V

    .line 1172
    :cond_0
    return-void
.end method

.method protected setHeaderTitle(I)V
    .locals 1
    .param p1, "title_id"    # I

    .prologue
    .line 1094
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setTitle(I)V

    .line 1097
    return-void
.end method

.method protected setHeaderTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1105
    const v1, 0x7f0e01f6

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1106
    .local v0, "header_text":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    :cond_0
    return-void
.end method

.method public setupAddButton()V
    .locals 2

    .prologue
    .line 1338
    const v1, 0x7f0e01fa

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1339
    .local v0, "fl_button_add":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1341
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    new-instance v1, Lcom/perm/kate/BaseActivity$13;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$13;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setupAlbumsButton()V
    .locals 2

    .prologue
    .line 1072
    const v1, 0x7f0e01fd

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    .local v0, "fl_albums_button":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1075
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    new-instance v1, Lcom/perm/kate/BaseActivity$10;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$10;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setupComposeButton()V
    .locals 2

    .prologue
    .line 1012
    const v1, 0x7f0e01fe

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1013
    .local v0, "fl_button_compose":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1015
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    new-instance v1, Lcom/perm/kate/BaseActivity$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$7;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setupFilterSpinner(Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemSelectedListener;I)V
    .locals 10
    .param p2, "filterListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
    .param p3, "selection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v6, 0x7f0e01f7

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1355
    .local v4, "spinner_placeholder":Landroid/widget/LinearLayout;
    if-nez v4, :cond_1

    .line 1379
    .end local v4    # "spinner_placeholder":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 1357
    .restart local v4    # "spinner_placeholder":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1358
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1360
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const-wide/high16 v8, 0x4048000000000000L    # 48.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1361
    .local v2, "ll":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/Spinner;

    invoke-direct {v3, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 1362
    .local v3, "sp":Landroid/widget/Spinner;
    const v6, 0x7f020100

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 1363
    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    const v6, 0x7f0e01f6

    invoke-virtual {p0, v6}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1366
    .local v1, "header_text":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1367
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x7f030072

    invoke-direct {v0, p0, v6, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1370
    .local v0, "country_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1371
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1372
    invoke-virtual {v3, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1373
    if-eqz p3, :cond_0

    .line 1374
    invoke-virtual {v3, p3}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1375
    .end local v0    # "country_ArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "header_text":Landroid/view/View;
    .end local v2    # "ll":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "sp":Landroid/widget/Spinner;
    .end local v4    # "spinner_placeholder":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v5

    .line 1376
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1377
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setupMenuButton()V
    .locals 2

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->showMenuButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    const v1, 0x7f0e01ff

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1005
    .local v0, "fl_button_menu":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1007
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    new-instance v1, Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$MenuOnClickListener;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected setupPlayerButton()V
    .locals 2

    .prologue
    .line 1146
    const v1, 0x7f0e01fc

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1147
    .local v0, "player_button":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v1, p0, Lcom/perm/kate/BaseActivity;->playerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    return-void
.end method

.method public setupRefreshButton()V
    .locals 2

    .prologue
    .line 1056
    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    .line 1057
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->fl_refresh_button:Landroid/view/View;

    new-instance v1, Lcom/perm/kate/BaseActivity$9;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$9;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->setupedRefreshButton:Z

    goto :goto_0
.end method

.method public setupSearchButton()V
    .locals 2

    .prologue
    .line 1029
    const v1, 0x7f0e01fb

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1030
    .local v0, "fl_button_search":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1032
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    new-instance v1, Lcom/perm/kate/BaseActivity$8;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseActivity$8;-><init>(Lcom/perm/kate/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showMenuButton()Z
    .locals 1

    .prologue
    .line 985
    sget-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 986
    sget-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 988
    :goto_0
    return v0

    .line 987
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->getShowMenuFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    .line 988
    sget-object v0, Lcom/perm/kate/BaseActivity;->showMenuButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public showProgressBar(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/perm/kate/BaseActivity;->refreshState:Z

    .line 757
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->progressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 758
    return-void
.end method
