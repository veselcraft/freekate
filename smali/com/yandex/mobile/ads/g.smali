.class public abstract Lcom/yandex/mobile/ads/g;
.super Lcom/yandex/mobile/ads/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/yandex/mobile/ads/w;",
        ">",
        "Lcom/yandex/mobile/ads/y",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/y;-><init>(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/g;->a:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/g;->c:Z

    return v0
.end method
