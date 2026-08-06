.class public Lcom/yandex/mobile/ads/InterstitialEventListener$SimpleInterstitialEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/InterstitialEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/InterstitialEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInterstitialEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onInterstitialFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 0
    .param p1, "error"    # Lcom/yandex/mobile/ads/AdRequestError;

    .prologue
    .line 48
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onInterstitialShown()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
