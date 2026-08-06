.class public Lcom/yandex/metrica/impl/ob/am;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/am;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->a()Lcom/yandex/metrica/impl/ob/aw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/aw;->a(Lcom/yandex/metrica/impl/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->b(Z)V

    .line 27
    sget-object v1, Lcom/yandex/metrica/impl/q$a;->B:Lcom/yandex/metrica/impl/q$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->d(Lcom/yandex/metrica/impl/g;)V

    .line 29
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
