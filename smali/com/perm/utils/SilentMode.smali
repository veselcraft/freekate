.class public Lcom/perm/utils/SilentMode;
.super Ljava/lang/Object;
.source "SilentMode.java"


# direct methods
.method public static getSilentSummary()Ljava/lang/String;
    .locals 16

    .prologue
    .line 28
    invoke-static {}, Lcom/perm/utils/SilentMode;->getSilentValue()J

    move-result-wide v10

    .line 29
    .local v10, "value":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v10, v12

    const-wide/16 v14, 0x3e8

    div-long v0, v12, v14

    .line 30
    .local v0, "full_seconds":J
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-lez v12, :cond_1

    .line 31
    const-wide/16 v12, 0x3c

    div-long v4, v0, v12

    .line 32
    .local v4, "min":J
    const-wide/16 v12, 0x3c

    div-long v2, v4, v12

    .line 33
    .local v2, "hour":J
    const-wide/16 v12, 0x3c

    rem-long v6, v4, v12

    .line 34
    .local v6, "mins":J
    const-wide/16 v12, 0xa

    cmp-long v12, v6, v12

    if-gez v12, :cond_0

    const-string v8, ":0"

    .line 35
    .local v8, "s1":Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v14, 0x7f070428

    invoke-virtual {v13, v14}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 38
    .end local v2    # "hour":J
    .end local v4    # "min":J
    .end local v6    # "mins":J
    .end local v8    # "s1":Ljava/lang/String;
    .local v9, "text":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 34
    .end local v9    # "text":Ljava/lang/String;
    .restart local v2    # "hour":J
    .restart local v4    # "min":J
    .restart local v6    # "mins":J
    :cond_0
    const-string v8, ":"

    goto :goto_0

    .line 37
    .end local v2    # "hour":J
    .end local v4    # "min":J
    .end local v6    # "mins":J
    :cond_1
    sget-object v12, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v13, 0x7f070429

    invoke-virtual {v12, v13}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getSilentValue()J
    .locals 4

    .prologue
    .line 12
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_silent_mode"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-static {}, Lcom/perm/utils/SilentMode;->getSilentValue()J

    move-result-wide v0

    .line 21
    .local v0, "v":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static saveSilentValue(J)V
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 16
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_silent_mode"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 17
    return-void
.end method
