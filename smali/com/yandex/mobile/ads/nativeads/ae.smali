.class public Lcom/yandex/mobile/ads/nativeads/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/mobile/ads/nativeads/ae;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/ae;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/ae;->c:Z

    .line 34
    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/nativeads/ae;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ae;->b:Lcom/yandex/mobile/ads/nativeads/ae;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/yandex/mobile/ads/nativeads/ae;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ae;->b:Lcom/yandex/mobile/ads/nativeads/ae;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ae;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/ae;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/ae;->b:Lcom/yandex/mobile/ads/nativeads/ae;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ae;->b:Lcom/yandex/mobile/ads/nativeads/ae;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/ae;->c:Z

    return v0
.end method
