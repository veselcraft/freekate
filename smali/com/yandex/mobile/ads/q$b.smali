.class Lcom/yandex/mobile/ads/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/q$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/av;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/q$b;->a:Ljava/lang/ref/WeakReference;

    .line 183
    invoke-static {}, Lcom/yandex/mobile/ads/av;->a()Lcom/yandex/mobile/ads/av;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/q$b;->b:Lcom/yandex/mobile/ads/av;

    .line 184
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yandex/mobile/ads/q$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Lcom/yandex/mobile/ads/network/request/e;

    new-instance v2, Lcom/yandex/mobile/ads/q$b$1;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/q$b$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lcom/yandex/mobile/ads/network/request/e;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    .line 203
    iget-object v2, p0, Lcom/yandex/mobile/ads/q$b;->b:Lcom/yandex/mobile/ads/av;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/mobile/ads/av;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/network/core/q;)V

    .line 205
    :cond_0
    return-void
.end method
