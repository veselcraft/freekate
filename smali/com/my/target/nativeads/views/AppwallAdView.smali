.class public Lcom/my/target/nativeads/views/AppwallAdView;
.super Landroid/widget/FrameLayout;
.source "AppwallAdView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;,
        Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;,
        Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;,
        Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;
    }
.end annotation


# instance fields
.field private bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

.field private bannerVisibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;

.field private listView:Landroid/widget/ListView;

.field private viewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewMap:Ljava/util/HashMap;

    .line 65
    invoke-direct {p0, p1}, Lcom/my/target/nativeads/views/AppwallAdView;->initLayout(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/AppwallAdView;->setVerticalFadingEdgeEnabled(Z)V

    .line 68
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/AppwallAdView;->setBackgroundColor(I)V

    .line 69
    return-void
.end method

.method private countVisibleBanners()V
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 125
    :goto_1
    if-gt v1, v2, :cond_3

    .line 127
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    .line 128
    iget-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 130
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v4, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativeAppwallBanner;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 135
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->bannerVisibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->bannerVisibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;

    invoke-interface {v0, v3}, Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;->onBannersShown(Ljava/util/List;)V

    goto :goto_0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 76
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    .line 77
    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 78
    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 79
    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    iget-object v2, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v0, v3, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 83
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/my/target/nativeads/views/AppwallAdView;->addView(Landroid/view/View;II)V

    .line 84
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    const v1, -0x111112

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 102
    invoke-direct {p0}, Lcom/my/target/nativeads/views/AppwallAdView;->countVisibleBanners()V

    .line 104
    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 105
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/my/target/nativeads/views/AppwallAdView;->countVisibleBanners()V

    .line 114
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    check-cast p2, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;

    .line 165
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

    invoke-virtual {p2}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->getView()Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;->onBannerClick(Lcom/my/target/nativeads/views/AppwallAdTeaserView;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/my/target/nativeads/views/AppwallAdView;->countVisibleBanners()V

    .line 50
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public removeBanners()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setBannerClickListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdView;->bannerClickListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;

    .line 158
    return-void
.end method

.method public setBannerVisibilityListener(Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdView;->bannerVisibilityListener:Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;

    .line 153
    return-void
.end method

.method public setupView(Lcom/my/target/nativeads/NativeAppwallAd;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/my/target/nativeads/views/AppwallAdView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getBanners()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;-><init>(Lcom/my/target/nativeads/views/AppwallAdView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    return-void
.end method
