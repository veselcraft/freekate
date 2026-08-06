.class public Lcom/yandex/metrica/impl/ob/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dp$a;,
        Lcom/yandex/metrica/impl/ob/dp$c;,
        Lcom/yandex/metrica/impl/ob/dp$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/dn;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/yandex/metrica/impl/ob/dp$b;

.field private volatile d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dn;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/dp;-><init>(Lcom/yandex/metrica/impl/ob/dn;Landroid/os/Handler;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/dn;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp;->a:Lcom/yandex/metrica/impl/ob/dn;

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/yandex/metrica/impl/ob/dp;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/HandlerThread;

    .line 22
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/dp;)Lcom/yandex/metrica/impl/ob/dn;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->a:Lcom/yandex/metrica/impl/ob/dn;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/yandex/metrica/impl/ob/dp$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/yandex/metrica/impl/ob/dp$b;-><init>(Lcom/yandex/metrica/impl/ob/dp;Landroid/os/Looper;B)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->c:Lcom/yandex/metrica/impl/ob/dp$b;

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/dp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/dr$b;Lcom/yandex/metrica/impl/ob/dr$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/metrica/impl/ob/dr",
            "<TT;>;",
            "Lcom/yandex/metrica/impl/ob/dr$b",
            "<TT;>;",
            "Lcom/yandex/metrica/impl/ob/dr$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dp;->a()V

    .line 35
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/dr;->a(Lcom/yandex/metrica/impl/ob/dr$b;)V

    .line 36
    invoke-virtual {p1, p3}, Lcom/yandex/metrica/impl/ob/dr;->a(Lcom/yandex/metrica/impl/ob/dr$a;)V

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp;->c:Lcom/yandex/metrica/impl/ob/dp$b;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dp$b;->a(Lcom/yandex/metrica/impl/ob/dr;)V

    .line 38
    return-void
.end method
