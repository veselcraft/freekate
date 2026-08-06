.class public Lcom/inmobi/commons/core/configs/b;
.super Ljava/lang/Object;
.source "ConfigComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/b$a;,
        Lcom/inmobi/commons/core/configs/b$c;,
        Lcom/inmobi/commons/core/configs/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/commons/core/configs/a;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/commons/core/configs/b$b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static d:Lcom/inmobi/commons/core/configs/g;

.field private static volatile e:Lcom/inmobi/commons/core/configs/b;

.field private static f:Lcom/inmobi/commons/core/configs/b$c;


# instance fields
.field private g:Landroid/os/HandlerThread;

.field private h:Lcom/inmobi/commons/core/configs/b$a;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/inmobi/commons/core/configs/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/b;->i:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/b;->c:Ljava/util/Map;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConfigBootstrapHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b;->g:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Lcom/inmobi/commons/core/configs/b$a;

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/configs/b$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b;->h:Lcom/inmobi/commons/core/configs/b$a;

    .line 65
    new-instance v0, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    .line 66
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/configs/b;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->e:Lcom/inmobi/commons/core/configs/b;

    .line 47
    if-nez v0, :cond_1

    .line 48
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->e:Lcom/inmobi/commons/core/configs/b;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/inmobi/commons/core/configs/b;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/b;-><init>()V

    .line 52
    sput-object v0, Lcom/inmobi/commons/core/configs/b;->e:Lcom/inmobi/commons/core/configs/b;

    .line 54
    :cond_0
    monitor-exit v1

    .line 56
    :cond_1
    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/g;)Lcom/inmobi/commons/core/configs/g;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0}, Lcom/inmobi/commons/core/configs/b;->b(Lcom/inmobi/commons/core/configs/a;)V

    return-void
.end method

.method private a(JJ)Z
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 191
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p3

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 359
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v2

    .line 365
    :goto_0
    :try_start_0
    array-length v3, v4

    if-ge v0, v3, :cond_2

    .line 366
    aget-object v3, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 367
    if-gez v3, :cond_1

    .line 386
    :cond_0
    :goto_1
    return v2

    .line 365
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 370
    :goto_2
    array-length v3, v5

    if-ge v0, v3, :cond_3

    .line 371
    aget-object v3, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 372
    if-ltz v3, :cond_0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 379
    :cond_3
    array-length v0, v4

    array-length v3, v5

    if-ge v0, v3, :cond_4

    array-length v0, v4

    :goto_3
    move v3, v2

    .line 380
    :goto_4
    if-ge v3, v0, :cond_7

    .line 381
    aget-object v6, v4, v3

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 382
    aget-object v0, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v3, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_5

    move v0, v1

    :goto_5
    move v2, v0

    goto :goto_1

    .line 379
    :cond_4
    array-length v0, v5

    goto :goto_3

    :cond_5
    move v0, v2

    .line 382
    goto :goto_5

    .line 380
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 386
    :cond_7
    array-length v0, v4

    array-length v3, v5

    if-ge v0, v3, :cond_8

    :goto_6
    move v2, v1

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_6

    .line 375
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 119
    if-eqz v0, :cond_1

    .line 120
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/core/configs/b$b;

    invoke-interface {v1, p0}, Lcom/inmobi/commons/core/configs/b$b;->a(Lcom/inmobi/commons/core/configs/a;)V

    .line 120
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method private b(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 101
    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 104
    :goto_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private final declared-synchronized c(Lcom/inmobi/commons/core/configs/a;)V
    .locals 6

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/inmobi/commons/core/configs/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/c;-><init>()V

    .line 153
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RootConfig not available. Fetching root and returning defaults for config type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->d()Lcom/inmobi/commons/core/configs/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/b;->d(Lcom/inmobi/commons/core/configs/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/c;->b(Lcom/inmobi/commons/core/configs/a;)V

    .line 161
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/c;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 162
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    sget-object v4, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/inmobi/commons/core/configs/g;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/inmobi/commons/core/configs/b;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    const-string v3, "RootConfig expired. Fetching root."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/g;->d()Lcom/inmobi/commons/core/configs/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/commons/core/configs/b;->d(Lcom/inmobi/commons/core/configs/a;)V

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested config not present. Returning default and fetching. Config type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->d()Lcom/inmobi/commons/core/configs/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/b;->d(Lcom/inmobi/commons/core/configs/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/inmobi/commons/core/configs/c;->b(Lcom/inmobi/commons/core/configs/a;)V

    .line 176
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 177
    sget-object v2, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/configs/g;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/inmobi/commons/core/configs/b;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested config expired. Returning currently cached and fetching. Config type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->d()Lcom/inmobi/commons/core/configs/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/b;->d(Lcom/inmobi/commons/core/configs/a;)V

    goto/16 :goto_0

    .line 184
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serving config from cache. Config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private d(Lcom/inmobi/commons/core/configs/a;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b;->h:Lcom/inmobi/commons/core/configs/b$a;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 200
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b;->h:Lcom/inmobi/commons/core/configs/b$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 203
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/commons/core/configs/g;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/a;

    .line 111
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/b;->c(Lcom/inmobi/commons/core/configs/a;)V

    .line 112
    invoke-static {v0}, Lcom/inmobi/commons/core/configs/b;->b(Lcom/inmobi/commons/core/configs/a;)V

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/b;->i:Z

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config component not yet started, config can\'t be fetched. Requested type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/core/configs/b;->b(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/b;->c(Lcom/inmobi/commons/core/configs/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/b;->i:Z

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    const-string v2, "Starting config component."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/b;->i:Z

    .line 73
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v1, "root"

    sget-object v2, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/g;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->f:Lcom/inmobi/commons/core/configs/b$c;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/inmobi/commons/core/configs/b$c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/b$c;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/b;->f:Lcom/inmobi/commons/core/configs/b$c;

    .line 76
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->f:Lcom/inmobi/commons/core/configs/b$c;

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/b;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/b;->i:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    const-string v2, "Stopping config component."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/b;->i:Z

    .line 94
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b;->h:Lcom/inmobi/commons/core/configs/b$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 139
    sget-object v0, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->h()Lcom/inmobi/commons/core/configs/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$b;->a()Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/inmobi/commons/core/configs/b;->d:Lcom/inmobi/commons/core/configs/g;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/g;->h()Lcom/inmobi/commons/core/configs/g$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/g$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/core/configs/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/configs/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A newer version (version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") of the InMobi SDK is available! "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "You are currently on an older version (Version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "). Please download the latest InMobi SDK from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method
