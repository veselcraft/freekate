.class public Lcom/yandex/mobile/ads/nativeads/y;
.super Lcom/yandex/mobile/ads/ax;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/ax$a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/ax;-><init>(Lcom/yandex/mobile/ads/ax$a;)V

    .line 19
    return-void
.end method


# virtual methods
.method public c()Lcom/yandex/mobile/ads/report/b$b;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/y;->b()Lcom/yandex/mobile/ads/ax$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/report/b$b;->i:Lcom/yandex/mobile/ads/report/b$b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/report/b$b;->j:Lcom/yandex/mobile/ads/report/b$b;

    goto :goto_0
.end method
