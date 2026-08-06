.class public Lcom/yandex/mobile/ads/report/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/mobile/ads/report/a;


# instance fields
.field private final c:Lcom/yandex/metrica/IReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/report/a;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/IReporter;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yandex/mobile/ads/report/a;->c:Lcom/yandex/metrica/IReporter;

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/yandex/mobile/ads/report/a;->b:Lcom/yandex/mobile/ads/report/a;

    if-nez v0, :cond_1

    .line 41
    sget-object v1, Lcom/yandex/mobile/ads/report/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/report/a;->b:Lcom/yandex/mobile/ads/report/a;

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string v0, "322a737a-a0ca-44e0-bc85-649b1c7c1db6"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object v0

    .line 52
    new-instance v2, Lcom/yandex/mobile/ads/report/a;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/report/a;-><init>(Lcom/yandex/metrica/IReporter;)V

    sput-object v2, Lcom/yandex/mobile/ads/report/a;->b:Lcom/yandex/mobile/ads/report/a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/report/a;->b:Lcom/yandex/mobile/ads/report/a;

    return-object v0

    .line 47
    :cond_2
    :try_start_3
    const-string v0, "478cb909-6ad1-4e12-84cc-b3629a789f93"

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    new-instance v0, Lcom/yandex/mobile/ads/report/a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/report/a;-><init>(Lcom/yandex/metrica/IReporter;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/a;->b:Lcom/yandex/mobile/ads/report/a;

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/report/b;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/mobile/ads/report/a;->c:Lcom/yandex/metrica/IReporter;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/report/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/report/b;->a()Ljava/util/Map;

    move-result-object v1

    .line 70
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportEvent(), eventName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reportData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lcom/yandex/mobile/ads/report/a;->c:Lcom/yandex/metrica/IReporter;

    invoke-interface {v2, v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
