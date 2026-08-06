.class Lcom/yandex/metrica/impl/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/yandex/metrica/CounterConfiguration;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/yandex/metrica/impl/p;

.field protected e:Lcom/yandex/metrica/impl/ak;

.field private f:Lcom/yandex/metrica/impl/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/aw$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/aw$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/aw;->a:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/r;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/r;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->f:Lcom/yandex/metrica/impl/r;

    .line 42
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->c:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ak;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yandex/metrica/impl/aw;->e:Lcom/yandex/metrica/impl/ak;

    .line 124
    return-void
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/g;)V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/ResultReceiver;)V

    .line 108
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/cc;)V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/aw;->b(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 70
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/utils/b$a;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/p;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/p;-><init>(Lcom/yandex/metrica/impl/utils/b$a;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aw;->d:Lcom/yandex/metrica/impl/p;

    .line 54
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->d:Lcom/yandex/metrica/impl/p;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->f:Lcom/yandex/metrica/impl/r;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/r;->c()Z

    move-result v0

    return v0
.end method

.method b()Lcom/yandex/metrica/CounterConfiguration;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method b(Lcom/yandex/metrica/impl/ob/cc;)V
    .locals 2

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->e(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/cc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->f(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->m()Z

    move-result v0

    return v0
.end method

.method d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->D()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized e()Z
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yandex/metrica/impl/aw;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    iget-object v1, p0, Lcom/yandex/metrica/impl/aw;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->f:Lcom/yandex/metrica/impl/r;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/r;->b()V

    .line 88
    return-void
.end method

.method h()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->f:Lcom/yandex/metrica/impl/r;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/r;->a()Z

    move-result v0

    return v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->d:Lcom/yandex/metrica/impl/p;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/p;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j()Lcom/yandex/metrica/impl/ak;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->e:Lcom/yandex/metrica/impl/ak;

    return-object v0
.end method
