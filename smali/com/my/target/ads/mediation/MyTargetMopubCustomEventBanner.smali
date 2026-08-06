.class public Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "MyTargetMopubCustomEventBanner.java"


# static fields
.field private static final SLOT_ID_KEY:Ljava/lang/String; = "slotId"


# instance fields
.field private bannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private myTargetView:Lcom/my/target/ads/MyTargetView;

.field private myTargetViewListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 82
    new-instance v0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner$1;-><init>(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)V

    iput-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetViewListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->bannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "slotId"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    :cond_0
    const-string v0, "Unable to get slotId from parameter json. Probably Admob mediation misconfiguration."

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 51
    if-eqz p2, :cond_1

    .line 52
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const-string v0, "slotId"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    iput-object p2, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->bannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 60
    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    if-nez v1, :cond_3

    .line 62
    new-instance v1, Lcom/my/target/ads/MyTargetView;

    invoke-direct {v1, p1}, Lcom/my/target/ads/MyTargetView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    .line 63
    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v1, v0, v2, v2}, Lcom/my/target/ads/MyTargetView;->init(IIZ)V

    .line 64
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/mopub/MopubCustomParamsUtils;->fillCustomParams(Lcom/my/target/ads/CustomParams;Ljava/util/Map;)Lcom/my/target/ads/CustomParams;

    .line 66
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    iget-object v1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetViewListener:Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    invoke-virtual {v0, v1}, Lcom/my/target/ads/MyTargetView;->setListener(Lcom/my/target/ads/MyTargetView$MyTargetViewListener;)V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->load()V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->destroy()V

    .line 77
    iput-object v1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->myTargetView:Lcom/my/target/ads/MyTargetView;

    .line 79
    :cond_0
    iput-object v1, p0, Lcom/my/target/ads/mediation/MyTargetMopubCustomEventBanner;->bannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 80
    return-void
.end method
