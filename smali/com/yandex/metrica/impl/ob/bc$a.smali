.class Lcom/yandex/metrica/impl/ob/bc$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/bc;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bc;)V
    .locals 1

    .prologue
    .line 512
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->b:Ljava/util/List;

    .line 514
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc$a;->interrupt()V

    .line 548
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 518
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 520
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bc;->a(Lcom/yandex/metrica/impl/ob/bc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 524
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bc;->b(Lcom/yandex/metrica/impl/ob/bc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 530
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 531
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bc;->c(Lcom/yandex/metrica/impl/ob/bc;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 532
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bc;->c(Lcom/yandex/metrica/impl/ob/bc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 534
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/bc;->d(Lcom/yandex/metrica/impl/ob/bc;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bc;->a(Lcom/yandex/metrica/impl/ob/bc;Landroid/content/ContentValues;)V

    .line 535
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bc$a;->b:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bc;->a(Lcom/yandex/metrica/impl/ob/bc;Ljava/util/List;)V

    .line 537
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yandex/metrica/impl/ob/bc;->b(Lcom/yandex/metrica/impl/ob/bc;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 538
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 540
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bc;->e(Lcom/yandex/metrica/impl/ob/bc;)Lcom/yandex/metrica/impl/ob/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bc$a;->a:Lcom/yandex/metrica/impl/ob/bc;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bc;->e(Lcom/yandex/metrica/impl/ob/bc;)Lcom/yandex/metrica/impl/ob/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->b()V

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 526
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 538
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 544
    :cond_2
    return-void
.end method
