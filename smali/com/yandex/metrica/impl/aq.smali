.class Lcom/yandex/metrica/impl/aq;
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


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->c:Lcom/yandex/metrica/impl/t;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/t;->a()Lcom/yandex/metrica/impl/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->f()Lcom/yandex/metrica/IMetricaService;

    move-result-object v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->f()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/g;

    .line 35
    if-eqz v1, :cond_0

    .line 36
    iget-object v3, p0, Lcom/yandex/metrica/impl/aq;->c:Lcom/yandex/metrica/impl/t;

    iget-object v4, p0, Lcom/yandex/metrica/impl/aq;->b:Lcom/yandex/metrica/impl/aw;

    invoke-interface {v3, v1, v0, v4}, Lcom/yandex/metrica/impl/t;->a(Lcom/yandex/metrica/IMetricaService;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method
