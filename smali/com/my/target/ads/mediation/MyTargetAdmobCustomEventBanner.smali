.class public Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;
.super Ljava/lang/Object;
.source "MyTargetAdmobCustomEventBanner.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# static fields
.field private static final SLOT_ID_KEY:Ljava/lang/String; = "slotId"


# instance fields
.field private bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

.field private myTargetView:Lcom/my/target/ads/MyTargetView;

.field private final myTargetViewListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;-><init>(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)V

    iput-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetViewListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    return-object v0
.end method

.method private load(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/google/android/gms/ads/mediation/MediationAdRequest;IILandroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 115
    iput-object p1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    .line 116
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v0, p5}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    .line 120
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/my/target/ads/MyTargetView;->init(IIZ)V

    .line 122
    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/ads/CustomParams;->setGender(I)V

    .line 126
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 130
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 132
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 134
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 135
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v1}, Lcom/my/target/ads/MyTargetView;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/target/ads/CustomParams;->setAge(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    const-string v1, "mediation"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetViewListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->load()V

    .line 143
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->destroy()V

    .line 152
    iput-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    .line 154
    :cond_0
    iput-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->bannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->pause()V

    .line 192
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->resume()V

    .line 201
    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request banner ad from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "slotId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 82
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object v5, p1

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->load(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/google/android/gms/ads/mediation/MediationAdRequest;IILandroid/content/Context;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    const-string v0, "Unable to get slotId from parameter json. Probably Admob mediation misconfiguration."

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2, v4}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 89
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->load(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/google/android/gms/ads/mediation/MediationAdRequest;IILandroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->load(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/google/android/gms/ads/mediation/MediationAdRequest;IILandroid/content/Context;)V

    goto :goto_0

    .line 103
    :cond_3
    if-eqz p2, :cond_0

    .line 105
    invoke-interface {p2, v4}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    goto :goto_0
.end method
