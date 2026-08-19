.class public Lcom/my/target/fm;
.super Lcom/my/target/fj;
.source "HuaweiOAIdDataProvider.java"


# instance fields
.field private gI:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/my/target/fj;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/my/target/fm;->gI:Z

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.hms.ads.identifier.AdvertisingIdClient"

    .line 87
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "send huawei AId"

    .line 90
    invoke-static {v2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 91
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 94
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getId"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v4, v6, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "huawei AId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 103
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isLimitAdTrackingEnabled"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "huawei ad tracking enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catchall_1
    :cond_4
    move-object v1, v0

    .line 117
    :goto_3
    monitor-enter p0

    :try_start_2
    const-string v2, "oaid"

    .line 119
    invoke-virtual {p0, v2, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "oaid_tracking_enabled"

    .line 120
    invoke-virtual {p0, v2, v1}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    invoke-static {p1}, Lcom/my/target/ir;->O(Landroid/content/Context;)Lcom/my/target/ir;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/my/target/ir;->aj(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/my/target/ir;->O(Landroid/content/Context;)Lcom/my/target/ir;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/my/target/ir;->ak(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p1

    .line 121
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method static synthetic a(Lcom/my/target/fm;Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/my/target/fm;->B(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized collectData(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/my/target/ai;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "You must not call collectData method from main thread"

    .line 30
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/my/target/fm;->gI:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 36
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/my/target/ir;->O(Landroid/content/Context;)Lcom/my/target/ir;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.huawei.hms.ads.identifier.AdvertisingIdClient"

    .line 43
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    invoke-virtual {v0}, Lcom/my/target/ir;->eP()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lcom/my/target/ir;->eQ()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "oaid"

    .line 62
    invoke-virtual {p0, v3, v2}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "oaid_tracking_enabled"

    .line 63
    invoke-virtual {p0, v2, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    new-instance v0, Lcom/my/target/fm$1;

    invoke-direct {v0, p0, p1}, Lcom/my/target/fm$1;-><init>(Lcom/my/target/fm;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/my/target/ai;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/my/target/fm;->B(Landroid/content/Context;)V

    .line 73
    :goto_1
    iput-boolean v1, p0, Lcom/my/target/fm;->gI:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 47
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/my/target/ir;->aj(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/my/target/ir;->ak(Ljava/lang/String;)V

    .line 49
    iput-boolean v1, p0, Lcom/my/target/fm;->gI:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
