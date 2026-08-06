.class Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;
.super Ljava/lang/Object;
.source "MyTargetAdmobCustomEventInterstitial.java"

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;


# direct methods
.method constructor <init>(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "admob mediation interstitial clicked"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClicked()V

    .line 62
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "admob mediation interstitial dismissed"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    .line 73
    :cond_0
    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .locals 1

    .prologue
    .line 84
    const-string v0, "admob mediation interstitial displayed"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdOpened()V

    .line 90
    :cond_0
    return-void
.end method

.method public onLoad(Lcom/my/target/ads/InterstitialAd;)V
    .locals 1

    .prologue
    .line 35
    const-string v0, "admob mediation interstitial loaded"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    .line 40
    :cond_0
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "admob mediation interstitial failed to load: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventInterstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
