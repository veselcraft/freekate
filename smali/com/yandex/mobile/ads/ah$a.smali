.class Lcom/yandex/mobile/ads/ah$a;
.super Lcom/yandex/mobile/ads/aj$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/ah;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/ah;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/aj$a;-><init>(Lcom/yandex/mobile/ads/aj;Landroid/content/Context;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getBannerInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 110
    const-string v0, "{\"isDelicate\": true}"

    return-object v0
.end method

.method public onCollapse(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionsJson"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 77
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/ah;Z)Z

    .line 78
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-static {v0}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/ah;)Lcom/yandex/mobile/ads/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-static {v0}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/ah;)Lcom/yandex/mobile/ads/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/am;->N()V

    .line 83
    :cond_0
    :try_start_0
    new-instance v0, Lcom/yandex/mobile/ads/m;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/m;-><init>(Lorg/json/JSONObject;)V

    .line 84
    iget-object v1, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/ah;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/m;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onExpand(Ljava/lang/String;)V
    .locals 3
    .param p1, "actionsJson"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 92
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 94
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/ah;Z)Z

    .line 95
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-static {v0}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/ah;)Lcom/yandex/mobile/ads/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-static {v0}, Lcom/yandex/mobile/ads/ah;->a(Lcom/yandex/mobile/ads/ah;)Lcom/yandex/mobile/ads/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/am;->M()V

    .line 100
    :cond_0
    :try_start_0
    new-instance v0, Lcom/yandex/mobile/ads/m;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/m;-><init>(Lorg/json/JSONObject;)V

    .line 101
    iget-object v1, p0, Lcom/yandex/mobile/ads/ah$a;->a:Lcom/yandex/mobile/ads/ah;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/ah;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/m;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
