.class Lcom/yandex/mobile/ads/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/mobile/ads/av;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/av;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/av;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/yandex/mobile/ads/av;->a:Lcom/yandex/mobile/ads/av;

    if-nez v0, :cond_1

    .line 26
    sget-object v1, Lcom/yandex/mobile/ads/av;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/av;->a:Lcom/yandex/mobile/ads/av;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/yandex/mobile/ads/av;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/av;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/av;->a:Lcom/yandex/mobile/ads/av;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/av;->a:Lcom/yandex/mobile/ads/av;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/yandex/mobile/ads/network/core/q;)V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/network/d;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/network/core/r;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/network/core/r;->a(Lcom/yandex/mobile/ads/network/core/q;)Lcom/yandex/mobile/ads/network/core/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {p1}, Lcom/yandex/mobile/ads/network/d;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/network/core/r;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/yandex/mobile/ads/av$1;

    invoke-direct {v1, p2}, Lcom/yandex/mobile/ads/av$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/network/core/r;->a(Lcom/yandex/mobile/ads/network/core/r$a;)V

    .line 49
    return-void
.end method
