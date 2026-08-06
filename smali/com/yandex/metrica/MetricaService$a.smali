.class final Lcom/yandex/metrica/MetricaService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/MetricaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/MetricaService;

.field private final b:I

.field private final c:Lcom/yandex/metrica/impl/g;

.field private final d:Landroid/os/Bundle;

.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/MetricaService;Landroid/content/Context;Lcom/yandex/metrica/impl/g;Landroid/os/Bundle;I)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/MetricaService$a;->e:Landroid/content/Context;

    .line 266
    iput p5, p0, Lcom/yandex/metrica/MetricaService$a;->b:I

    .line 267
    iput-object p3, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    .line 268
    iput-object p4, p0, Lcom/yandex/metrica/MetricaService$a;->d:Landroid/os/Bundle;

    .line 269
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$a;->d:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/CounterConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    invoke-static {v1, v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/CounterConfiguration;)V

    .line 300
    iget-object v1, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v2, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    invoke-virtual {v2}, Lcom/yandex/metrica/MetricaService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->n()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;ZZ)V

    .line 303
    invoke-static {}, Lcom/yandex/metrica/MetricaService;->b()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    iget v4, p0, Lcom/yandex/metrica/MetricaService$a;->b:I

    invoke-static {v2, v3, v0, v4}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/CounterConfiguration;I)Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    .line 305
    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$a;->d:Landroid/os/Bundle;

    const-string v5, "COUNTER_MIGRATION_CFG_OBJ"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$a;->d:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/yandex/metrica/impl/bl;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    invoke-virtual {v5}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/yandex/metrica/MetricaService$a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v4, v6, v7}, Lcom/yandex/metrica/impl/ob/h;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;

    move-result-object v5

    invoke-static {}, Lcom/yandex/metrica/MetricaService;->b()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v6, v4}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/CounterConfiguration;)V

    invoke-virtual {v6, v3}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    const/4 v4, 0x0

    invoke-static {v3, v5, v6, v4}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/ob/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/i;->f()V

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$a;->a:Lcom/yandex/metrica/MetricaService;

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    invoke-static {v3, v2, v0, v4}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/ob/i;

    move-result-object v2

    .line 308
    invoke-static {v2}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/impl/ob/i;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    monitor-exit v1

    goto/16 :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 313
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/g;->d()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/z;->a(Landroid/location/Location;)V

    .line 315
    iget-object v3, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/q;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 316
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/CounterConfiguration;)V

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    invoke-static {v2, v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/g;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$a;->c:Lcom/yandex/metrica/impl/g;

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/impl/g;)V

    .line 322
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
