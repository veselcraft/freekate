.class public final Lcom/yandex/metrica/impl/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/i$a;


# static fields
.field private static a:Lcom/yandex/metrica/impl/bp;

.field private static b:Lcom/yandex/metrica/impl/n;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/yandex/metrica/impl/ax;

.field private e:Lcom/yandex/metrica/impl/aa;

.field private final f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/yandex/metrica/impl/ob/cb;

.field private final i:Lcom/yandex/metrica/impl/an;

.field private final j:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/n;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/n;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/bp;->b:Lcom/yandex/metrica/impl/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bp;->g:Ljava/util/concurrent/ExecutorService;

    .line 339
    new-instance v0, Lcom/yandex/metrica/impl/bp$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/bp$1;-><init>(Lcom/yandex/metrica/impl/bp;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bp;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing of Metrica"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", Release type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Version 2.41"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", API Level 44"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Dated 27.04.2016."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/e;->a(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;->a:Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bp;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    new-instance v2, Lcom/yandex/metrica/impl/ay;

    iget-object v3, p0, Lcom/yandex/metrica/impl/bp;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1}, Lcom/yandex/metrica/impl/ay;-><init>(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 73
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/util/List;)V

    .line 75
    new-instance v3, Lcom/yandex/metrica/impl/f;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/f;-><init>()V

    iget-object v4, p0, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/f;->a(Landroid/content/Context;)V

    .line 77
    new-instance v3, Lcom/yandex/metrica/impl/ob/cb;

    iget-object v4, p0, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-direct {v3, v2, v4, p2}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ay;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    .line 78
    iget-object v3, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 80
    new-instance v3, Lcom/yandex/metrica/impl/an;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/an;-><init>(Lcom/yandex/metrica/impl/ay;)V

    iput-object v3, p0, Lcom/yandex/metrica/impl/bp;->i:Lcom/yandex/metrica/impl/an;

    .line 82
    new-instance v3, Lcom/yandex/metrica/impl/i;

    invoke-direct {v3, v1}, Lcom/yandex/metrica/impl/i;-><init>(Landroid/os/Handler;)V

    .line 83
    invoke-virtual {v3, p0}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/i$a;)V

    .line 84
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/i;)V

    .line 86
    new-instance v4, Lcom/yandex/metrica/impl/ax$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ax$a;-><init>()V

    iget-object v5, p0, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ax$a;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ax$a;->a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ax$a;->a(Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ax$a;->a(Landroid/os/Handler;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ax$a;->a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ax$a;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ax$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ax$a;->a()Lcom/yandex/metrica/impl/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bp;->d:Lcom/yandex/metrica/impl/ax;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bp;)Lcom/yandex/metrica/impl/aa;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/yandex/metrica/impl/bp;
    .locals 2

    .prologue
    .line 123
    const-class v1, Lcom/yandex/metrica/impl/bp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/yandex/metrica/impl/bm;->a:Ljava/lang/IllegalStateException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 127
    :cond_0
    :try_start_1
    sget-object v0, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->setSessionTimeout(I)V

    .line 224
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    const-class v0, Lcom/yandex/metrica/impl/bp;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/yandex/metrica/impl/bp;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v0

    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 5

    .prologue
    .line 97
    const-class v1, Lcom/yandex/metrica/impl/bp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bp;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/n;->i()Z

    move-result v0

    .line 98
    sget-object v2, Lcom/yandex/metrica/impl/bp;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/n;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;

    move-result-object v2

    .line 99
    invoke-static {p0, v2}, Lcom/yandex/metrica/impl/bp;->b(Landroid/content/Context;Lcom/yandex/metrica/e;)V

    .line 100
    sget-object v3, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    iget-object v3, v3, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    if-nez v3, :cond_1

    .line 101
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/utils/e;->a()V

    .line 104
    :cond_0
    sget-object v3, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    iget-object v4, v3, Lcom/yandex/metrica/impl/bp;->d:Lcom/yandex/metrica/impl/ax;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/impl/aa;

    move-result-object v4

    iput-object v4, v3, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    iget-object v3, v3, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/aa;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/CounterConfiguration;->k()Z

    move-result v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/bp;->a(Z)V

    .line 106
    :cond_1
    sget-object v3, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    invoke-virtual {v3, v2, v0}, Lcom/yandex/metrica/impl/bp;->a(Lcom/yandex/metrica/e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->a(Landroid/location/Location;)V

    .line 245
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->a()Lcom/yandex/metrica/impl/bp;

    move-result-object v1

    if-eqz p0, :cond_0

    iget-object v0, v1, Lcom/yandex/metrica/impl/bp;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    :goto_0
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, v1, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/aa;->c(Z)V

    .line 232
    :goto_1
    return-void

    .line 228
    :cond_0
    iget-object v0, v1, Lcom/yandex/metrica/impl/bp;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/bp;->b:Lcom/yandex/metrica/impl/n;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/n;->c(Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/bp;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/yandex/metrica/e;)V
    .locals 4

    .prologue
    .line 114
    const-class v1, Lcom/yandex/metrica/impl/bp;

    monitor-enter v1

    :try_start_0
    const-string v0, "App Context"

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    if-nez v0, :cond_1

    .line 116
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    new-instance v2, Lcom/yandex/metrica/impl/bp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/yandex/metrica/impl/bp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    sput-object v2, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    iget-object v0, v2, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/w;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    iget-object v0, v2, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/cb;->a(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/cb;->a(Ljava/util/Map;)V

    iget-object v0, v2, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/cb;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v2, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->d()V

    iget-object v0, v2, Lcom/yandex/metrica/impl/bp;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/yandex/metrica/impl/bl$b;

    iget-object v2, v2, Lcom/yandex/metrica/impl/bp;->c:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/bl$b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    monitor-exit v1

    return-void

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yandex/metrica/impl/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->d(Z)V

    .line 241
    return-void
.end method

.method static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 131
    const-class v1, Lcom/yandex/metrica/impl/bp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/metrica/impl/bp;->a:Lcom/yandex/metrica/impl/bp;

    iget-object v0, v0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->b(Z)V

    .line 249
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ac;->h()Z

    move-result v0

    return v0
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->a(Z)V

    .line 257
    return-void
.end method

.method private static e()Lcom/yandex/metrica/impl/ac;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yandex/metrica/impl/bp;->a()Lcom/yandex/metrica/impl/bp;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/bp;->b:Lcom/yandex/metrica/impl/n;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/yandex/metrica/impl/bp;->e()Lcom/yandex/metrica/impl/ac;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yandex/metrica/impl/ac;->a(Ljava/lang/String;)V

    .line 253
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/b;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->d:Lcom/yandex/metrica/impl/ax;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Ljava/lang/String;)Lcom/yandex/metrica/b;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/cb;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/cb;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->a(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->a(Landroid/app/Application;)V

    .line 165
    return-void
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cb;->a(Lcom/yandex/metrica/IIdentifierCallback;)V

    .line 309
    return-void
.end method

.method a(Lcom/yandex/metrica/e;Z)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->a(Lcom/yandex/metrica/e;)V

    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aa;->b()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/aa;->b(Ljava/util/Map;)V

    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/aa;->a(Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/aa;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/aa;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/aa;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->b(Landroid/app/Activity;)V

    .line 173
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->reportEvent(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->e:Lcom/yandex/metrica/impl/aa;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aa;->d(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->h:Lcom/yandex/metrica/impl/ob/cb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yandex/metrica/impl/bp;->i:Lcom/yandex/metrica/impl/an;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/an;->a(Ljava/lang/String;)V

    .line 210
    return-void
.end method
