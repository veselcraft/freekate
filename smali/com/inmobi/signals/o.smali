.class public Lcom/inmobi/signals/o;
.super Ljava/lang/Object;
.source "SignalsComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/signals/o;


# instance fields
.field private d:Lcom/inmobi/signals/i;

.field private e:Lcom/inmobi/signals/g;

.field private f:Lcom/inmobi/signals/p;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/signals/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/o;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    .line 40
    new-instance v0, Lcom/inmobi/signals/p;

    invoke-direct {v0}, Lcom/inmobi/signals/p;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    .line 41
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 43
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/utilities/info/f;->a(Z)V

    .line 44
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/LocationInfo;->a(Z)V

    .line 45
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v1}, Lcom/inmobi/signals/p;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v2}, Lcom/inmobi/signals/p;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method

.method public static a()Lcom/inmobi/signals/o;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/signals/o;->c:Lcom/inmobi/signals/o;

    .line 27
    if-nez v0, :cond_1

    .line 28
    sget-object v1, Lcom/inmobi/signals/o;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/o;->c:Lcom/inmobi/signals/o;

    .line 30
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/inmobi/signals/o;

    invoke-direct {v0}, Lcom/inmobi/signals/o;-><init>()V

    .line 32
    sput-object v0, Lcom/inmobi/signals/o;->c:Lcom/inmobi/signals/o;

    .line 34
    :cond_0
    monitor-exit v1

    .line 36
    :cond_1
    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 50
    check-cast p1, Lcom/inmobi/signals/p;

    iput-object p1, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    .line 51
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/LocationInfo;->a(Z)V

    .line 52
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/utilities/info/f;->a(Z)V

    .line 53
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v1}, Lcom/inmobi/signals/p;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v2}, Lcom/inmobi/signals/p;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    const-string v2, "Starting signals component."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    .line 61
    invoke-virtual {p0}, Lcom/inmobi/signals/o;->g()V

    .line 62
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/LocationInfo;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    const-string v2, "Stopping signals component."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    .line 71
    invoke-virtual {p0}, Lcom/inmobi/signals/o;->h()V

    .line 72
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/LocationInfo;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Lcom/inmobi/commons/core/utilities/uid/d;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v1, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v1}, Lcom/inmobi/signals/p;->o()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public e()Lcom/inmobi/signals/p$b;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v0}, Lcom/inmobi/signals/p;->f()Lcom/inmobi/signals/p$b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/inmobi/signals/p$a;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inmobi/signals/o;->f:Lcom/inmobi/signals/p;

    invoke-virtual {v0}, Lcom/inmobi/signals/p;->g()Lcom/inmobi/signals/p$a;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized g()V
    .locals 3

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    const-string v2, "Ice can not be started as Signals component has not been started."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/n;->b()V

    .line 97
    iget-object v0, p0, Lcom/inmobi/signals/o;->d:Lcom/inmobi/signals/i;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/inmobi/signals/i;

    invoke-direct {v0}, Lcom/inmobi/signals/i;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/o;->d:Lcom/inmobi/signals/i;

    .line 99
    iget-object v0, p0, Lcom/inmobi/signals/o;->d:Lcom/inmobi/signals/i;

    invoke-virtual {v0}, Lcom/inmobi/signals/i;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/signals/o;->d:Lcom/inmobi/signals/i;

    invoke-virtual {v0}, Lcom/inmobi/signals/i;->a()V

    goto :goto_0

    .line 104
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    const-string v2, "User data collection is disabled."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/n;->c()V

    .line 114
    iget-object v0, p0, Lcom/inmobi/signals/o;->d:Lcom/inmobi/signals/i;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/inmobi/signals/o;->d:Lcom/inmobi/signals/i;

    invoke-virtual {v0}, Lcom/inmobi/signals/i;->c()V

    .line 117
    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/inmobi/signals/o;->g:Z

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    const-string v2, "Carb can not be started as Signals component has not been started."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/signals/o;->f()Lcom/inmobi/signals/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/inmobi/signals/o;->e:Lcom/inmobi/signals/g;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/inmobi/signals/g;

    invoke-direct {v0}, Lcom/inmobi/signals/g;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/o;->e:Lcom/inmobi/signals/g;

    .line 128
    iget-object v0, p0, Lcom/inmobi/signals/o;->e:Lcom/inmobi/signals/g;

    invoke-virtual {p0}, Lcom/inmobi/signals/o;->f()Lcom/inmobi/signals/p$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/p$a;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/inmobi/signals/o;->e:Lcom/inmobi/signals/g;

    invoke-virtual {p0}, Lcom/inmobi/signals/o;->f()Lcom/inmobi/signals/p$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/p$a;)V

    goto :goto_0

    .line 133
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/o;->a:Ljava/lang/String;

    const-string v2, "Carb is disabled."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
