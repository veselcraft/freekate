.class public Lcom/my/target/ir;
.super Ljava/lang/Object;
.source "PrefsCache.java"


# static fields
.field private static volatile py:Lcom/my/target/ir;


# instance fields
.field private final pz:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/my/target/ir;->pz:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static O(Landroid/content/Context;)Lcom/my/target/ir;
    .locals 3

    .line 29
    sget-object v0, Lcom/my/target/ir;->py:Lcom/my/target/ir;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/my/target/ir;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/my/target/ir;->py:Lcom/my/target/ir;

    if-nez v0, :cond_0

    const-string v0, "mytarget_prefs"

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 38
    new-instance v0, Lcom/my/target/ir;

    invoke-direct {v0, p0}, Lcom/my/target/ir;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/my/target/ir;->py:Lcom/my/target/ir;

    .line 40
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/my/target/ir;->pz:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrefsCache exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/my/target/ir;->pz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PrefsCache exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public aj(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hoaid"

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/my/target/ir;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ak(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hlimit"

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/my/target/ir;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eP()Ljava/lang/String;
    .locals 1

    const-string v0, "hoaid"

    .line 54
    invoke-direct {p0, v0}, Lcom/my/target/ir;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eQ()Ljava/lang/String;
    .locals 1

    const-string v0, "hlimit"

    .line 64
    invoke-direct {p0, v0}, Lcom/my/target/ir;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
