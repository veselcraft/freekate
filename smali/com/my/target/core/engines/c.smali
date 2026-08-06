.class public final Lcom/my/target/core/engines/c;
.super Lcom/my/target/core/engines/a;
.source "AppwallAdEngine.java"

# interfaces
.implements Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;
.implements Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;


# instance fields
.field private c:Lcom/my/target/nativeads/NativeAppwallAd;

.field private d:Lcom/my/target/nativeads/views/AppwallAdView;


# direct methods
.method public constructor <init>(Lcom/my/target/nativeads/NativeAppwallAd;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/my/target/core/engines/c;->c:Lcom/my/target/nativeads/NativeAppwallAd;

    .line 1032
    new-instance v0, Lcom/my/target/nativeads/views/AppwallAdView;

    iget-object v1, p0, Lcom/my/target/core/engines/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/nativeads/views/AppwallAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    .line 1033
    iget-object v0, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    iget-object v1, p0, Lcom/my/target/core/engines/c;->c:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/AppwallAdView;->setupView(Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 1034
    iget-object v0, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/AppwallAdView;->setBannerClickListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;)V

    .line 1035
    iget-object v0, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/AppwallAdView;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/AppwallAdView;->setBannerVisibilityListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;)V

    .line 1038
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1039
    iget-object v1, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/AppwallAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v0, p0, Lcom/my/target/core/engines/c;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final onBannerClick(Lcom/my/target/nativeads/views/AppwallAdTeaserView;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/my/target/core/engines/c;->c:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-virtual {p1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getBanner()Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/NativeAppwallAd;->handleBannerClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    .line 48
    iget-object v0, p0, Lcom/my/target/core/engines/c;->d:Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/AppwallAdView;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public final onBannersShown(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/my/target/core/engines/c;->c:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/NativeAppwallAd;->handleBannersShow(Ljava/util/List;)V

    .line 55
    return-void
.end method
