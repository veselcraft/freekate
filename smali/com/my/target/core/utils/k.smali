.class public Lcom/my/target/core/utils/k;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# static fields
.field private static a:Lcom/my/target/core/utils/k;

.field private static b:Z


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/my/target/core/utils/k;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/my/target/core/utils/k;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/my/target/core/utils/k;->a:Lcom/my/target/core/utils/k;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/my/target/core/utils/k;

    invoke-direct {v0}, Lcom/my/target/core/utils/k;-><init>()V

    sput-object v0, Lcom/my/target/core/utils/k;->a:Lcom/my/target/core/utils/k;

    .line 29
    :cond_0
    sget-object v0, Lcom/my/target/core/utils/k;->a:Lcom/my/target/core/utils/k;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/utils/k;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/my/target/core/utils/k;
    .locals 2

    .prologue
    .line 35
    sget-boolean v0, Lcom/my/target/core/utils/k;->b:Z

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/my/target/core/utils/k;->c:Landroid/content/Context;

    .line 38
    const-string v0, "mytarget_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/utils/k;->d:Landroid/content/SharedPreferences;

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/my/target/core/utils/k;->b:Z

    .line 42
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "mrgsDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/my/target/core/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    const-string v0, "mrgsDeviceId"

    .line 1108
    iget-object v1, p0, Lcom/my/target/core/utils/k;->d:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
