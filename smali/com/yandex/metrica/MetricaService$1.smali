.class Lcom/yandex/metrica/MetricaService$1;
.super Lcom/yandex/metrica/IMetricaService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/MetricaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/MetricaService;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/MetricaService;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/yandex/metrica/MetricaService$1;->a:Lcom/yandex/metrica/MetricaService;

    invoke-direct {p0}, Lcom/yandex/metrica/IMetricaService$Stub;-><init>()V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/g;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/yandex/metrica/MetricaService$a;

    iget-object v1, p0, Lcom/yandex/metrica/MetricaService$1;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v2, p0, Lcom/yandex/metrica/MetricaService$1;->a:Lcom/yandex/metrica/MetricaService;

    invoke-static {}, Lcom/yandex/metrica/MetricaService$1;->getCallingUid()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/MetricaService$a;-><init>(Lcom/yandex/metrica/MetricaService;Landroid/content/Context;Lcom/yandex/metrica/impl/g;Landroid/os/Bundle;I)V

    .line 226
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public reportData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 219
    invoke-static {p1}, Lcom/yandex/metrica/impl/g;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/MetricaService$1;->a(Lcom/yandex/metrica/impl/g;Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public reportEvent(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    new-instance v0, Lcom/yandex/metrica/impl/g;

    invoke-direct {v0, p3, p1, p2}, Lcom/yandex/metrica/impl/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4}, Lcom/yandex/metrica/MetricaService$1;->a(Lcom/yandex/metrica/impl/g;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method
