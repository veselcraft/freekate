.class public final Lcom/inmobi/ads/InMobiBanner;
.super Landroid/widget/RelativeLayout;
.source "InMobiBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiBanner$a;,
        Lcom/inmobi/ads/InMobiBanner$b;,
        Lcom/inmobi/ads/InMobiBanner$BannerAdListener;,
        Lcom/inmobi/ads/InMobiBanner$AnimationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdLoadCalledTimestamp:J

.field private mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

.field private mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

.field private final mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

.field private mBannerAdUnit1:Lcom/inmobi/ads/k;

.field private mBannerAdUnit2:Lcom/inmobi/ads/k;

.field private mBannerHeightInDp:I

.field private mBannerWidthInDp:I

.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

.field private mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

.field private mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

.field private mIsAutoRefreshEnabled:Z

.field private mIsInitialized:Z

.field private mRefreshHandler:Lcom/inmobi/ads/l;

.field private mRefreshInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 112
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 116
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 117
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 118
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 643
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$4;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    .line 176
    if-nez p1, :cond_0

    .line 177
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Context supplied as null, the ad unit can\'t be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before trying to create an ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 116
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 117
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 118
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 643
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$4;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    .line 130
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before trying to create an ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    .line 136
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 137
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v1, "placementId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v2, "refreshInterval"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    if-eqz v0, :cond_2

    .line 142
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 144
    invoke-direct {p0, p1, v2, v3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :goto_1
    if-eqz v1, :cond_0

    .line 158
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Refresh interval value supplied in XML layout is not valid. Falling back to default value."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v3, "errorCode"

    const-string v4, "InvalidPlacement"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v3, "type"

    const-string v4, "banner"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v3

    const-string v4, "ads"

    const-string v5, "AdLoadFailed"

    invoke-virtual {v3, v4, v5, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v4, "Placement id value supplied in XML layout is not valid. Banner creation failed."

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 153
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value is not supplied in XML layout. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiBanner;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->checkForRefreshRate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    return-void
.end method

.method static synthetic access$1100(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V

    return-void
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/k;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/AdUnit$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    return-object v0
.end method

.method static synthetic access$502(Lcom/inmobi/ads/InMobiBanner;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    return p1
.end method

.method static synthetic access$602(Lcom/inmobi/ads/InMobiBanner;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    return p1
.end method

.method static synthetic access$700(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->displayAd()V

    return-void
.end method

.method static synthetic access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/k;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    return-object v0
.end method

.method static synthetic access$900(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    return-object v0
.end method

.method private cancelScheduledRefresh()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/l;->removeMessages(I)V

    .line 501
    return-void
.end method

.method private final checkForRefreshRate()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-wide v2, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v1}, Lcom/inmobi/ads/k;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->f()I

    move-result v1

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    sub-long/2addr v2, v4

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad cannot be refreshed before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/ads/k;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 264
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad cannot be refreshed before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seconds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private displayAd()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 504
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->n()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 509
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 513
    if-nez v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/InMobiBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->t()V

    .line 520
    return-void

    .line 516
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 517
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v2}, Lcom/inmobi/ads/k;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initializeAdUnit(Landroid/content/Context;J)V
    .locals 8

    .prologue
    .line 470
    new-instance v1, Lcom/inmobi/ads/k;

    iget-object v6, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/k;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    .line 471
    new-instance v1, Lcom/inmobi/ads/k;

    iget-object v6, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/k;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    .line 472
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    .line 473
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->g()I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    .line 474
    new-instance v0, Lcom/inmobi/ads/l;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/l;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/l;

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 476
    return-void
.end method

.method private scheduleRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 483
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/l;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/l;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    .line 489
    invoke-virtual {v0}, Lcom/inmobi/ads/k;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_3

    .line 490
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring an attempt to schedule refresh when an ad is already loading or active."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/l;

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/ads/l;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setSizeFromLayoutParams()V
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 404
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 406
    :cond_0
    return-void
.end method

.method private swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    .line 525
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    .line 534
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/j;->a(Lcom/inmobi/ads/InMobiBanner$AnimationType;FF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 535
    if-nez v0, :cond_3

    .line 536
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->displayAd()V

    .line 537
    invoke-interface {p1}, Lcom/inmobi/ads/InMobiBanner$a;->a()V

    .line 560
    :goto_1
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    .line 528
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    .line 531
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    goto :goto_0

    .line 541
    :cond_3
    new-instance v1, Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/InMobiBanner$3;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 559
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->x()V

    .line 369
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->x()V

    .line 371
    :cond_0
    return-void
.end method

.method getFrameSizeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasValidSize()Z
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->load(Z)V

    .line 195
    return-void
.end method

.method load(Z)V
    .locals 4

    .prologue
    const/4 v1, -0x2

    .line 198
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "The layout params of the banner must be set before calling load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_3

    .line 207
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "The height or width of a Banner ad can\'t be WRAP_CONTENT"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$a;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 214
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 215
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner$b;->sendMessage(Landroid/os/Message;)Z

    .line 217
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/k;

    const-string v1, "AdActive"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/k;->c(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_5

    .line 232
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->setSizeFromLayoutParams()V

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_6

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/inmobi/ads/InMobiBanner$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/InMobiBanner$1;-><init>(Lcom/inmobi/ads/InMobiBanner;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 251
    :cond_6
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    .line 252
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->checkForRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/k;->b(Z)V

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 380
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->setSizeFromLayoutParams()V

    .line 382
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->setupBannerSizeObserver()V

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 387
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 396
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    .line 399
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 444
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 445
    if-nez p2, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 460
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 461
    if-eqz p1, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    goto :goto_0
.end method

.method public setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 359
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 361
    :cond_0
    return-void
.end method

.method public setEnableAutoRefresh(Z)V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 323
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-ne v0, p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 329
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-eqz v0, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    goto :goto_0

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    goto :goto_0
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/k;->a(Ljava/util/Map;)V

    .line 280
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/k;->a(Ljava/util/Map;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/k;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/k;->a(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/k;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/k;->a(Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method public setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V
    .locals 3

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 304
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please pass a non-null listener to the banner."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    .line 309
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner$b;->a(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    goto :goto_0
.end method

.method public setRefreshInterval(I)V
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->f()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/k;

    invoke-virtual {v0}, Lcom/inmobi/ads/k;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->f()I

    move-result p1

    .line 348
    :cond_0
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    .line 350
    :cond_1
    return-void
.end method

.method setupBannerSizeObserver()V
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/inmobi/ads/InMobiBanner$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiBanner$2;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 427
    return-void
.end method
