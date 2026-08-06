.class public Lcom/yandex/metrica/impl/ob/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/bc;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/bc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bd;->a:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bd;->b:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(Lcom/yandex/metrica/impl/ob/j;)Lcom/yandex/metrica/impl/ob/bc;
    .locals 4

    .prologue
    .line 31
    const-class v1, Lcom/yandex/metrica/impl/ob/bd;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Lcom/yandex/metrica/impl/ob/j;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 33
    const/4 v0, 0x0

    .line 54
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 36
    :cond_1
    :try_start_1
    invoke-interface {p0}, Lcom/yandex/metrica/impl/ob/j;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    .line 37
    sget-object v0, Lcom/yandex/metrica/impl/ob/bd;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bc;

    .line 39
    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/yandex/metrica/impl/ob/bd;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bc;

    .line 43
    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/bc;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/bc;-><init>(Lcom/yandex/metrica/impl/ob/j;)V

    .line 46
    invoke-static {v2, v0}, Lcom/yandex/metrica/impl/ob/bd;->a(Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/impl/ob/bc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 49
    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/bc;->a(Lcom/yandex/metrica/impl/ob/j;)V

    .line 50
    invoke-static {v2, v0}, Lcom/yandex/metrica/impl/ob/bd;->a(Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/impl/ob/bc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/yandex/metrica/impl/ob/bc;)V
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/yandex/metrica/impl/ob/bd;

    monitor-enter v1

    if-eqz p0, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bc;->b()Lcom/yandex/metrica/impl/ob/j;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/j;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    sget-object v2, Lcom/yandex/metrica/impl/ob/bd;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/yandex/metrica/impl/ob/bd;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/impl/ob/bc;)V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/ob/bd;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/yandex/metrica/impl/ob/bd;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
