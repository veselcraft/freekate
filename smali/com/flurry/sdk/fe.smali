.class public Lcom/flurry/sdk/fe;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static e:Lcom/flurry/sdk/fe;


# instance fields
.field a:Z

.field b:Ljava/lang/Boolean;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/fd;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/fe;->d:Z

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/fe;->c:Ljava/util/List;

    .line 64
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/fe;
    .locals 2

    .prologue
    .line 67
    const-class v1, Lcom/flurry/sdk/fe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/flurry/sdk/fe;

    invoke-direct {v0}, Lcom/flurry/sdk/fe;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe;

    .line 71
    :cond_0
    sget-object v0, Lcom/flurry/sdk/fe;->e:Lcom/flurry/sdk/fe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-boolean v0, p0, Lcom/flurry/sdk/fe;->d:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 198
    :goto_0
    return v0

    .line 196
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/fd;)V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    if-nez p1, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fe;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v1

    .line 76
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/fe;->d:Z

    .line 78
    invoke-direct {p0, v1}, Lcom/flurry/sdk/fe;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/fe;->a:Z

    .line 80
    iget-boolean v0, p0, Lcom/flurry/sdk/fe;->d:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/flurry/sdk/fe;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/flurry/sdk/fe;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/flurry/sdk/fe;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/fe;->a:Z

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/flurry/sdk/fe;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/fe;->a:Z

    .line 159
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fe;->a(Landroid/content/Context;)Z

    move-result v0

    .line 171
    iget-boolean v1, p0, Lcom/flurry/sdk/fe;->a:Z

    if-eq v1, v0, :cond_1

    .line 172
    iput-boolean v0, p0, Lcom/flurry/sdk/fe;->a:Z

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flurry/sdk/fe;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 178
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fd;

    .line 179
    if-eqz v0, :cond_0

    .line 182
    iget-boolean v2, p0, Lcom/flurry/sdk/fe;->a:Z

    invoke-interface {v0, v2}, Lcom/flurry/sdk/fd;->b(Z)V

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method
