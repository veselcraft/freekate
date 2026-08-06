.class Lcom/yandex/mobile/ads/nativeads/ao$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/as$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/ao;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/ao;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ao$2;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/mobile/ads/ax;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao$2;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->d(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/PhoneStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao$2;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/ao;->c(Lcom/yandex/mobile/ads/nativeads/ao;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao$2;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/ao;->a(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/nativeads/as;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/yandex/mobile/ads/nativeads/as;->a(IZ)Lcom/yandex/mobile/ads/ax;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
