.class public Lcom/yandex/mobile/ads/network/b;
.super Lcom/yandex/mobile/ads/network/core/k;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/r;ILcom/yandex/mobile/ads/network/core/k$b;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/yandex/mobile/ads/network/core/k;-><init>(Lcom/yandex/mobile/ads/network/core/r;Lcom/yandex/mobile/ads/network/core/k$b;)V

    .line 19
    iput p2, p0, Lcom/yandex/mobile/ads/network/b;->a:I

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;)Lcom/yandex/mobile/ads/network/core/k$c;
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/yandex/mobile/ads/network/b;->a:I

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;II)Lcom/yandex/mobile/ads/network/core/k$c;

    move-result-object v0

    return-object v0
.end method
