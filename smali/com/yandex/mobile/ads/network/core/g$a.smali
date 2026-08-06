.class Lcom/yandex/mobile/ads/network/core/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/network/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/network/core/q;

.field private final b:Lcom/yandex/mobile/ads/network/core/s;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/q;Lcom/yandex/mobile/ads/network/core/s;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/g$a;->a:Lcom/yandex/mobile/ads/network/core/q;

    .line 86
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/g$a;->b:Lcom/yandex/mobile/ads/network/core/s;

    .line 87
    iput-object p3, p0, Lcom/yandex/mobile/ads/network/core/g$a;->c:Ljava/lang/Runnable;

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->a:Lcom/yandex/mobile/ads/network/core/q;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->a:Lcom/yandex/mobile/ads/network/core/q;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->e()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->b:Lcom/yandex/mobile/ads/network/core/s;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/s;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->a:Lcom/yandex/mobile/ads/network/core/q;

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/g$a;->b:Lcom/yandex/mobile/ads/network/core/s;

    iget-object v1, v1, Lcom/yandex/mobile/ads/network/core/s;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Ljava/lang/Object;)V

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->b:Lcom/yandex/mobile/ads/network/core/s;

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/network/core/s;->d:Z

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->a:Lcom/yandex/mobile/ads/network/core/q;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q;->e()V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/g$a;->a:Lcom/yandex/mobile/ads/network/core/q;

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/g$a;->b:Lcom/yandex/mobile/ads/network/core/s;

    iget-object v1, v1, Lcom/yandex/mobile/ads/network/core/s;->c:Lcom/yandex/mobile/ads/network/core/error/h;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->b(Lcom/yandex/mobile/ads/network/core/error/h;)V

    goto :goto_1
.end method
