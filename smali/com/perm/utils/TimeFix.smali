.class public abstract Lcom/perm/utils/TimeFix;
.super Ljava/lang/Object;
.source "TimeFix.java"


# static fields
.field private static enabled:Z

.field private static fix:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/perm/utils/TimeFix;->restoreFix()J

    move-result-wide v0

    sput-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    .line 17
    invoke-static {}, Lcom/perm/utils/TimeFix;->getEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/perm/utils/TimeFix;->enabled:Z

    return-void
.end method

.method public static fix(J)J
    .locals 2

    .line 44
    sget-boolean v0, Lcom/perm/utils/TimeFix;->enabled:Z

    if-nez v0, :cond_0

    return-wide p0

    .line 46
    :cond_0
    sget-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static get()J
    .locals 2

    .line 58
    sget-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    return-wide v0
.end method

.method private static getEnabled()Z
    .locals 3

    .line 68
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timefix_enabled"

    const/4 v2, 0x1

    .line 69
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static gotTimeFromServer(J)V
    .locals 7

    const-string v0, "Kate.TimeFix"

    const-wide/16 v1, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server_seconds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local_seconds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr p0, v3

    .line 25
    sput-wide p0, Lcom/perm/utils/TimeFix;->fix:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double p0, p0

    const-wide v3, 0x40ac200000000000L    # 3600.0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v3, 0xe10

    mul-long p0, p0, v3

    sput-wide p0, Lcom/perm/utils/TimeFix;->fix:J

    const-wide/32 v3, 0x8ca0

    cmp-long v5, p0, v3

    if-lez v5, :cond_0

    .line 31
    sput-wide v1, Lcom/perm/utils/TimeFix;->fix:J

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fix="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/perm/utils/TimeFix;->fix:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 36
    sput-wide v1, Lcom/perm/utils/TimeFix;->fix:J

    .line 39
    :goto_0
    sget-wide p0, Lcom/perm/utils/TimeFix;->fix:J

    invoke-static {p0, p1}, Lcom/perm/utils/TimeFix;->saveFix(J)V

    return-void
.end method

.method private static restoreFix()J
    .locals 4

    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timefix"

    const-wide/16 v2, 0x0

    .line 79
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static saveFix(J)V
    .locals 2

    .line 73
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timefix"

    .line 74
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setEnabled(Z)V
    .locals 2

    .line 62
    sput-boolean p0, Lcom/perm/utils/TimeFix;->enabled:Z

    .line 63
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timefix_enabled"

    .line 64
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static unfix(J)J
    .locals 2

    .line 51
    sget-boolean v0, Lcom/perm/utils/TimeFix;->enabled:Z

    if-nez v0, :cond_0

    return-wide p0

    .line 53
    :cond_0
    sget-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    add-long/2addr p0, v0

    return-wide p0
.end method
