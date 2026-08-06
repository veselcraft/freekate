.class public Lcom/inmobi/rendering/a/c;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/a/c$a;,
        Lcom/inmobi/rendering/a/c$b;,
        Lcom/inmobi/rendering/a/c$c;,
        Lcom/inmobi/rendering/a/c$d;
    }
.end annotation


# static fields
.field public static a:Lcom/inmobi/ads/b$b;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/inmobi/rendering/a/c;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static f:Lcom/inmobi/rendering/a/c$a;

.field private static g:Landroid/os/HandlerThread;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/inmobi/rendering/a/b;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private l:Z

.field private m:Landroid/os/PowerManager;

.field private final n:Lcom/inmobi/rendering/a/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->d:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/a/c;->l:Z

    .line 250
    new-instance v0, Lcom/inmobi/rendering/a/c$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/a/c$4;-><init>(Lcom/inmobi/rendering/a/c;)V

    iput-object v0, p0, Lcom/inmobi/rendering/a/c;->n:Lcom/inmobi/rendering/a/c$d;

    .line 199
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v2, "Creating a new instance ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/inmobi/rendering/a/c;->d()V

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c;)Lcom/inmobi/rendering/a/c$d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/inmobi/rendering/a/c;->n:Lcom/inmobi/rendering/a/c$d;

    return-object v0
.end method

.method public static a()Lcom/inmobi/rendering/a/c;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/inmobi/rendering/a/c;->c:Lcom/inmobi/rendering/a/c;

    .line 75
    if-nez v0, :cond_1

    .line 76
    sget-object v1, Lcom/inmobi/rendering/a/c;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->c:Lcom/inmobi/rendering/a/c;

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/inmobi/rendering/a/c;

    invoke-direct {v0}, Lcom/inmobi/rendering/a/c;-><init>()V

    .line 80
    sput-object v0, Lcom/inmobi/rendering/a/c;->c:Lcom/inmobi/rendering/a/c;

    .line 82
    :cond_0
    monitor-exit v1

    .line 85
    :cond_1
    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/a/c;->b(Lcom/inmobi/rendering/a/a;)V

    return-void
.end method

.method private b(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 165
    iget v0, p1, Lcom/inmobi/rendering/a/a;->f:I

    if-lez v0, :cond_0

    .line 166
    iget v0, p1, Lcom/inmobi/rendering/a/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/inmobi/rendering/a/a;->f:I

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/inmobi/rendering/a/a;->d:J

    .line 168
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    invoke-virtual {v0, p1}, Lcom/inmobi/rendering/a/b;->a(Lcom/inmobi/rendering/a/a;)V

    .line 170
    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/rendering/a/b;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/inmobi/commons/core/utilities/e;->a()Lcom/inmobi/commons/core/utilities/e;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    new-instance v2, Lcom/inmobi/rendering/a/c$2;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$2;-><init>(Lcom/inmobi/rendering/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/e;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/e$b;)V

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 231
    invoke-static {}, Lcom/inmobi/commons/core/utilities/e;->a()Lcom/inmobi/commons/core/utilities/e;

    move-result-object v0

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    new-instance v2, Lcom/inmobi/rendering/a/c$3;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$3;-><init>(Lcom/inmobi/rendering/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/e;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/e$b;)V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 1

    .prologue
    .line 90
    check-cast p1, Lcom/inmobi/ads/b;

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->i()Lcom/inmobi/ads/b$b;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    .line 91
    return-void
.end method

.method protected a(Lcom/inmobi/rendering/a/a;)V
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/a/b;->a(Lcom/inmobi/rendering/a/a;I)Z

    .line 175
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v2, "No network available. Saving click for later processing ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/inmobi/rendering/a/c;->c()V

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/rendering/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/a/c$1;-><init>(Lcom/inmobi/rendering/a/c;Lcom/inmobi/rendering/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/inmobi/rendering/a/a;

    const/4 v4, 0x0

    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->a()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/rendering/a/a;-><init>(Ljava/lang/String;Ljava/util/Map;ZZI)V

    .line 138
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for pinging over HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/a;)V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 131
    new-instance v0, Lcom/inmobi/rendering/a/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b$b;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/inmobi/rendering/a/a;-><init>(Ljava/lang/String;ZZI)V

    .line 132
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for pinging over HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/a;)V

    .line 134
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v1, Lcom/inmobi/rendering/a/c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v3, "Resume processing clicks ..."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "pingHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 110
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Lcom/inmobi/rendering/a/c$a;

    sget-object v2, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/inmobi/rendering/a/c$a;-><init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    .line 117
    :cond_2
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v3, "Done processing all clicks!"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/inmobi/rendering/a/c;->c()V

    .line 127
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 124
    sget-object v2, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 143
    new-instance v0, Lcom/inmobi/rendering/a/a;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b$b;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/inmobi/rendering/a/a;-><init>(Ljava/lang/String;ZZI)V

    .line 144
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for pinging in WebView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/a;)V

    .line 146
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    sget-object v1, Lcom/inmobi/rendering/a/c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 154
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    .line 159
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    :cond_1
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pingHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 207
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v0, Lcom/inmobi/rendering/a/c$a;

    sget-object v1, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/rendering/a/c$a;-><init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    .line 210
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    .line 211
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 212
    invoke-virtual {v0}, Lcom/inmobi/ads/b;->i()Lcom/inmobi/ads/b$b;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/b$b;

    .line 213
    new-instance v0, Lcom/inmobi/rendering/a/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/a/b;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    .line 214
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/inmobi/rendering/a/c;->m:Landroid/os/PowerManager;

    .line 216
    invoke-direct {p0}, Lcom/inmobi/rendering/a/c;->i()V

    .line 218
    return-void
.end method
