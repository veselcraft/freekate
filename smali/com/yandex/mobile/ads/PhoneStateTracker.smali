.class public final Lcom/yandex/mobile/ads/PhoneStateTracker;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/PhoneStateTracker$b;,
        Lcom/yandex/mobile/ads/PhoneStateTracker$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/yandex/mobile/ads/PhoneStateTracker;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/yandex/mobile/ads/PhoneStateTracker$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->c:Ljava/util/WeakHashMap;

    .line 46
    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker$a;->c:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->a:Z

    .line 48
    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/PhoneStateTracker;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker;->d:Lcom/yandex/mobile/ads/PhoneStateTracker;

    if-nez v0, :cond_1

    .line 52
    sget-object v1, Lcom/yandex/mobile/ads/PhoneStateTracker;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker;->d:Lcom/yandex/mobile/ads/PhoneStateTracker;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/yandex/mobile/ads/PhoneStateTracker;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/PhoneStateTracker;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker;->d:Lcom/yandex/mobile/ads/PhoneStateTracker;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker;->d:Lcom/yandex/mobile/ads/PhoneStateTracker;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/PhoneStateTracker$b;

    .line 136
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/PhoneStateTracker$b;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 167
    :goto_0
    monitor-exit p0

    return v0

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 93
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->a:Z

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/PhoneStateTracker;->b(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/PhoneStateTracker;->b(Landroid/content/Context;)Z
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

.method public declared-synchronized b(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 154
    :goto_0
    monitor-exit p0

    return v0

    .line 151
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    sget-object v1, Lcom/yandex/mobile/ads/PhoneStateTracker$a;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 65
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker$a;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    .line 68
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker$a;->c:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_3
    :try_start_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/PhoneStateTracker$a;->a:Lcom/yandex/mobile/ads/PhoneStateTracker$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/PhoneStateTracker;->b:Lcom/yandex/mobile/ads/PhoneStateTracker$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
