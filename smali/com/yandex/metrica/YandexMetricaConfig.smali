.class public Lcom/yandex/metrica/YandexMetricaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Boolean;

.field private final e:Ljava/lang/Boolean;

.field private final f:Landroid/location/Location;

.field private final g:Ljava/lang/Boolean;

.field private final h:Ljava/lang/Boolean;

.field private final i:Ljava/lang/Boolean;

.field private final j:Lcom/yandex/metrica/PreloadInfo;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    .line 278
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    .line 279
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    .line 280
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    .line 281
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    .line 282
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    .line 283
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    .line 284
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    .line 285
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    .line 286
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    .line 287
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    .line 288
    return-void
.end method

.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1
    .param p1, "source"    # Lcom/yandex/metrica/YandexMetricaConfig;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    .line 292
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    .line 294
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    .line 295
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    .line 296
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    .line 297
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    .line 298
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    .line 299
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    .line 300
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    .line 301
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    .line 302
    return-void
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p0, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->f:Landroid/location/Location;

    return-object v0
.end method

.method public getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->j:Lcom/yandex/metrica/PreloadInfo;

    return-object v0
.end method

.method public getSessionTimeout()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public isCollectInstalledApps()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLogEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReportCrashEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReportNativeCrashEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isTrackLocationEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->g:Ljava/lang/Boolean;

    return-object v0
.end method
