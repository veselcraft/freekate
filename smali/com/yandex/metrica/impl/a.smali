.class Lcom/yandex/metrica/impl/a;
.super Lcom/yandex/metrica/impl/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/aw;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/h;-><init>(Lcom/yandex/metrica/impl/aw;)V

    .line 16
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->k()Z

    move-result v0

    return v0
.end method
