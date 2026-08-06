.class Lcom/yandex/mobile/ads/t$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/t$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/t$3;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/t$3;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yandex/mobile/ads/t$3$1;->a:Lcom/yandex/mobile/ads/t$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yandex/mobile/ads/t$3$1;->a:Lcom/yandex/mobile/ads/t$3;

    iget-object v0, v0, Lcom/yandex/mobile/ads/t$3;->a:Lcom/yandex/mobile/ads/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/t;->a(Lcom/yandex/mobile/ads/t;Z)V

    .line 102
    return-void
.end method
