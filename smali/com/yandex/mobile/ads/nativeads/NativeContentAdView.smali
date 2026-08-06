.class public final Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;
.super Lcom/yandex/mobile/ads/nativeads/NativeAdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/NativeAdView",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/ak;",
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

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method


# virtual methods
.method a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method c()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->c:Landroid/widget/Button;

    return-object v0
.end method

.method d()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method e()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method f()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method g()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNativeAd()Lcom/yandex/mobile/ads/nativeads/ak;
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdView;->getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ak;

    return-object v0
.end method

.method public bridge synthetic getNativeAd()Lcom/yandex/mobile/ads/nativeads/ao;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->getNativeAd()Lcom/yandex/mobile/ads/nativeads/ak;

    move-result-object v0

    return-object v0
.end method

.method h()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method i()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAgeView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "ageView"    # Landroid/widget/TextView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->a:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public setBodyView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "bodyView"    # Landroid/widget/TextView;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->b:Landroid/widget/TextView;

    .line 90
    return-void
.end method

.method public setCallToActionView(Landroid/widget/Button;)V
    .locals 0
    .param p1, "callToActionView"    # Landroid/widget/Button;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->c:Landroid/widget/Button;

    .line 99
    return-void
.end method

.method public setDomainView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "domainView"    # Landroid/widget/TextView;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->d:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->e:Landroid/widget/ImageView;

    .line 117
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->f:Landroid/widget/ImageView;

    .line 126
    return-void
.end method

.method public setSponsoredView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "sponsoredView"    # Landroid/widget/TextView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->g:Landroid/widget/TextView;

    .line 135
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->h:Landroid/widget/TextView;

    .line 144
    return-void
.end method

.method public setWarningView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "warningView"    # Landroid/widget/TextView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeContentAdView;->i:Landroid/widget/TextView;

    .line 153
    return-void
.end method
