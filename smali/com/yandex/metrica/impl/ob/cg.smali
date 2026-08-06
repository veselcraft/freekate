.class Lcom/yandex/metrica/impl/ob/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cv;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cv;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/cq;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cq;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/cv;

    .line 9
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/cv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cv;->a()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/cv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cv;->b()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/ob/cv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cv;->c()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    return-object v0
.end method
