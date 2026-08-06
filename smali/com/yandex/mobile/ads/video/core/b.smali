.class public Lcom/yandex/mobile/ads/video/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/mobile/ads/video/core/b;


# instance fields
.field private c:Lcom/yandex/mobile/ads/video/network/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/core/b;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/yandex/mobile/ads/network/c;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/network/c;-><init>()V

    new-instance v1, Lcom/yandex/mobile/ads/network/core/a;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/network/core/a;-><init>(Lcom/yandex/mobile/ads/network/core/i;)V

    new-instance v0, Lcom/yandex/mobile/ads/video/network/core/a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/network/core/a;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/network/core/r;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/yandex/mobile/ads/network/core/r;-><init>(Lcom/yandex/mobile/ads/network/core/c;Lcom/yandex/mobile/ads/network/core/m;I)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/network/core/r;->a()V

    new-instance v0, Lcom/yandex/mobile/ads/video/network/e;

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/video/network/e;-><init>(Lcom/yandex/mobile/ads/network/core/r;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/video/core/b;->c:Lcom/yandex/mobile/ads/video/network/e;

    .line 31
    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/video/core/b;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/yandex/mobile/ads/video/core/b;->b:Lcom/yandex/mobile/ads/video/core/b;

    if-nez v0, :cond_1

    .line 41
    sget-object v1, Lcom/yandex/mobile/ads/video/core/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/video/core/b;->b:Lcom/yandex/mobile/ads/video/core/b;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/yandex/mobile/ads/video/core/b;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/video/core/b;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/video/core/b;->b:Lcom/yandex/mobile/ads/video/core/b;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/video/core/b;->b:Lcom/yandex/mobile/ads/video/core/b;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/core/b;->c:Lcom/yandex/mobile/ads/video/network/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/video/network/e;->a(Lcom/yandex/mobile/ads/video/BlocksInfoRequest;)V

    .line 53
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/video/VideoAdRequest;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/core/b;->c:Lcom/yandex/mobile/ads/video/network/e;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/video/network/e;->a(Lcom/yandex/mobile/ads/video/VideoAdRequest;)V

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/core/b;->c:Lcom/yandex/mobile/ads/video/network/e;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/video/network/e;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/video/tracking/Tracker$ErrorListener;)V

    .line 61
    return-void
.end method
