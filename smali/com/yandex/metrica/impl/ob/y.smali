.class public Lcom/yandex/metrica/impl/ob/y;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bl;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/y;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->v()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/y;->a:Lcom/yandex/metrica/impl/ob/bl;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/y;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/y;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/y;->b()Lcom/yandex/metrica/impl/ob/bk;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bk;->c()V

    .line 29
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bk;->b()V

    goto :goto_0
.end method

.method b()Lcom/yandex/metrica/impl/ob/bk;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/bk;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/y;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/i;->v()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bk;-><init>(Lcom/yandex/metrica/impl/ob/bl;)V

    return-object v0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y;->a:Lcom/yandex/metrica/impl/ob/bl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
