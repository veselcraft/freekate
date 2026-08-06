.class public abstract Lcom/yandex/mobile/ads/network/request/f;
.super Lcom/yandex/mobile/ads/network/request/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/network/request/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<TT;>;",
            "Landroid/content/Context;",
            "TR;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/network/request/c;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    .line 31
    iput-object p5, p0, Lcom/yandex/mobile/ads/network/request/f;->a:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/request/f;->b:Ljava/lang/ref/WeakReference;

    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/request/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/f;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/network/request/f;->c(Ljava/lang/Object;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V

    .line 35
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/request/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/f;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Lcom/yandex/mobile/ads/network/request/f;->a(Ljava/lang/Object;I)Lcom/yandex/mobile/ads/report/b;

    move-result-object v1

    .line 66
    invoke-static {v0}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/error/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p1, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    iget v0, v0, Lcom/yandex/mobile/ads/network/core/o;->a:I

    .line 49
    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/network/request/f;->b(I)V

    .line 51
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/network/request/c;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/error/h;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget v0, p1, Lcom/yandex/mobile/ads/network/core/o;->a:I

    .line 40
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/network/request/f;->b(I)V

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/network/request/f;->a(Lcom/yandex/mobile/ads/network/core/o;I)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/yandex/mobile/ads/network/core/o;I)Lcom/yandex/mobile/ads/network/core/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            "I)",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;I)Lcom/yandex/mobile/ads/report/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;I)",
            "Lcom/yandex/mobile/ads/report/b;"
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;)Lcom/yandex/mobile/ads/report/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/yandex/mobile/ads/report/b;"
        }
    .end annotation
.end method
