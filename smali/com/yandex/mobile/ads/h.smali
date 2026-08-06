.class public Lcom/yandex/mobile/ads/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/h$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/mobile/ads/AdRequestError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/av;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yandex/mobile/ads/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 83
    sput-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->h:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/4 v1, 0x2

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->f:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/4 v1, 0x5

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->d:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/16 v1, 0x8

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->e:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/16 v1, 0xa

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->k:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/4 v1, 0x4

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->k:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/16 v1, 0x9

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->g:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    const/4 v1, 0x7

    sget-object v2, Lcom/yandex/mobile/ads/AdRequestError;->j:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/w;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/h;->b:Ljava/lang/ref/WeakReference;

    .line 48
    invoke-static {}, Lcom/yandex/mobile/ads/av;->a()Lcom/yandex/mobile/ads/av;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/h;->a:Lcom/yandex/mobile/ads/av;

    .line 49
    return-void
.end method

.method public static a(I)Lcom/yandex/mobile/ads/AdRequestError;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/yandex/mobile/ads/h;->c:Landroid/util/SparseArray;

    sget-object v1, Lcom/yandex/mobile/ads/AdRequestError;->r:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/AdRequestError;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yandex/mobile/ads/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/w;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/yandex/mobile/ads/h;->a:Lcom/yandex/mobile/ads/av;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/w;->o()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yandex/mobile/ads/av;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method a(Lcom/yandex/mobile/ads/network/request/b;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/w;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/yandex/mobile/ads/h;->a:Lcom/yandex/mobile/ads/av;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/w;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/yandex/mobile/ads/av;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/network/core/q;)V

    .line 56
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/h;->a()V

    .line 68
    iget-object v0, p0, Lcom/yandex/mobile/ads/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 69
    return-void
.end method
