.class public Lcom/inmobi/signals/n;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/inmobi/signals/n;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/signals/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/n;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a()Lcom/inmobi/signals/n;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 19
    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/inmobi/signals/n;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 22
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/inmobi/signals/n;

    invoke-direct {v0}, Lcom/inmobi/signals/n;-><init>()V

    sput-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 24
    sget-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 26
    :cond_0
    monitor-exit v1

    .line 28
    :cond_1
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/utilities/info/f;->a(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/info/f;->a(J)V

    .line 39
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/info/f;->b(J)V

    .line 40
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    const-string v2, "Session tracking started."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/info/f;->b(J)V

    .line 47
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    const-string v2, "Session tracking stopped."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method d()Lcom/inmobi/commons/core/utilities/info/f;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    goto :goto_0
.end method
