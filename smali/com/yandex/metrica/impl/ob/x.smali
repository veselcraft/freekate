.class public Lcom/yandex/metrica/impl/ob/x;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/x;->b()Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bk;->a()V

    .line 19
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/bk;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/x;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/i;->v()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bk;-><init>(Lcom/yandex/metrica/impl/ob/bl;)V

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/x;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v0

    return v0
.end method
