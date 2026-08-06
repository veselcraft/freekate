.class public Lcom/yandex/metrica/impl/ob/t;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/t;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->b(Z)V

    .line 25
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->a()Lcom/yandex/metrica/impl/ob/aw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/aw;->a(Z)V

    .line 26
    return v2
.end method
