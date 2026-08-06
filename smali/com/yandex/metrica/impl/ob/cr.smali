.class Lcom/yandex/metrica/impl/ob/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/ch;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private g:Lcom/yandex/metrica/impl/ob/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/yandex/metrica/impl/ob/cr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/cr;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/cy;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->b:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/cl;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cl;-><init>(Lcom/yandex/metrica/impl/ob/cy;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->c:Lcom/yandex/metrica/impl/ob/ch;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->d:Ljava/util/concurrent/locks/Lock;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->e:Ljava/util/concurrent/locks/Lock;

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->f:Ljava/util/concurrent/locks/Condition;

    .line 32
    return-void
.end method


# virtual methods
.method a([Ljava/security/cert/X509Certificate;)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->c:Lcom/yandex/metrica/impl/ob/ch;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ch;->a([Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/dc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dc;-><init>([Ljava/security/cert/X509Certificate;)V

    .line 49
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->g:Lcom/yandex/metrica/impl/ob/dc;

    .line 50
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cr;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    if-eqz v0, :cond_3

    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/ob/cr;->a:Ljava/lang/String;

    const-string v1, "waiting for trust issue resolve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->g:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->f:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x7530

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->g:Lcom/yandex/metrica/impl/ob/dc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dc;->c()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cr;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cr;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cr;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
