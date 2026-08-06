.class public Lfr/nicolaspomepuy/discreetapprate/AppRate;
.super Ljava/lang/Object;
.source "AppRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;
    }
.end annotation


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
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    .line 48
    sget-object v0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->EXPONENTIAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    iput-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->policy:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    .line 52
    iput v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->delay:I

    .line 55
    sget-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->DARK:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    iput-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->theme:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    .line 57
    iput-boolean v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    .line 62
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string v0, "DicreetAppRate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method static synthetic access$000(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->hideAllViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;
    .locals 1
    .param p0, "x0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;

    .prologue
    .line 35
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->onShowListener:Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    return-object v0
.end method

.method static synthetic access$200(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;

    .prologue
    .line 35
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;

    .prologue
    .line 35
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->displayViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private displayViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "mainView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, -0x1

    .line 565
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-boolean v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 574
    .local v0, "fadeInAnimation":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 576
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->onShowListener:Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->onShowListener:Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    invoke-interface {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;->onRateAppShowing()V

    .line 577
    :cond_0
    return-void

    .line 572
    .end local v0    # "fadeInAnimation":Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "fadeInAnimation":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private hideAllViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "mainView"    # Landroid/view/ViewGroup;

    .prologue
    .line 538
    iget-boolean v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 544
    .local v0, "hideAnimation":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;

    invoke-direct {v1, p0, p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$4;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    return-void

    .line 541
    .end local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "hideAnimation":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private incrementViews()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v4, "last_count_update"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->minimumInterval:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 390
    iget-boolean v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "Count not incremented due to minimum interval not reached"

    invoke-direct {p0, v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "count"

    iget-object v3, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v4, "count"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 395
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_count_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 396
    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showAppRate()V
    .locals 12

    .prologue
    const v11, 0x7f020122

    const/high16 v10, -0x1000000

    .line 409
    iget-object v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030025

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 412
    .local v5, "mainView":Landroid/view/ViewGroup;
    const v7, 0x7f0e0081

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 413
    .local v0, "close":Landroid/widget/ImageView;
    const v7, 0x7f0e0080

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 414
    .local v6, "textView":Landroid/widget/TextView;
    const v7, 0x7f0e007e

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 415
    .local v1, "container":Landroid/widget/RelativeLayout;
    iget-boolean v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->fromTop:Z

    if-eqz v7, :cond_0

    .line 416
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 417
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    :goto_0
    iget-object v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v7, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;

    invoke-direct {v7, p0, v5}, Lfr/nicolaspomepuy/discreetapprate/AppRate$1;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    new-instance v7, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;

    invoke-direct {v7, p0, v5}, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->theme:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    sget-object v8, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->LIGHT:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    if-ne v7, v8, :cond_1

    .line 452
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 453
    .local v4, "mMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 454
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 455
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    const v7, -0x77000001

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 523
    .end local v4    # "mMode":Landroid/graphics/PorterDuff$Mode;
    :goto_1
    iget v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->delay:I

    if-lez v7, :cond_2

    .line 524
    iget-object v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;

    invoke-direct {v8, p0, v5}, Lfr/nicolaspomepuy/discreetapprate/AppRate$3;-><init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    iget v9, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->delay:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    :goto_2
    return-void

    .line 420
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 421
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x50

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v7, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 463
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 464
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    const/high16 v7, -0x56000000

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 531
    :cond_2
    invoke-direct {p0, v5}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->displayViews(Landroid/view/ViewGroup;)V

    goto :goto_2
.end method

.method public static with(Landroid/app/Activity;)Lfr/nicolaspomepuy/discreetapprate/AppRate;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    new-instance v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-direct {v0, p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;-><init>(Landroid/app/Activity;)V

    .line 72
    .local v0, "instance":Lfr/nicolaspomepuy/discreetapprate/AppRate;
    const v1, 0x7f070097

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->text:Ljava/lang/String;

    .line 73
    const-string v1, "app_rate_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    .line 74
    iget-object v1, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    .line 75
    return-object v0
.end method


# virtual methods
.method public checkAndShow()V
    .locals 12

    .prologue
    .line 238
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last crash: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v8, "last_crash"

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds ago"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v7, "last_crash"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->pauseAfterCrash:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 240
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "A recent crash avoids anything to be done."

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 244
    :cond_2
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v5, "monitor_total"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->minimumMonitoringTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 245
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_1

    .line 246
    const-string v4, "Monitor time not reached. Nothing will be done"

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lfr/nicolaspomepuy/discreetapprate/Utils;->isOnline(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 251
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_1

    .line 252
    const-string v4, "Device is not online. AppRate try to show up next time."

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_4
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->incrementViews()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_5

    .line 262
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lfr/nicolaspomepuy/discreetapprate/Utils;->installTimeFromPackageManager(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 263
    .local v2, "installDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 264
    .local v3, "now":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->installedSince:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 265
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_1

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date not reached. Time elapsed since installation (in sec.): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v2    # "installDate":Ljava/util/Date;
    .end local v3    # "now":Ljava/util/Date;
    :cond_5
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v5, "elapsed_time"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 273
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "elapsed_time"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_6

    const-string v4, "First time after the time is elapsed"

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 275
    :cond_6
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v5, "count"

    const/4 v6, 0x5

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    if-le v4, v5, :cond_8

    .line 276
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_7

    const-string v4, "Initial count passed. Resetting to initialLaunchCount"

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 278
    :cond_7
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "count"

    iget v6, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_8
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    :cond_9
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v5, "clicked"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    .local v0, "clicked":Z
    if-nez v0, :cond_1

    .line 288
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->settings:Landroid/content/SharedPreferences;

    const-string v5, "count"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 289
    .local v1, "count":I
    iget v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    if-ne v1, v4, :cond_b

    .line 290
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_a

    const-string v4, "initialLaunchCount reached"

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 291
    :cond_a
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V

    goto/16 :goto_0

    .line 292
    :cond_b
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->policy:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    sget-object v5, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->INCREMENTAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    if-ne v4, v5, :cond_d

    iget v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    rem-int v4, v1, v4

    if-nez v4, :cond_d

    .line 293
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_c

    const-string v4, "initialLaunchCount incremental reached"

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 294
    :cond_c
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V

    goto/16 :goto_0

    .line 295
    :cond_d
    iget-object v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->policy:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    sget-object v5, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->EXPONENTIAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    if-ne v4, v5, :cond_f

    iget v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    rem-int v4, v1, v4

    if-nez v4, :cond_f

    iget v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    div-int v4, v1, v4

    invoke-static {v4}, Lfr/nicolaspomepuy/discreetapprate/Utils;->isPowerOfTwo(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 296
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_e

    const-string v4, "initialLaunchCount exponential reached"

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    .line 297
    :cond_e
    invoke-direct {p0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V

    goto/16 :goto_0

    .line 299
    :cond_f
    iget-boolean v4, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->debug:Z

    if-eqz v4, :cond_1

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nothing to show. initialLaunchCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Current count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->LogD(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initialLaunchCount(I)Lfr/nicolaspomepuy/discreetapprate/AppRate;
    .locals 0
    .param p1, "initialLaunchCount"    # I

    .prologue
    .line 125
    iput p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate;->initialLaunchCount:I

    .line 126
    return-object p0
.end method
