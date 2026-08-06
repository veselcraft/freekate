.class final Lcom/yandex/mobile/ads/ai;
.super Lcom/yandex/mobile/ads/aj;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/aj;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/aj;->a(ILjava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ai;->g()V

    .line 57
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/aj;->a(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ai;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ai;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.yandex.mobile.ads.cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ai;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.yandex.mobile.ads.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 34
    const-wide/32 v2, 0x800000

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 35
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 36
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 37
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 38
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 39
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 40
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/yandex/mobile/ads/aj$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/aj$a;-><init>(Lcom/yandex/mobile/ads/aj;Landroid/content/Context;)V

    const-string v1, "AdPerformActionsJSI"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/ai;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/ai;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/yandex/mobile/ads/ai;->a:Lcom/yandex/mobile/ads/p;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yandex/mobile/ads/ai;->a:Lcom/yandex/mobile/ads/p;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ai;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/yandex/mobile/ads/p;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 68
    :cond_0
    return-void
.end method
