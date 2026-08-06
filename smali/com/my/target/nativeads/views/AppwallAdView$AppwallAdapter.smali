.class public Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppwallAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/AppwallAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppwallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/views/AppwallAdView;


# direct methods
.method public constructor <init>(Lcom/my/target/nativeads/views/AppwallAdView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;->this$0:Lcom/my/target/nativeads/views/AppwallAdView;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 174
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    .line 181
    if-nez p2, :cond_0

    .line 183
    new-instance v1, Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v2, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;-><init>(Lcom/my/target/nativeads/views/AppwallAdTeaserView;Landroid/content/Context;)V

    :goto_0
    move-object v1, v2

    .line 188
    check-cast v1, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;

    invoke-virtual {v1}, Lcom/my/target/nativeads/views/AppwallAdView$AppwallCardPlaceholder;->getView()Lcom/my/target/nativeads/views/AppwallAdTeaserView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->setNativeAppwallBanner(Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    .line 190
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
