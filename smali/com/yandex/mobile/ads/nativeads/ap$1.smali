.class Lcom/yandex/mobile/ads/nativeads/ap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/background/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/nativeads/ap;->onAdLeftApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/ap;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/ap;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ap$1;->a:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap$1;->a:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/ap;->a(Lcom/yandex/mobile/ads/nativeads/ap;)Lcom/yandex/mobile/ads/a;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/a$a;->a:Lcom/yandex/mobile/ads/a$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/a;->b(Lcom/yandex/mobile/ads/a$a;)V

    .line 97
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ap$1;->a:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/ap;->b(Lcom/yandex/mobile/ads/nativeads/ap;)Lcom/yandex/mobile/ads/background/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/background/a;->a(Lcom/yandex/mobile/ads/background/d;)V

    .line 98
    return-void
.end method
