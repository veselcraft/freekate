.class public Lcom/inmobi/commons/core/utilities/info/b;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method public static a()Ljava/util/Map;
    .locals 3
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
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v1, "d-netType"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "d-localization"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 28
    const-string v1, ""

    .line 30
    const-string v2, "root"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    const-string v2, "connectivity"

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    const-string v0, "wifi"

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    if-nez v2, :cond_5

    .line 42
    const-string v0, "carrier"

    .line 43
    if-ne v3, v4, :cond_2

    .line 44
    const-string v0, "gprs"

    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    .line 46
    const-string v0, "edge"

    goto :goto_0

    .line 47
    :cond_3
    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    .line 48
    const-string v0, "umts"

    goto :goto_0

    .line 49
    :cond_4
    if-nez v3, :cond_0

    .line 50
    const-string v0, "carrier"

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
