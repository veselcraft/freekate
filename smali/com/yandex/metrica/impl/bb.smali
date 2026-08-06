.class public Lcom/yandex/metrica/impl/bb;
.super Lcom/yandex/metrica/impl/v;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/v;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bb;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/yandex/metrica/impl/bb;->f:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method d()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Lcom/yandex/metrica/impl/v;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bb;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/bb;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/CounterConfiguration;->b(Ljava/lang/String;)V

    .line 35
    const-string v1, "COUNTER_MIGRATION_CFG_OBJ"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    return-object v0
.end method
