.class public Lcom/yandex/metrica/impl/ob/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/bp;)Lcom/yandex/metrica/impl/b;
    .locals 6

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/g;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/b;

    .line 28
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bp;->a()Lcom/yandex/metrica/impl/b$a;

    move-result-object v1

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/b;

    iget-object v2, v1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcom/yandex/metrica/impl/b;-><init>(Ljava/lang/String;J)V

    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/g;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/bp;)V
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lcom/yandex/metrica/impl/b$a;->b:J

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bp;->a()Lcom/yandex/metrica/impl/b$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/b$a;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 40
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/bp;)V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Lcom/yandex/metrica/impl/b$a;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bp;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
