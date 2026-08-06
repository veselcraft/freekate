.class public Lcom/my/target/nativeads/factories/NativeViewsFactory;
.super Ljava/lang/Object;
.source "NativeViewsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppwallAppView(Landroid/content/Context;)Lcom/my/target/nativeads/views/AppwallAdTeaserView;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAppwallAppView(Lcom/my/target/nativeads/banners/NativeAppwallBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/AppwallAdTeaserView;
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getAppwallAppView(Landroid/content/Context;)Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setNativeAppwallBanner(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    .line 26
    return-object v0
.end method

.method public static getAppwallView(Landroid/content/Context;)Lcom/my/target/nativeads/views/AppwallAdView;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/my/target/nativeads/views/AppwallAdView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/AppwallAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAppwallView(Lcom/my/target/nativeads/NativeAppwallAd;Landroid/content/Context;)Lcom/my/target/nativeads/views/AppwallAdView;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getAppwallView(Landroid/content/Context;)Lcom/my/target/nativeads/views/AppwallAdView;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/AppwallAdView;->setupView(Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 38
    return-object v0
.end method

.method public static getChatListView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ChatListAdView;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/my/target/nativeads/views/ChatListAdView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/ChatListAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getChatListView(Lcom/my/target/nativeads/NativeAd;Landroid/content/Context;)Lcom/my/target/nativeads/views/ChatListAdView;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-static {v0, p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getChatListView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/ChatListAdView;

    move-result-object v0

    return-object v0
.end method

.method public static getChatListView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/ChatListAdView;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getChatListView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ChatListAdView;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/ChatListAdView;->setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V

    .line 55
    return-object v0
.end method

.method public static getContentStreamCardView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamCardView;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/my/target/nativeads/views/ContentStreamCardView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/ContentStreamCardView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getContentStreamView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamAdView;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/my/target/nativeads/views/ContentStreamAdView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/ContentStreamAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getContentStreamView(Lcom/my/target/nativeads/NativeAd;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamAdView;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-static {v0, p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getContentStreamView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamAdView;

    move-result-object v0

    return-object v0
.end method

.method public static getContentStreamView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamAdView;
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getContentStreamView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentStreamAdView;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/ContentStreamAdView;->setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V

    .line 78
    return-object v0
.end method

.method public static getContentWallView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentWallAdView;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/my/target/nativeads/views/ContentWallAdView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/ContentWallAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getContentWallView(Lcom/my/target/nativeads/NativeAd;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentWallAdView;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-static {v0, p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getContentWallView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentWallAdView;

    move-result-object v0

    return-object v0
.end method

.method public static getContentWallView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentWallAdView;
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getContentWallView(Landroid/content/Context;)Lcom/my/target/nativeads/views/ContentWallAdView;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/ContentWallAdView;->setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V

    .line 95
    return-object v0
.end method

.method public static getMediaAdView(Landroid/content/Context;)Lcom/my/target/nativeads/views/MediaAdView;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/my/target/nativeads/views/MediaAdView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/MediaAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getNewsFeedView(Landroid/content/Context;)Lcom/my/target/nativeads/views/NewsFeedAdView;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/my/target/nativeads/views/NewsFeedAdView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/NewsFeedAdView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getNewsFeedView(Lcom/my/target/nativeads/NativeAd;Landroid/content/Context;)Lcom/my/target/nativeads/views/NewsFeedAdView;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/my/target/nativeads/NativeAd;->getBanner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoBanner;

    invoke-static {v0, p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getNewsFeedView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/NewsFeedAdView;

    move-result-object v0

    return-object v0
.end method

.method public static getNewsFeedView(Lcom/my/target/nativeads/banners/NativePromoBanner;Landroid/content/Context;)Lcom/my/target/nativeads/views/NewsFeedAdView;
    .locals 1

    .prologue
    .line 115
    invoke-static {p1}, Lcom/my/target/nativeads/factories/NativeViewsFactory;->getNewsFeedView(Landroid/content/Context;)Lcom/my/target/nativeads/views/NewsFeedAdView;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Lcom/my/target/nativeads/views/NewsFeedAdView;->setupView(Lcom/my/target/nativeads/banners/NativePromoBanner;)V

    .line 117
    return-object v0
.end method

.method public static getPromoCardRecyclerView(Landroid/content/Context;)Lcom/my/target/nativeads/views/PromoCardRecyclerView;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
