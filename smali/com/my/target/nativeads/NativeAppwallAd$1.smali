.class Lcom/my/target/nativeads/NativeAppwallAd$1;
.super Ljava/lang/Object;
.source "NativeAppwallAd.java"

# interfaces
.implements Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;


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
    .line 72
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd$1;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannersShown(Ljava/util/List;)V
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
    .line 77
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$1;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/NativeAppwallAd;->handleBannersShow(Ljava/util/List;)V

    .line 78
    return-void
.end method
