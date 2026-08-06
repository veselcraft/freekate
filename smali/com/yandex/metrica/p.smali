.class public final Lcom/yandex/metrica/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/yandex/metrica/IIdentifierCallback;

    .prologue
    .line 24
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->a()Lcom/yandex/metrica/impl/bp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/bp;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    .line 25
    return-void
.end method

.method public static cpcwh(Lcom/yandex/metrica/YandexMetricaConfig;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1
    .param p0, "config"    # Lcom/yandex/metrica/YandexMetricaConfig;
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/yandex/metrica/e;->b(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/e$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object v0

    return-object v0
.end method

.method public static gbc(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "level"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v2, :cond_0

    if-lez v1, :cond_0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static gcni(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gdi(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/yandex/metrica/impl/interact/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/yandex/metrica/impl/interact/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static glkl(Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/z;->d()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static gmsvn(I)Ljava/lang/String;
    .locals 1
    .param p0, "apiLevel"    # I

    .prologue
    .line 76
    invoke-static {p0}, Lcom/yandex/metrica/impl/am;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->a()Lcom/yandex/metrica/impl/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bp;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static iifa()Z
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->a()Z

    move-result v0

    return v0
.end method

.method public static mpn(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pgai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/yandex/metrica/impl/bo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static plat()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/yandex/metrica/impl/bl;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static rolu(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrant"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urolu(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "registrant"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/z;->b(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
