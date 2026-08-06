.class public Lcom/inmobi/commons/core/c/a;
.super Ljava/lang/Object;
.source "TelemetryComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/c/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/commons/core/c/a;

.field private static d:Z

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/inmobi/commons/core/c/c;

.field private static final o:Ljava/util/Random;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/inmobi/commons/core/c/a$a;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/inmobi/commons/core/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/c/a;->b:Ljava/lang/Object;

    .line 43
    sput-boolean v1, Lcom/inmobi/commons/core/c/a;->d:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/core/c/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/inmobi/commons/core/c/a;->o:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->l:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->m:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->n:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/c/a;->f:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/inmobi/commons/core/c/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/c;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    .line 79
    sget-object v0, Lcom/inmobi/commons/core/c/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/c;->m()Lcom/inmobi/commons/core/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lcom/inmobi/commons/core/c/b;)V

    .line 82
    new-instance v0, Lcom/inmobi/commons/core/c/a$1;

    invoke-direct {v0, p0}, Lcom/inmobi/commons/core/c/a$1;-><init>(Lcom/inmobi/commons/core/c/a;)V

    .line 96
    invoke-static {}, Lcom/inmobi/commons/core/utilities/e;->a()Lcom/inmobi/commons/core/utilities/e;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/e;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/e$b;)V

    .line 97
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/c/a;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/inmobi/commons/core/c/a;->c:Lcom/inmobi/commons/core/c/a;

    .line 61
    if-nez v0, :cond_1

    .line 62
    sget-object v1, Lcom/inmobi/commons/core/c/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/c/a;->c:Lcom/inmobi/commons/core/c/a;

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/inmobi/commons/core/c/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/a;-><init>()V

    .line 66
    sput-object v0, Lcom/inmobi/commons/core/c/a;->c:Lcom/inmobi/commons/core/c/a;

    .line 68
    :cond_0
    monitor-exit v1

    .line 71
    :cond_1
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@$#$@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 258
    invoke-static {}, Lcom/inmobi/commons/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "App not in foreground or No Network available"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    if-eqz v0, :cond_1

    .line 265
    if-lez p1, :cond_3

    .line 266
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin reporting after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/c/a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/c/a;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/c/a;Lcom/inmobi/commons/core/c/e;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->c(Lcom/inmobi/commons/core/c/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/commons/core/c/b;)V
    .locals 4

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "Component type provided while registering is null or empty!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_1
    if-eqz p2, :cond_2

    .line 115
    sget-object v0, Lcom/inmobi/commons/core/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/c/a;->f:Ljava/util/Map;

    new-instance v1, Lcom/inmobi/commons/core/c/b;

    const/4 v2, 0x0

    sget-object v3, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/c/c;->m()Lcom/inmobi/commons/core/c/b;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/inmobi/commons/core/c/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/c/b;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/commons/core/c/a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, "\\@\\$\\#\\$\\@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/commons/core/c/a;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a;->i()V

    return-void
.end method

.method private c(Lcom/inmobi/commons/core/c/e;)V
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->g(Lcom/inmobi/commons/core/c/e;)Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telemetry service is not enabled or registered for component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->d(Lcom/inmobi/commons/core/c/e;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->e(Lcom/inmobi/commons/core/c/e;)V

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/inmobi/commons/core/c/e;)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->h(Lcom/inmobi/commons/core/c/e;)Lcom/inmobi/commons/core/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/core/c/a;->b(Lcom/inmobi/commons/core/c/e;)V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/inmobi/commons/core/c/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e(Lcom/inmobi/commons/core/c/e;)V
    .locals 5

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->h(Lcom/inmobi/commons/core/c/e;)Lcom/inmobi/commons/core/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b$a;->b()I

    move-result v0

    .line 176
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event Sampling factor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-gtz v0, :cond_0

    .line 179
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "Sampling factor is <=0 for this event!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/c/a;->o:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not lucky enough to be processed further"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->f(Lcom/inmobi/commons/core/c/e;)V

    goto :goto_0
.end method

.method static synthetic f()Lcom/inmobi/commons/core/c/c;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    return-object v0
.end method

.method private f(Lcom/inmobi/commons/core/c/e;)V
    .locals 6

    .prologue
    .line 194
    instance-of v0, p1, Lcom/inmobi/commons/core/a/b;

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "Got a crash event, will save it right away!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/inmobi/commons/core/c/d;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/d;-><init>()V

    .line 198
    invoke-virtual {v0, p1}, Lcom/inmobi/commons/core/c/d;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in memory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/c;->h()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a;->g()V

    .line 211
    new-instance v0, Lcom/inmobi/commons/core/c/d;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/d;-><init>()V

    .line 212
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/d;->c()I

    move-result v0

    .line 213
    sget-object v1, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/c;->l()I

    move-result v1

    .line 214
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current event count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Upper cap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_0

    .line 217
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "Telemetry is more than 75% full. Begin reporting "

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/inmobi/commons/core/c/a;->h()V

    goto/16 :goto_0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g(Lcom/inmobi/commons/core/c/e;)Lcom/inmobi/commons/core/c/b;
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 224
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding events "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to persistence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/inmobi/commons/core/c/d;

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/d;-><init>()V

    .line 227
    sget-object v2, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/c/c;->l()I

    move-result v2

    .line 228
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/d;->c()I

    move-result v3

    .line 229
    iget-object v4, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 230
    if-gtz v4, :cond_0

    .line 231
    iget-object v2, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/c/d;->a(Ljava/util/List;)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 233
    :cond_0
    sub-int/2addr v2, v3

    .line 234
    if-gtz v2, :cond_1

    .line 235
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v3, "Persistence is full, won\'t add events"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/commons/core/c/a;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inmobi/commons/core/c/d;->a(Ljava/util/List;)V

    .line 238
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persistence will overflow, will add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " events to persistence"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private h(Lcom/inmobi/commons/core/c/e;)Lcom/inmobi/commons/core/c/b$a;
    .locals 2

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/c/a;->g(Lcom/inmobi/commons/core/c/e;)Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/c/b$a;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/c/a;->a(I)V

    .line 255
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 297
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v3, "Deiniting telemetry"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 301
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    .line 305
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/c/a;->d:Z

    .line 307
    :cond_0
    monitor-exit v1

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 7

    .prologue
    .line 334
    iget-object v2, p0, Lcom/inmobi/commons/core/c/a;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v3, "Saving metric to persistence"

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v3, Lcom/inmobi/commons/core/c/d;

    invoke-direct {v3}, Lcom/inmobi/commons/core/c/d;-><init>()V

    .line 337
    invoke-virtual {v3}, Lcom/inmobi/commons/core/c/d;->b()V

    .line 338
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/inmobi/commons/core/c/a;->b(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 341
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 342
    const-string v6, "count"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v1, v5}, Lcom/inmobi/commons/core/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v5, "Error forming metric payload"

    invoke-static {v0, v1, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 348
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 349
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/inmobi/commons/core/c/b;
    .locals 3

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "Request null or empty Component type!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/c/b;

    goto :goto_0
.end method

.method public a(Lcom/inmobi/commons/core/c/e;)V
    .locals 4

    .prologue
    .line 148
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event submitted to telemetry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 153
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/c/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/inmobi/commons/core/c/c;

    sput-object p1, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Lcom/inmobi/commons/core/c/e;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 134
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 135
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error forming JSON payload for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 145
    return-void

    .line 139
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/inmobi/commons/core/c/b;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->h:Lcom/inmobi/commons/core/c/c;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/c;->m()Lcom/inmobi/commons/core/c/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/inmobi/commons/core/c/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/c/b;)V

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lcom/inmobi/commons/core/c/b;)V

    .line 107
    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "start called"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/inmobi/commons/core/c/a;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    sget-boolean v0, Lcom/inmobi/commons/core/c/a;->d:Z

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/core/c/a;->d:Z

    .line 280
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "telemetry"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    .line 281
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 282
    new-instance v0, Lcom/inmobi/commons/core/c/a$a;

    iget-object v2, p0, Lcom/inmobi/commons/core/c/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/inmobi/commons/core/c/a$a;-><init>(Lcom/inmobi/commons/core/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    .line 284
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/inmobi/commons/core/c/a;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/inmobi/commons/core/c/e;)V
    .locals 6

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/inmobi/commons/core/c/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 313
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metric collected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/inmobi/commons/core/c/a;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    iget-object v3, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_0
    monitor-exit v2

    .line 323
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->k:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/c/a;->a:Ljava/lang/String;

    const-string v2, "stop called"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/inmobi/commons/core/c/a;->j:Lcom/inmobi/commons/core/c/a$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
