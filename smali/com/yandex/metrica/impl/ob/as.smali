.class public Lcom/yandex/metrica/impl/ob/as;
.super Lcom/yandex/metrica/impl/ob/ay;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bp;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ay;-><init>(Lcom/yandex/metrica/impl/ob/bp;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/as;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->p(J)Lcom/yandex/metrica/impl/ob/bp;

    .line 28
    return-object p0
.end method

.method public c(J)J
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/ay;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->l(J)Lcom/yandex/metrica/impl/ob/bp;

    .line 39
    return-object p0
.end method

.method public e(J)J
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)Lcom/yandex/metrica/impl/ob/ay;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->r(J)Lcom/yandex/metrica/impl/ob/bp;

    .line 50
    return-object p0
.end method

.method public g(J)J
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(J)Lcom/yandex/metrica/impl/ob/ay;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/as;->a:Lcom/yandex/metrica/impl/ob/bp;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bp;->t(J)Lcom/yandex/metrica/impl/ob/bp;

    .line 61
    return-object p0
.end method

.method public synthetic i(J)Lcom/yandex/metrica/impl/ob/ay;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/as;->b(J)Lcom/yandex/metrica/impl/ob/as;

    move-result-object v0

    return-object v0
.end method
