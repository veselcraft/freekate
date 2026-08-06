.class Lcom/yandex/mobile/ads/nativeads/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/aj$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/ax$a;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/ax$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/ai;->a:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ai;->b:Lcom/yandex/mobile/ads/ax$a;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/yandex/mobile/ads/ax$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ai;->b:Lcom/yandex/mobile/ads/ax$a;

    return-object v0
.end method
