.class public final Lcom/yandex/mobile/ads/AdView;
.super Lcom/yandex/mobile/ads/InternalAdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/InternalAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/InternalAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/yandex/mobile/ads/InternalAdView;->destroy()V

    .line 62
    return-void
.end method

.method public bridge synthetic getAdEventListener()Lcom/yandex/mobile/ads/AdEventListener;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getAdEventListener()Lcom/yandex/mobile/ads/AdEventListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdSize()Lcom/yandex/mobile/ads/AdSize;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getAdSize()Lcom/yandex/mobile/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBlockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/mobile/ads/InternalAdView;->getBlockId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadAd(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->loadAd(Lcom/yandex/mobile/ads/AdRequest;)V

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/mobile/ads/InternalAdView;->pause()V

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yandex/mobile/ads/InternalAdView;->resume()V

    return-void
.end method

.method public bridge synthetic setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->setAdEventListener(Lcom/yandex/mobile/ads/AdEventListener;)V

    return-void
.end method

.method public bridge synthetic setAdSize(Lcom/yandex/mobile/ads/AdSize;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->setAdSize(Lcom/yandex/mobile/ads/AdSize;)V

    return-void
.end method

.method public bridge synthetic setAutoRefreshEnabled(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->setAutoRefreshEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setBlockId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->setBlockId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic shouldOpenLinksInApp(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/InternalAdView;->shouldOpenLinksInApp(Z)V

    return-void
.end method
