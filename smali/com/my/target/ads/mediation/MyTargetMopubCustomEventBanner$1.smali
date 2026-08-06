.class Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;
.super Ljava/lang/Object;
.source "MyTargetMopubCustomEventBanner.java"

# interfaces
.implements Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;


# direct methods
.method constructor <init>(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/MyTargetView;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 103
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    .line 105
    :cond_0
    return-void
.end method

.method public onLoad(Lcom/my/target/ads/MyTargetView;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/my/target/ads/MyTargetView;->start()V

    .line 88
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;->this$0:Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;

    invoke-static {v0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 95
    :cond_0
    return-void
.end method
