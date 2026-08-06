.class Lcom/yandex/metrica/impl/v;
.super Lcom/yandex/metrica/impl/aw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yandex/metrica/impl/aw;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yandex/metrica/impl/v;-><init>()V

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/v;->b:Lcom/yandex/metrica/CounterConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->g(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
