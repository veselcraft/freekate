.class public final Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;
.super Lcom/yandex/mobile/ads/nativeads/NativeAdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/NativeAdView",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/af;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method


# virtual methods
.method a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method c()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->c:Landroid/widget/Button;

    return-object v0
.end method

.method d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method e()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method f()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method g()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNativeAd()Lcom/yandex/mobile/ads/nativeads/af;
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/af;

    return-object v0
.end method

.method public bridge synthetic getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->getNativeAd()Lcom/yandex/mobile/ads/nativeads/af;

    move-result-object v0

    return-object v0
.end method

.method h()Landroid/view/View;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->h:Landroid/view/View;

    return-object v0
.end method

.method i()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method j()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method k()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method l()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAgeView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "ageView"    # Landroid/widget/TextView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->a:Landroid/widget/TextView;

    .line 86
    return-void
.end method

.method public setBodyView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "bodyView"    # Landroid/widget/TextView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->b:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method public setCallToActionView(Landroid/widget/Button;)V
    .locals 0
    .param p1, "callToActionView"    # Landroid/widget/Button;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->c:Landroid/widget/Button;

    .line 104
    return-void
.end method

.method public setDomainView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "domainView"    # Landroid/widget/TextView;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->d:Landroid/widget/TextView;

    .line 113
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->e:Landroid/widget/ImageView;

    .line 122
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->f:Landroid/widget/ImageView;

    .line 131
    return-void
.end method

.method public setPriceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "priceView"    # Landroid/widget/TextView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->g:Landroid/widget/TextView;

    .line 140
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
    .line 148
    .local p1, "ratingView":Landroid/view/View;, "TT;"
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->h:Landroid/view/View;

    .line 149
    return-void
.end method

.method public setReviewCountView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "reviewCountView"    # Landroid/widget/TextView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->i:Landroid/widget/TextView;

    .line 158
    return-void
.end method

.method public setSponsoredView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "sponsoredView"    # Landroid/widget/TextView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->j:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->k:Landroid/widget/TextView;

    .line 176
    return-void
.end method

.method public setWarningView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "warningView"    # Landroid/widget/TextView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAdView;->l:Landroid/widget/TextView;

    .line 185
    return-void
.end method
