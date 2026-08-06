.class Lcom/inmobi/signals/i;
.super Ljava/lang/Object;
.source "IceCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/inmobi/signals/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/inmobi/signals/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataCollectionHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/signals/i;->b:Landroid/os/HandlerThread;

    .line 38
    iget-object v0, p0, Lcom/inmobi/signals/i;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Lcom/inmobi/signals/i$a;

    iget-object v1, p0, Lcom/inmobi/signals/i;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/signals/i$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/signals/i;->c:Lcom/inmobi/signals/i$a;

    .line 40
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/inmobi/signals/i;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/signals/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/i;->a:Ljava/lang/String;

    const-string v2, "User data collection can not be started as the data collector is not properly initialized."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/signals/i;->c:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/i$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/inmobi/signals/i;->c:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/i$a;->removeMessages(I)V

    .line 52
    iget-object v0, p0, Lcom/inmobi/signals/i;->c:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_1
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/i;->a:Ljava/lang/String;

    const-string v2, "User data collection already running."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "signals"

    const-string v1, "android.permission.GET_TASKS"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inmobi/signals/i;->c:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x2

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/p$b;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/signals/i$a;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    return-void
.end method
