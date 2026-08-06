.class public Lcom/yandex/metrica/impl/ob/q;
.super Lcom/yandex/metrica/impl/ob/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/k",
        "<",
        "Lcom/yandex/metrica/impl/ob/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/p",
            "<",
            "Lcom/yandex/metrica/impl/ob/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/k;-><init>(Lcom/yandex/metrica/impl/ob/p;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/m;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/g;",
            "Lcom/yandex/metrica/impl/ob/m",
            "<",
            "Lcom/yandex/metrica/impl/ob/u;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/u;

    .line 26
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/u;->a(Lcom/yandex/metrica/impl/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
