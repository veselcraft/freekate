.class public Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cellId:Ljava/lang/Integer;

.field public final countryCode:Ljava/lang/Integer;

.field public final locationAreaCode:Ljava/lang/Integer;

.field public final networkType:Ljava/lang/String;

.field public final operatorId:Ljava/lang/Integer;

.field public final operatorName:Ljava/lang/String;

.field public final signalStrength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/bk$a;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->networkType:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->operatorName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->c()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->operatorId:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->b()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->countryCode:Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->f()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->cellId:Ljava/lang/Integer;

    .line 41
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->e()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->locationAreaCode:Ljava/lang/Integer;

    .line 42
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->signalStrength:Ljava/lang/Integer;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "network_type"

    iget-object v2, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->networkType:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "operator_name"

    iget-object v2, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->operatorName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "country_code"

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->countryCode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->countryCode:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v2, "operator_id"

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->operatorId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->operatorId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v2, "cell_id"

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->cellId:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->cellId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "lac"

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->locationAreaCode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->locationAreaCode:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "signal_strength"

    iget-object v2, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->signalStrength:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->signalStrength:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v2, ""

    .line 58
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, "&"

    :goto_5
    move-object v2, v0

    .line 67
    goto :goto_4

    :cond_1
    move-object v0, v1

    .line 50
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 51
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 52
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 53
    goto :goto_3

    .line 68
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v0, v2

    goto :goto_5
.end method
