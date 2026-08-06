.class Lcom/yandex/mobile/ads/nativeads/ao$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/PhoneStateTracker$b;


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
    .line 201
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ao$1;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao$1;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/ao;->a(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/nativeads/as;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/as;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 205
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPhoneStateChanged(), intent.getAction = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNativeAdViewShown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clazz = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao$1;->a:Lcom/yandex/mobile/ads/nativeads/ao;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/ao;->b(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/as;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yandex/mobile/ads/as;->a(Landroid/content/Intent;Z)V

    .line 209
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
