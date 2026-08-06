.class public final Lcom/inmobi/ads/InMobiInterstitial;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiInterstitial$a;,
        Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

.field private mContext:Landroid/content/Context;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$a;

.field private mInterstitialAdUnit:Lcom/inmobi/ads/o;

.field private mIsHardwareAccelerationDisabled:Z

.field private mIsInitialized:Z

.field private mKeywords:Ljava/lang/String;

.field private mListener:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

.field private mPlacementId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 303
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiInterstitial$1;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$a;

    .line 99
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before trying to create an ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    if-nez p4, :cond_1

    .line 104
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "The Ad unit cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    .line 108
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create ad unit with NULL context object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 112
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContext:Landroid/content/Context;

    .line 113
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    .line 114
    iput-object p4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

    .line 115
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$a;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/ak;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getPlacementObj()Lcom/inmobi/ads/ak;

    move-result-object v0

    return-object v0
.end method

.method private getPlacementObj()Lcom/inmobi/ads/ak;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/inmobi/ads/ak;

    iget-wide v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    invoke-static {v1}, Lcom/inmobi/ads/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/inmobi/ads/ak;-><init>(JLjava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ak;->a(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ak;->a(Ljava/util/Map;)V

    .line 133
    return-object v0
.end method

.method private setupAdUnit()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsHardwareAccelerationDisabled:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->A()V

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsHardwareAccelerationDisabled:Z

    .line 226
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->z()Z

    move-result v0

    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/inmobi/ads/i;->a()Lcom/inmobi/ads/i;

    move-result-object v0

    .line 143
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getPlacementObj()Lcom/inmobi/ads/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->a(Lcom/inmobi/ads/ak;)Lcom/inmobi/ads/AdUnit;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->a()V

    .line 146
    if-eqz v0, :cond_1

    .line 147
    check-cast v0, Lcom/inmobi/ads/o;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    .line 148
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->a(Lcom/inmobi/ads/AdUnit$a;)V

    .line 149
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->setupAdUnit()V

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$a;

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v0, Lcom/inmobi/ads/o;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    iget-object v4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/o;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    .line 155
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->setupAdUnit()V

    .line 156
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->o()V

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
    .line 214
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 215
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    .line 217
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->x()V

    .line 177
    :cond_0
    return-void
.end method

.method public show(II)V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/o;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/o;->a(II)V

    .line 193
    :cond_0
    return-void
.end method
