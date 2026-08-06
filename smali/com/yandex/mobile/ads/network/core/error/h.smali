.class public Lcom/yandex/mobile/ads/network/core/error/h;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/mobile/ads/network/core/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/o;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    .line 50
    return-void
.end method
