.class Lcom/yandex/mobile/ads/network/core/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/network/core/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/network/core/q;

.field final synthetic b:Lcom/yandex/mobile/ads/network/core/d;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/network/core/d;Lcom/yandex/mobile/ads/network/core/q;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/d$1;->b:Lcom/yandex/mobile/ads/network/core/d;

    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/d$1;->a:Lcom/yandex/mobile/ads/network/core/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/d$1;->b:Lcom/yandex/mobile/ads/network/core/d;

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/d;->a(Lcom/yandex/mobile/ads/network/core/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/d$1;->a:Lcom/yandex/mobile/ads/network/core/q;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
