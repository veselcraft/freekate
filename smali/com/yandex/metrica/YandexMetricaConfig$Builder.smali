.class public Lcom/yandex/metrica/YandexMetricaConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/YandexMetricaConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/location/Location;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/yandex/metrica/PreloadInfo;

.field private k:Ljava/util/Map;
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
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Ljava/util/Map;

    .line 87
    invoke-static {p1}, Lcom/yandex/metrica/impl/bl;->b(Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j:Lcom/yandex/metrica/PreloadInfo;

    return-object v0
.end method

.method static synthetic k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/yandex/metrica/YandexMetricaConfig;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig;-><init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V

    return-object v0
.end method

.method public putErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "App Version"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setCollectInstalledApps(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "collectInstalledApps"    # Z

    .prologue
    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h:Ljava/lang/Boolean;

    .line 241
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f:Landroid/location/Location;

    .line 208
    return-object p0
.end method

.method public setLogEnabled()Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i:Ljava/lang/Boolean;

    .line 185
    return-object p0
.end method

.method public setPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 0
    .param p1, "preloadInfo"    # Lcom/yandex/metrica/PreloadInfo;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j:Lcom/yandex/metrica/PreloadInfo;

    .line 251
    return-object p0
.end method

.method public setReportCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "reportCrashesEnabled"    # Z

    .prologue
    .line 155
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d:Ljava/lang/Boolean;

    .line 156
    return-object p0
.end method

.method public setReportNativeCrashesEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "reportNativeCrashesEnabled"    # Z

    .prologue
    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e:Ljava/lang/Boolean;

    .line 175
    return-object p0
.end method

.method public setSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "sessionTimeout"    # I

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c:Ljava/lang/Integer;

    .line 137
    return-object p0
.end method

.method public setTrackLocationEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1
    .param p1, "trackLocationEnabled"    # Z

    .prologue
    .line 225
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g:Ljava/lang/Boolean;

    .line 226
    return-object p0
.end method
