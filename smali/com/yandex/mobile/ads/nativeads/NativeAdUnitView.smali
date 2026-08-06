.class public Lcom/yandex/mobile/ads/nativeads/NativeAdUnitView;
.super Lcom/yandex/mobile/ads/nativeads/NativeAdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/NativeAdView",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/w;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/nativeads/w;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/w;

    return-object v0
.end method

.method public synthetic getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdUnitView;->a()Lcom/yandex/mobile/ads/nativeads/w;

    move-result-object v0

    return-object v0
.end method

.method public setSponsoredView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "sponsoredView"    # Landroid/widget/TextView;

    .prologue
    .line 67
    return-void
.end method
