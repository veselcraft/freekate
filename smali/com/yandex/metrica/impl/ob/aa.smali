.class public Lcom/yandex/metrica/impl/ob/aa;
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
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/aa;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->a()Lcom/yandex/metrica/impl/ob/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/aw;->a()V

    .line 24
    const/4 v0, 0x0

    return v0
.end method
