.class Lcom/yandex/metrica/impl/ob/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cv;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cy;

.field private final b:Lcom/yandex/metrica/impl/ob/cy;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/db;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/ck;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/db;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ck;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/yandex/metrica/impl/ob/cy;

    const-string v2, "LIB-BLACK"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Lcom/yandex/metrica/impl/ob/cy;

    .line 13
    new-instance v1, Lcom/yandex/metrica/impl/ob/cy;

    const-string v2, "LIB-TRUST"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Lcom/yandex/metrica/impl/ob/cy;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cj;->a:Lcom/yandex/metrica/impl/ob/cy;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cy;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "white list isn\'t supported in custom container"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cj;->b:Lcom/yandex/metrica/impl/ob/cy;

    return-object v0
.end method
