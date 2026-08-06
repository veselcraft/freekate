.class public final Lcom/yandex/mobile/ads/nativeads/NativeGenericAdView;
.super Lcom/yandex/mobile/ads/nativeads/NativeAdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/NativeAdView",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/nativeads/l;
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/l;

    return-object v0
.end method

.method public synthetic getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/NativeGenericAdView;->a()Lcom/yandex/mobile/ads/nativeads/l;

    move-result-object v0

    return-object v0
.end method

.method public setAgeView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "ageView"    # Landroid/widget/TextView;

    .prologue
    .line 86
    return-void
.end method

.method public setBodyView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "bodyView"    # Landroid/widget/TextView;

    .prologue
    .line 95
    return-void
.end method

.method public setCallToActionView(Landroid/widget/Button;)V
    .locals 0
    .param p1, "callToActionView"    # Landroid/widget/Button;

    .prologue
    .line 104
    return-void
.end method

.method public setDomainView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "domainView"    # Landroid/widget/TextView;

    .prologue
    .line 113
    return-void
.end method

.method public setFaviconView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "faviconView"    # Landroid/widget/ImageView;

    .prologue
    .line 122
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 131
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 140
    return-void
.end method

.method public setPriceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "priceView"    # Landroid/widget/TextView;

    .prologue
    .line 149
    return-void
.end method

.method public setRatingView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/yandex/mobile/ads/nativeads/Rating;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "ratingView":Landroid/view/View;, "TT;"
    return-void
.end method

.method public setReviewCountView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "reviewCountView"    # Landroid/widget/TextView;

    .prologue
    .line 167
    return-void
.end method

.method public setSponsoredView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "sponsoredView"    # Landroid/widget/TextView;

    .prologue
    .line 176
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 185
    return-void
.end method

.method public setWarningView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "warningView"    # Landroid/widget/TextView;

    .prologue
    .line 194
    return-void
.end method
