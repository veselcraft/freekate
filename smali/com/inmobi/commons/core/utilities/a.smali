.class public Lcom/inmobi/commons/core/utilities/a;
.super Ljava/lang/Object;
.source "ApplicationFocusChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/utilities/a$a;,
        Lcom/inmobi/commons/core/utilities/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/utilities/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static e:Landroid/os/HandlerThread;

.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/inmobi/commons/core/utilities/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/inmobi/commons/core/utilities/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->b:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/utilities/a;->d:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->e:Landroid/os/HandlerThread;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/utilities/a;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->g:Lcom/inmobi/commons/core/utilities/a;

    .line 51
    if-nez v0, :cond_1

    .line 52
    sget-object v1, Lcom/inmobi/commons/core/utilities/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->g:Lcom/inmobi/commons/core/utilities/a;

    .line 54
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/inmobi/commons/core/utilities/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/a;-><init>()V

    .line 56
    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->g:Lcom/inmobi/commons/core/utilities/a;

    .line 58
    :cond_0
    monitor-exit v1

    .line 60
    :cond_1
    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/a;->b(Z)V

    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/core/utilities/a;->d:Z

    .line 201
    return-void
.end method

.method private static b(Z)V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/commons/core/utilities/a$2;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/core/utilities/a$2;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/utilities/a;->d:Z

    .line 205
    return-void
.end method

.method static synthetic d()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->e:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/inmobi/commons/core/utilities/a;->d:Z

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 70
    const-string v0, "registerActivityLifecycleCallbacks"

    .line 71
    const-string v0, "ActivityLifecycleCallbacks"

    .line 72
    const-string v0, "onActivityPaused"

    .line 73
    const-string v0, "onActivityResumed"

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationFocusChangeObserverHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->e:Landroid/os/HandlerThread;

    .line 76
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    const-class v0, Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    .line 79
    const/4 v1, 0x0

    .line 81
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityLifecycleCallbacks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    new-array v1, v8, [Ljava/lang/Class;

    .line 84
    aput-object v0, v1, v3

    .line 81
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Class;

    aput-object v1, v2, v3

    new-instance v3, Lcom/inmobi/commons/core/utilities/a$1;

    invoke-direct {v3, p0}, Lcom/inmobi/commons/core/utilities/a$1;-><init>(Lcom/inmobi/commons/core/utilities/a;)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/a;->c:Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 118
    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 120
    :try_start_0
    const-class v2, Landroid/app/Application;

    const-string v3, "registerActivityLifecycleCallbacks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/inmobi/commons/core/utilities/a;->c:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 136
    :cond_1
    :goto_2
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    const-string v3, "Error while registering activity life cycle listener."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    const-string v3, "Error while registering activity life cycle listener."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 127
    :catch_2
    move-exception v0

    .line 128
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    const-string v3, "Error while registering activity life cycle listener."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 129
    :catch_3
    move-exception v0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string v2, "type"

    const-string v3, "NullPointerException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "root"

    const-string v3, "ExceptionCaught"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    const-string v0, "unregisterActivityLifecycleCallbacks"

    .line 144
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 145
    sget-object v1, Lcom/inmobi/commons/core/utilities/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 146
    const-class v2, Landroid/app/Application;

    const-string v3, "unregisterActivityLifecycleCallbacks"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 148
    sget-object v1, Lcom/inmobi/commons/core/utilities/a;->c:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 162
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->stop()V

    .line 163
    sput-object v4, Lcom/inmobi/commons/core/utilities/a;->e:Landroid/os/HandlerThread;

    .line 164
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    const-string v3, "Error while unregistering activity life cycle listener."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    const-string v3, "Error while unregistering activity life cycle listener."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :catch_2
    move-exception v0

    .line 155
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/a;->a:Ljava/lang/String;

    const-string v3, "Error while unregistering activity life cycle listener."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    :catch_3
    move-exception v0

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    const-string v2, "type"

    const-string v3, "NullPointerException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "root"

    const-string v3, "ExceptionCaught"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/utilities/a$b;)V
    .locals 2

    .prologue
    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/inmobi/commons/core/utilities/a;->h()V

    goto :goto_0
.end method

.method public b(Lcom/inmobi/commons/core/utilities/a$b;)V
    .locals 2

    .prologue
    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/inmobi/commons/core/utilities/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/inmobi/commons/core/utilities/a;->i()V

    goto :goto_0
.end method
