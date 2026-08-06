.class Lcom/yandex/metrica/impl/ap;
.super Lcom/yandex/metrica/impl/as;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/t;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/as;-><init>(Lcom/yandex/metrica/impl/t;)V

    .line 23
    return-void
.end method

.method static a(Ljava/lang/Throwable;)Lcom/yandex/metrica/impl/g;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 58
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/q;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/t;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/t;->a()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/t;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/t;->b()Landroid/content/Context;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->c()V

    .line 35
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->f()Lcom/yandex/metrica/IMetricaService;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ap;->c:Lcom/yandex/metrica/impl/t;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->a:Lcom/yandex/metrica/impl/g;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ap;->b:Lcom/yandex/metrica/impl/aw;

    invoke-interface {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/t;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap;->a:Lcom/yandex/metrica/impl/g;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/aj;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/g;)V

    .line 49
    invoke-static {v1}, Lcom/yandex/metrica/impl/be;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/yandex/metrica/impl/ap;->a:Lcom/yandex/metrica/impl/g;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ap;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/aw;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/g;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
