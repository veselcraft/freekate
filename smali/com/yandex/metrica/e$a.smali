.class public final Lcom/yandex/metrica/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

.field private c:Lcom/yandex/metrica/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/util/Map;
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

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/util/Map;
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

.field private k:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/util/Map;

    .line 162
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/e$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/metrica/e$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yandex/metrica/e$a;)Lcom/yandex/metrica/a;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/a;

    return-object v0
.end method

.method static synthetic f(Lcom/yandex/metrica/e$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic h(Lcom/yandex/metrica/e$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic i(Lcom/yandex/metrica/e$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/yandex/metrica/e$a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->k:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setLogEnabled()Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 263
    return-object p0
.end method

.method public a(I)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 210
    return-object p0
.end method

.method public a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 286
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 457
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/a;)Lcom/yandex/metrica/e$a;
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->c:Lcom/yandex/metrica/a;

    .line 341
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 181
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->putErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 331
    return-object p0
.end method

.method public a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/yandex/metrica/e$a;"
        }
    .end annotation

    .prologue
    .line 409
    iput-object p2, p0, Lcom/yandex/metrica/e$a;->k:Ljava/lang/Boolean;

    .line 410
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->g:Ljava/util/Map;

    .line 411
    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setReportCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 234
    return-object p0
.end method

.method public b(I)Lcom/yandex/metrica/e$a;
    .locals 6

    .prologue
    .line 389
    if-gez p1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Invalid %1$s. %1$s should be positive."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "App Build Number"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->f:Ljava/lang/Integer;

    .line 395
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->a:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-object p0
.end method

.method public b(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setReportNativeCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 253
    return-object p0
.end method

.method public b()Lcom/yandex/metrica/e;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lcom/yandex/metrica/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/e;-><init>(Lcom/yandex/metrica/e$a;B)V

    return-object v0
.end method

.method public c(I)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->i:Ljava/lang/Integer;

    .line 430
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->d:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public c(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setTrackLocationEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 304
    return-object p0
.end method

.method public d(I)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/e$a;->h:Ljava/lang/Integer;

    .line 447
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 369
    const-string v0, "Custom Host URL"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput-object p1, p0, Lcom/yandex/metrica/e$a;->e:Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public d(Z)Lcom/yandex/metrica/e$a;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/yandex/metrica/e$a;->b:Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->setCollectInstalledApps(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 319
    return-object p0
.end method
