.class public Lcom/yandex/metrica/impl/ob/w;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/bl;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->v()Lcom/yandex/metrica/impl/ob/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/w;->a:Lcom/yandex/metrica/impl/ob/bl;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/w;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/w;->a:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->f(Lcom/yandex/metrica/impl/g;)V

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
