.class public Lcom/yandex/mobile/ads/network/core/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/core/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/core/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/yandex/mobile/ads/network/core/g$1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/network/core/g$1;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/g;->a:Ljava/util/concurrent/Executor;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;",
            "Lcom/yandex/mobile/ads/network/core/error/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p2}, Lcom/yandex/mobile/ads/network/core/s;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/g;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/yandex/mobile/ads/network/core/g$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/yandex/mobile/ads/network/core/g$a;-><init>(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/network/core/g;->a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->x()V

    .line 63
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/yandex/mobile/ads/network/core/g$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/yandex/mobile/ads/network/core/g$a;-><init>(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
