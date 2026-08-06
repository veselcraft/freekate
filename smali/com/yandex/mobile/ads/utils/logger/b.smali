.class public Lcom/yandex/mobile/ads/utils/logger/b;
.super Lcom/yandex/mobile/ads/utils/logger/a;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    sget-boolean v0, Lcom/yandex/mobile/ads/utils/logger/b;->a:Z

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "Yandex Mobile Ads"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 23
    sput-boolean p0, Lcom/yandex/mobile/ads/utils/logger/b;->a:Z

    .line 24
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 33
    sget-boolean v0, Lcom/yandex/mobile/ads/utils/logger/b;->a:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "Yandex Mobile Ads"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method
