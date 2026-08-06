.class public final Lcom/yandex/mobile/ads/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enableLogging"    # Z

    .prologue
    .line 26
    invoke-static {p0}, Lcom/yandex/mobile/ads/utils/logger/b;->a(Z)V

    .line 27
    return-void
.end method

.method public static getLibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "2.41"

    return-object v0
.end method
