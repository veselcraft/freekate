.class public Lcom/inmobi/commons/core/a/c;
.super Ljava/lang/Object;
.source "InMobiCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/a/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:Lcom/inmobi/commons/core/a/c$a;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/commons/core/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/a/c;->b:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/a/c;->c:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/core/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 44
    const-class v1, Lcom/inmobi/commons/core/a/c;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/core/a/c;->c:Z

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/inmobi/commons/core/a/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/a/a;-><init>()V

    .line 46
    new-instance v2, Lcom/inmobi/commons/core/a/c$a;

    invoke-direct {v2}, Lcom/inmobi/commons/core/a/c$a;-><init>()V

    sput-object v2, Lcom/inmobi/commons/core/a/c;->d:Lcom/inmobi/commons/core/a/c$a;

    .line 47
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v2

    sget-object v3, Lcom/inmobi/commons/core/a/c;->d:Lcom/inmobi/commons/core/a/c$a;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 48
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/commons/core/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/a/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 49
    new-instance v0, Lcom/inmobi/commons/core/a/c;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/inmobi/commons/core/a/c;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/core/a/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v1

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 36
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 37
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.inmobi."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/inmobi/commons/core/a/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/a/c;->b:Ljava/lang/String;

    const-string v2, "Crash due to inmobi, will report it"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/inmobi/commons/core/a/b;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/commons/core/a/b;-><init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 29
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
