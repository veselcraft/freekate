.class Lcom/yandex/mobile/ads/nativeads/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/p;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/p;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/p$2;->a:Lcom/yandex/mobile/ads/nativeads/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/p$2;->a:Lcom/yandex/mobile/ads/nativeads/p;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/p;->a(Lcom/yandex/mobile/ads/nativeads/p;)V

    .line 58
    return-void
.end method
