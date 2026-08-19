.class public Lfr/nicolaspomepuy/discreetapprate/AppRate;
.super Ljava/lang/Object;
.source "AppRate.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private debug:Z

.field private delay:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private fromTop:Z

.field private initialLaunchCount:I

.field private installedSince:J

.field private minimumInterval:J

.field private minimumMonitoringTime:J

.field private onShowListener:Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

.field private pauseAfterCrash:J

.field private policy:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

.field private settings:Landroid/content/SharedPreferences;

.field private text:Ljava/lang/String;

.field private theme:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    .line 48
    sget-object v0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->EXPONENTIAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    iput-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->policy:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->delay:I

    .line 55
    sget-object v1, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->DARK:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    iput-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->theme:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    .line 57
    iput-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    .line 62
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DicreetAppRate"

    .line 590
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->hideAllViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->onShowListener:Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    return-object p0
.end method

.method static synthetic access$200(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 35
    iget-object p0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$400(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->displayViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private displayViews(Landroid/view/ViewGroup;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v1, 0x7f010011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v1, 0x7f010010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 576
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 578
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->onShowListener:Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;->onRateAppShowing()V

    :cond_1
    return-void
.end method

.method private hideAllViews(Landroid/view/ViewGroup;)V
    .locals 2

    .line 540
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v1, 0x7f010013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v1, 0x7f010012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 546
    :goto_0
    new-instance v1, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;

    invoke-direct {v1, p0, p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 563
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private incrementViews()Z
    .locals 8

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v3, "last_count_update"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->minimumInterval:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const/4 v2, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 391
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "Count not incremented due to minimum interval not reached"

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    :cond_0
    return v2

    .line 395
    :cond_1
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v4, "count"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 396
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 397
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2
.end method

.method private showAppRate()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0900c2

    .line 414
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090329

    .line 415
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900da

    .line 416
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 417
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    .line 419
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 420
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x50

    .line 423
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 424
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :goto_0
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    new-instance v4, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;

    invoke-direct {v4, p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v4, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;

    invoke-direct {v4, p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->theme:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    sget-object v5, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->LIGHT:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    const v6, 0x7f0801d3

    if-ne v4, v5, :cond_1

    .line 454
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 455
    iget-object v5, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/high16 v6, -0x1000000

    .line 456
    invoke-virtual {v5, v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 457
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x77000001

    .line 461
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 464
    :cond_1
    iget-object v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 466
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, -0x56000000

    .line 468
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 525
    :goto_1
    iget v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->delay:I

    if-lez v1, :cond_2

    .line 526
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;

    invoke-direct {v2, p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    iget v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->delay:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 533
    :cond_2
    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->displayViews(Landroid/view/ViewGroup;)V

    :goto_2
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lfr/nicolaspomepuy/discreetapprate/AppRate;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 72
    new-instance v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-direct {v0, p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0f00cf

    .line 73
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->text:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app_rate_prefs"

    .line 74
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    iput-object p0, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checkAndShow()V
    .locals 10

    .line 239
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    const-string v1, "last_crash"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last crash: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v8, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " seconds ago"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr v6, v0

    div-long/2addr v6, v4

    iget-wide v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->pauseAfterCrash:J

    cmp-long v8, v6, v0

    if-gez v8, :cond_2

    .line 241
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_1

    const-string v0, "A recent crash avoids anything to be done."

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 245
    :cond_2
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v1, "monitor_total"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->minimumMonitoringTime:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    .line 246
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_3

    const-string v0, "Monitor time not reached. Nothing will be done"

    .line 247
    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 251
    :cond_4
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lfr/nicolaspomepuy/discreetapprate/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 252
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_5

    const-string v0, "Device is not online. AppRate try to show up next time."

    .line 253
    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 257
    :cond_6
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->incrementViews()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 263
    :cond_7
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/nicolaspomepuy/discreetapprate/Utils;->installTimeFromPackageManager(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 265
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-wide v6, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->installedSince:J

    mul-long v6, v6, v4

    cmp-long v8, v2, v6

    if-gez v8, :cond_9

    .line 266
    iget-boolean v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v2, :cond_8

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date not reached. Time elapsed since installation (in sec.): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v6, v0

    div-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    :cond_8
    return-void

    .line 272
    :cond_9
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v1, "elapsed_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "count"

    if-nez v0, :cond_d

    .line 274
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 275
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_a

    const-string v0, "First time after the time is elapsed"

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 276
    :cond_a
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    if-le v0, v1, :cond_c

    .line 277
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_b

    const-string v0, "Initial count passed. Resetting to initialLaunchCount"

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 279
    :cond_b
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 283
    :cond_c
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    :cond_d
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v1, "clicked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 289
    :cond_e
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 290
    iget v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    if-ne v0, v1, :cond_10

    .line 291
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_f

    const-string v0, "initialLaunchCount reached"

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 292
    :cond_f
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V

    goto :goto_0

    .line 293
    :cond_10
    iget-object v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->policy:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    sget-object v3, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->INCREMENTAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    if-ne v2, v3, :cond_12

    rem-int v3, v0, v1

    if-nez v3, :cond_12

    .line 294
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_11

    const-string v0, "initialLaunchCount incremental reached"

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 295
    :cond_11
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V

    goto :goto_0

    .line 296
    :cond_12
    sget-object v3, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->EXPONENTIAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    if-ne v2, v3, :cond_14

    rem-int v2, v0, v1

    if-nez v2, :cond_14

    div-int v1, v0, v1

    invoke-static {v1}, Lfr/nicolaspomepuy/discreetapprate/Utils;->isPowerOfTwo(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 297
    iget-boolean v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v0, :cond_13

    const-string v0, "initialLaunchCount exponential reached"

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 298
    :cond_13
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V

    goto :goto_0

    .line 300
    :cond_14
    iget-boolean v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v1, :cond_15

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing to show. initialLaunchCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Current count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    :cond_15
    :goto_0
    return-void
.end method

.method public initialLaunchCount(I)Lfr/nicolaspomepuy/discreetapprate/AppRate;
    .locals 0

    .line 126
    iput p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    return-object p0
.end method
