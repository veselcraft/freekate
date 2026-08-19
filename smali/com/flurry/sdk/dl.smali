.class public Lcom/flurry/sdk/dl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/dl;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/dl;->b:Landroid/content/Context;

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flurry/sdk/dl;->c:Landroid/os/Handler;

    .line 48
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FlurryAgent"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/dl;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/flurry/sdk/dl;
    .locals 1

    .line 34
    sget-object v0, Lcom/flurry/sdk/dl;->a:Lcom/flurry/sdk/dl;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/flurry/sdk/dl;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dl;->a:Lcom/flurry/sdk/dl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 23
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 30
    :try_start_1
    new-instance v1, Lcom/flurry/sdk/dl;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flurry/sdk/dl;->a:Lcom/flurry/sdk/dl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    .line 27
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dl;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/dl;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dl;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
