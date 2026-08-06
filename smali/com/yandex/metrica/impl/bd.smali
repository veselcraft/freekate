.class public Lcom/yandex/metrica/impl/bd;
.super Lcom/yandex/metrica/impl/af;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bd$b;,
        Lcom/yandex/metrica/impl/bd$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yandex/metrica/impl/af;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/bq;)I
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bq;->b()I

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
    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/bd$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bd$1;-><init>()V

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/bq;I)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/bq;->b(I)Lcom/yandex/metrica/impl/ob/bq;

    .line 42
    return-void
.end method
