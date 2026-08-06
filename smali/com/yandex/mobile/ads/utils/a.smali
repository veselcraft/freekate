.class public Lcom/yandex/mobile/ads/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryVersion()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 26
    const v1, 0x4019999a    # 2.4f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
