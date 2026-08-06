.class public Lcom/yandex/mobile/ads/AdEventListener$SimpleAdEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleAdEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 0
    .param p1, "error"    # Lcom/yandex/mobile/ads/AdRequestError;

    .prologue
    .line 38
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
