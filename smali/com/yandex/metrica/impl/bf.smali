.class public Lcom/yandex/metrica/impl/bf;
.super Lcom/yandex/metrica/impl/aw;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yandex/metrica/impl/aw;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/bf;->f:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method d()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Lcom/yandex/metrica/impl/aw;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bf;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v1

    .line 28
    new-instance v2, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v2, v1}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/bf;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/CounterConfiguration;->b(Ljava/lang/String;)V

    .line 30
    const-string v1, "COUNTER_MIGRATION_CFG_OBJ"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    return-object v0
.end method
