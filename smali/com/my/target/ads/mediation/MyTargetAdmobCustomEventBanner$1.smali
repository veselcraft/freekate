.class Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;
.super Ljava/lang/Object;
.source "MyTargetAdmobCustomEventBanner.java"

# interfaces
.implements Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;


# direct methods
.method constructor <init>(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/MyTargetView;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClicked()V

    .line 179
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdOpened()V

    .line 180
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLeftApplication()V

    .line 182
    :cond_0
    return-void
.end method

.method public onLoad(Lcom/my/target/ads/MyTargetView;)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/my/target/ads/MyTargetView;->start()V

    .line 163
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetAdmobCustomEventBanner;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    .line 171
    :cond_0
    return-void
.end method
