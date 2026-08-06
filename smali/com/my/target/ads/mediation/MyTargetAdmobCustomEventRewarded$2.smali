.class Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;
.super Ljava/lang/Object;
.source "MyTargetAdmobCustomEventRewarded.java"

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;


# direct methods
.method constructor <init>(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    .line 63
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 64
    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    .line 70
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 71
    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 85
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    .line 86
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 87
    return-void
.end method

.method public onLoad(Lcom/my/target/ads/InterstitialAd;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    .line 48
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 49
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialAd;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    .line 57
    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    iget-object v2, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded$2;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;

    .line 77
    invoke-static {v2}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;->access$100(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventRewarded;)Lcom/google/android/gms/ads/reward/RewardItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    .line 78
    return-void
.end method
