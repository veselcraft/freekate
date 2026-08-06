.class public Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;
.super Lcom/google/android/gms/ads/AdListener;
.source "MyTargetAdmobCustomEventInterstitial.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field private static final SLOT_ID_KEY:Ljava/lang/String; = "slotId"


# instance fields
.field private interstitial:Lcom/my/target/ads/InterstitialAd;

.field private final interstitialAdListener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

.field private interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 29
    new-instance v0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;-><init>(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)V

    iput-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitialAdListener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 102
    iput-object p2, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 107
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "slotId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    new-instance v1, Lcom/my/target/ads/InterstitialAd;

    invoke-direct {v1, v0, p1}, Lcom/my/target/ads/InterstitialAd;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    .line 122
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    const-string v1, "mediation"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz p4, :cond_0

    .line 125
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/ads/CustomParams;->setGender(I)V

    .line 126
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

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

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/my/target/ads/InterstitialAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/target/ads/CustomParams;->setAge(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitialAdListener:Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 139
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->load()V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    const-string v0, "Unable to get slotId from parameter json. Probably Admob mediation misconfiguration."

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->interstitial:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->show()V

    .line 146
    return-void
.end method
