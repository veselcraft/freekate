.class Lcom/my/target/nativeads/NativeAppwallAd$2;
.super Ljava/lang/Object;
.source "NativeAppwallAd.java"

# interfaces
.implements Lcom/my/target/nativeads/views/AppwallAdView$BannerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/NativeAppwallAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/NativeAppwallAd;


# direct methods
.method constructor <init>(Lcom/my/target/nativeads/NativeAppwallAd;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd$2;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClick(Lcom/my/target/nativeads/views/AppwallAdTeaserView;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$2;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-virtual {p1}, Lcom/my/target/nativeads/views/AppwallAdTeaserView;->getBanner()Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/my/target/nativeads/NativeAppwallAd;->access$000(Lcom/my/target/nativeads/NativeAppwallAd;Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    .line 94
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$2;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->access$100(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/nativeads/views/AppwallAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$2;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->access$100(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/nativeads/views/AppwallAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/AppwallAdView;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method
