.class Lcom/yandex/mobile/ads/au$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/au;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/au;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yandex/mobile/ads/au$1;->a:Lcom/yandex/mobile/ads/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yandex/mobile/ads/au$1;->a:Lcom/yandex/mobile/ads/au;

    iget-object v1, p0, Lcom/yandex/mobile/ads/au$1;->a:Lcom/yandex/mobile/ads/au;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/au;->k()Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/au;->a(Lcom/yandex/mobile/ads/AdRequest;)V

    .line 65
    return-void
.end method
