.class public Lcom/yandex/metrica/impl/ob/ah;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/an;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/an;

    new-instance v1, Lcom/yandex/metrica/impl/ob/o;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/o;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/an;-><init>(Lcom/yandex/metrica/impl/ob/p;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/an;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/impl/ob/an;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/an;->a(Lcom/yandex/metrica/impl/g;)Z

    move-result v0

    return v0
.end method
