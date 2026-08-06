.class public final Lcom/my/target/core/providers/d;
.super Lcom/my/target/core/providers/a;
.source "FingerprintDataProvider.java"


# static fields
.field private static a:Lcom/my/target/core/providers/d;


# instance fields
.field private b:Lcom/my/target/core/providers/b;

.field private c:Lcom/my/target/core/providers/c;

.field private d:Lcom/my/target/core/providers/e;

.field private e:Lcom/my/target/core/providers/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/my/target/core/providers/a;-><init>()V

    .line 38
    new-instance v0, Lcom/my/target/core/providers/b;

    invoke-direct {v0}, Lcom/my/target/core/providers/b;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/providers/d;->b:Lcom/my/target/core/providers/b;

    .line 39
    new-instance v0, Lcom/my/target/core/providers/c;

    invoke-direct {v0}, Lcom/my/target/core/providers/c;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/providers/d;->c:Lcom/my/target/core/providers/c;

    .line 40
    new-instance v0, Lcom/my/target/core/providers/e;

    invoke-direct {v0}, Lcom/my/target/core/providers/e;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/providers/d;->d:Lcom/my/target/core/providers/e;

    .line 41
    new-instance v0, Lcom/my/target/core/providers/f;

    invoke-direct {v0}, Lcom/my/target/core/providers/f;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/providers/d;->e:Lcom/my/target/core/providers/f;

    .line 71
    return-void
.end method

.method public static a()Lcom/my/target/core/providers/d;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/my/target/core/providers/d;->a:Lcom/my/target/core/providers/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/my/target/core/providers/d;

    invoke-direct {v0}, Lcom/my/target/core/providers/d;-><init>()V

    sput-object v0, Lcom/my/target/core/providers/d;->a:Lcom/my/target/core/providers/d;

    .line 30
    :cond_0
    sget-object v0, Lcom/my/target/core/providers/d;->a:Lcom/my/target/core/providers/d;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    const-string v0, "FingerprintDataProvider: You must not call collectData method from main thread"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/my/target/core/providers/d;->removeAll()V

    .line 86
    iget-object v0, p0, Lcom/my/target/core/providers/d;->b:Lcom/my/target/core/providers/b;

    invoke-virtual {v0, p1}, Lcom/my/target/core/providers/b;->a(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/my/target/core/providers/d;->c:Lcom/my/target/core/providers/c;

    invoke-virtual {v0, p1}, Lcom/my/target/core/providers/c;->a(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/my/target/core/providers/d;->d:Lcom/my/target/core/providers/e;

    invoke-virtual {v0, p1}, Lcom/my/target/core/providers/e;->a(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/my/target/core/providers/d;->e:Lcom/my/target/core/providers/f;

    invoke-virtual {v0, p1}, Lcom/my/target/core/providers/f;->a(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/my/target/core/providers/d;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/my/target/core/providers/d;->b:Lcom/my/target/core/providers/b;

    invoke-virtual {v1, v0}, Lcom/my/target/core/providers/b;->putDataTo(Ljava/util/Map;)V

    .line 94
    iget-object v1, p0, Lcom/my/target/core/providers/d;->c:Lcom/my/target/core/providers/c;

    invoke-virtual {v1, v0}, Lcom/my/target/core/providers/c;->putDataTo(Ljava/util/Map;)V

    .line 95
    iget-object v1, p0, Lcom/my/target/core/providers/d;->d:Lcom/my/target/core/providers/e;

    invoke-virtual {v1, v0}, Lcom/my/target/core/providers/e;->putDataTo(Ljava/util/Map;)V

    .line 96
    iget-object v1, p0, Lcom/my/target/core/providers/d;->e:Lcom/my/target/core/providers/f;

    invoke-virtual {v1, v0}, Lcom/my/target/core/providers/f;->putDataTo(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/my/target/core/providers/b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/my/target/core/providers/d;->b:Lcom/my/target/core/providers/b;

    return-object v0
.end method

.method public final c()Lcom/my/target/core/providers/c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/my/target/core/providers/d;->c:Lcom/my/target/core/providers/c;

    return-object v0
.end method
