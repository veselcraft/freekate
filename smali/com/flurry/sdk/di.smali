.class public Lcom/flurry/sdk/di;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "di"

.field private static b:Lcom/flurry/sdk/di;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/dg;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/dg;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/flurry/sdk/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/di;->e:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/di;
    .locals 2

    const-class v0, Lcom/flurry/sdk/di;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/di;->b:Lcom/flurry/sdk/di;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/flurry/sdk/di;

    invoke-direct {v1}, Lcom/flurry/sdk/di;-><init>()V

    sput-object v1, Lcom/flurry/sdk/di;->b:Lcom/flurry/sdk/di;

    .line 31
    :cond_0
    sget-object v1, Lcom/flurry/sdk/di;->b:Lcom/flurry/sdk/di;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dg;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session cannot be ended, session not found for context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dg;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-static {p1}, Lcom/flurry/sdk/dl;->a(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->b()V

    .line 69
    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->b()V

    .line 72
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dg;

    if-eqz v0, :cond_0

    .line 74
    sget-object p2, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session already started with context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " count:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flurry/sdk/dg;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/flurry/sdk/dg;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/dg;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dg;->a(Landroid/content/Context;)V

    move-object p2, v0

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/dg;)V

    .line 92
    invoke-virtual {p2, p1}, Lcom/flurry/sdk/dg;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/flurry/sdk/dg;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/di;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/di;->f:Lcom/flurry/sdk/dg;

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x6

    .line 109
    sget-object v0, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    const-string v1, "Ended session is not in the session map! Maybe it was already destroyed."

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->j()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/dg;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Lcom/flurry/sdk/dg;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/di;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/di;->f:Lcom/flurry/sdk/dg;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/dg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/dg;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dg;

    .line 136
    invoke-virtual {v1}, Lcom/flurry/sdk/dg;->c()V

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/dg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
