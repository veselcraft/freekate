.class Lcom/yandex/mobile/ads/ao$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/core/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yandex/mobile/ads/nativeads/g;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lcom/yandex/mobile/ads/nativeads/h;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/yandex/mobile/ads/nativeads/g;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/yandex/mobile/ads/nativeads/h;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yandex/mobile/ads/ao$1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/yandex/mobile/ads/ao$1;->b:Lcom/yandex/mobile/ads/nativeads/g;

    iput-object p3, p0, Lcom/yandex/mobile/ads/ao$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/yandex/mobile/ads/ao$1;->d:Lcom/yandex/mobile/ads/nativeads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/mobile/ads/ao$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yandex/mobile/ads/ao$1;->d:Lcom/yandex/mobile/ads/nativeads/h;

    iget-object v1, p0, Lcom/yandex/mobile/ads/ao$1;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/nativeads/h;->a(Ljava/util/Map;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 71
    invoke-direct {p0}, Lcom/yandex/mobile/ads/ao$1;->a()V

    .line 72
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/k$c;)V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/k$c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/yandex/mobile/ads/ao$1;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/yandex/mobile/ads/ao$1;->b:Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/yandex/mobile/ads/ao$1;->a()V

    .line 82
    :cond_0
    return-void
.end method
