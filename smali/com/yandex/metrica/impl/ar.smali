.class Lcom/yandex/metrica/impl/ar;
.super Lcom/yandex/metrica/impl/as;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/t;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/as;-><init>(Lcom/yandex/metrica/impl/t;)V

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/t;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/t;->a()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    .line 34
    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->f()Lcom/yandex/metrica/IMetricaService;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/yandex/metrica/impl/ar;->c:Lcom/yandex/metrica/impl/t;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/impl/g;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/aw;

    invoke-interface {v2, v1, v3, v4}, Lcom/yandex/metrica/impl/t;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->a()V

    goto :goto_0

    .line 41
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ar;->b:Lcom/yandex/metrica/impl/aw;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ar;->a:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/g;)V

    .line 42
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
