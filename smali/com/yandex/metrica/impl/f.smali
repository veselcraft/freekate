.class public Lcom/yandex/metrica/impl/f;
.super Lcom/yandex/metrica/impl/af;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yandex/metrica/impl/af;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/bq;)I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bq;->a()I

    move-result v0

    return v0
.end method

.method a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/af$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/yandex/metrica/impl/f$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/f$1;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/bq;I)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->a(I)Lcom/yandex/metrica/impl/ob/bq;

    .line 34
    return-void
.end method
