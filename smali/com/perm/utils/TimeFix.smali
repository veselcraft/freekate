.class public Lcom/perm/utils/TimeFix;
.super Ljava/lang/Object;
.source "TimeFix.java"


# static fields
.field private static enabled:Z

.field private static fix:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
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
    .param p0, "seconds"    # J

    .prologue
    .line 44
    sget-boolean v0, Lcom/perm/utils/TimeFix;->enabled:Z

    if-nez v0, :cond_0

    .line 46
    .end local p0    # "seconds":J
    :goto_0
    return-wide p0

    .restart local p0    # "seconds":J
    :cond_0
    sget-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    sub-long/2addr p0, v0

    goto :goto_0
.end method

.method public static get()J
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    return-wide v0
.end method

.method private static getEnabled()Z
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timefix_enabled"

    const/4 v2, 0x1

    .line 69
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    return v0
.end method

.method public static gotTimeFromServer(J)V
    .locals 10
    .param p0, "server_seconds"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 23
    .local v0, "local_seconds":J
    const-string v3, "Kate.TimeFix"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server_seconds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v3, "Kate.TimeFix"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local_seconds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sub-long v4, p0, v0

    sput-wide v4, Lcom/perm/utils/TimeFix;->fix:J

    .line 28
    sget-wide v4, Lcom/perm/utils/TimeFix;->fix:J

    long-to-double v4, v4

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    sput-wide v4, Lcom/perm/utils/TimeFix;->fix:J

    .line 30
    sget-wide v4, Lcom/perm/utils/TimeFix;->fix:J

    const-wide/32 v6, 0x8ca0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 31
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/perm/utils/TimeFix;->fix:J

    .line 32
    :cond_0
    const-string v3, "Kate.TimeFix"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/perm/utils/TimeFix;->fix:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "local_seconds":J
    :goto_0
    sget-wide v4, Lcom/perm/utils/TimeFix;->fix:J

    invoke-static {v4, v5}, Lcom/perm/utils/TimeFix;->saveFix(J)V

    .line 40
    return-void

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 36
    sput-wide v8, Lcom/perm/utils/TimeFix;->fix:J

    goto :goto_0
.end method

.method private static restoreFix()J
    .locals 4

    .prologue
    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timefix"

    const-wide/16 v2, 0x0

    .line 79
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 78
    return-wide v0
.end method

.method public static saveFix(J)V
    .locals 2
    .param p0, "fix"    # J

    .prologue
    .line 73
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timefix"

    .line 74
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
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

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method

.method public static unfix(J)J
    .locals 2
    .param p0, "seconds"    # J

    .prologue
    .line 51
    sget-boolean v0, Lcom/perm/utils/TimeFix;->enabled:Z

    if-nez v0, :cond_0

    .line 53
    .end local p0    # "seconds":J
    :goto_0
    return-wide p0

    .restart local p0    # "seconds":J
    :cond_0
    sget-wide v0, Lcom/perm/utils/TimeFix;->fix:J

    add-long/2addr p0, v0

    goto :goto_0
.end method
