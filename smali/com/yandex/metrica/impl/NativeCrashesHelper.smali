.class final Lcom/yandex/metrica/impl/NativeCrashesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/NativeCrashesHelper$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YandexMetricaNativeCrashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/NativeCrashesHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/yandex/metrica/impl/NativeCrashesHelper$1;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/NativeCrashesHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->setUpNativeUncaughtExceptionHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Z)Z
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->logsEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 1

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->cancelSetUpNativeUncaughtExceptionHandler()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native cancelSetUpNativeUncaughtExceptionHandler()V
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 198
    :try_start_0
    const-string v0, "YandexMetricaNativeModule"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native logsEnabled(Z)V
.end method

.method private static native setUpNativeUncaughtExceptionHandler(Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b(Z)Z

    .line 43
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ay;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;

    invoke-direct {v0, p1, p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;-><init>(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/NativeCrashesHelper;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
