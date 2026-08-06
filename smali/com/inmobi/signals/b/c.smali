.class public Lcom/inmobi/signals/b/c;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/b/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/inmobi/signals/b/c$a;

.field private static d:Landroid/os/Handler;

.field private static e:Z

.field private static final f:Landroid/content/IntentFilter;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/Runnable;

.field private static final i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-class v0, Lcom/inmobi/signals/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/b/c;->a:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/inmobi/signals/b/c;->b:Landroid/content/Context;

    .line 30
    sput-object v1, Lcom/inmobi/signals/b/c;->c:Lcom/inmobi/signals/b/c$a;

    .line 31
    sput-object v1, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/signals/b/c;->e:Z

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/signals/b/c;->f:Landroid/content/IntentFilter;

    .line 57
    new-instance v0, Lcom/inmobi/signals/b/c$1;

    invoke-direct {v0}, Lcom/inmobi/signals/b/c$1;-><init>()V

    sput-object v0, Lcom/inmobi/signals/b/c;->h:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/inmobi/signals/b/c$2;

    invoke-direct {v0}, Lcom/inmobi/signals/b/c$2;-><init>()V

    sput-object v0, Lcom/inmobi/signals/b/c;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/signals/b/c;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/inmobi/signals/b/c;->g:Ljava/util/List;

    return-object p0
.end method

.method private static declared-synchronized a(Landroid/os/Looper;Lcom/inmobi/signals/b/c$a;JZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    const-class v2, Lcom/inmobi/signals/b/c;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v1

    .line 54
    :goto_0
    monitor-exit v2

    return v0

    .line 47
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 48
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 50
    :cond_1
    sput-object p1, Lcom/inmobi/signals/b/c;->c:Lcom/inmobi/signals/b/c$a;

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;

    .line 52
    sget-object v1, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;

    sget-object v3, Lcom/inmobi/signals/b/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    invoke-static {}, Lcom/inmobi/signals/b/c;->h()V

    .line 54
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Lcom/inmobi/signals/b/c$a;)Z
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/b/c;->b:Landroid/content/Context;

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x2710

    const/4 v1, 0x0

    invoke-static {v0, p0, v2, v3, v1}, Lcom/inmobi/signals/b/c;->a(Landroid/os/Looper;Lcom/inmobi/signals/b/c$a;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/inmobi/signals/b/c$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/signals/b/c;->c:Lcom/inmobi/signals/b/c$a;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/inmobi/signals/b/c;->f()V

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/signals/b/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/inmobi/signals/b/c;->g:Ljava/util/List;

    return-object v0
.end method

.method private static declared-synchronized f()V
    .locals 3

    .prologue
    .line 69
    const-class v1, Lcom/inmobi/signals/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    monitor-exit v1

    return-void

    .line 72
    :cond_0
    :try_start_1
    sget-object v0, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;

    sget-object v2, Lcom/inmobi/signals/b/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    invoke-static {}, Lcom/inmobi/signals/b/c;->g()V

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/signals/b/c;->c:Lcom/inmobi/signals/b/c$a;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/signals/b/c;->b:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static g()V
    .locals 3

    .prologue
    .line 80
    sget-boolean v0, Lcom/inmobi/signals/b/c;->e:Z

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/signals/b/c;->e:Z

    .line 83
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/b/c;->b:Landroid/content/Context;

    sget-object v1, Lcom/inmobi/signals/b/c;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/b/c;->a:Ljava/lang/String;

    const-string v2, "Failed to register for Wifi scanning."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static h()V
    .locals 5

    .prologue
    .line 103
    sget-boolean v0, Lcom/inmobi/signals/b/c;->e:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/signals/b/c;->e:Z

    .line 105
    sget-object v0, Lcom/inmobi/signals/b/c;->b:Landroid/content/Context;

    sget-object v1, Lcom/inmobi/signals/b/c;->i:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/inmobi/signals/b/c;->f:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    sget-object v4, Lcom/inmobi/signals/b/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method
