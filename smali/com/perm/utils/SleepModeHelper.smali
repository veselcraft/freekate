.class public Lcom/perm/utils/SleepModeHelper;
.super Ljava/lang/Object;
.source "SleepModeHelper.java"


# direct methods
.method public static getEndTime(Landroid/content/Context;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 74
    .local v1, "end":[I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, "prefs":Landroid/content/SharedPreferences;
    aput v9, v1, v7

    .line 76
    aput v7, v1, v8

    .line 77
    const v5, 0x7f07054d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "7:00"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 80
    :try_start_0
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "vls":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5

    .line 82
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v4    # "vls":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 86
    aput v9, v1, v7

    .line 87
    aput v7, v1, v8

    goto :goto_0
.end method

.method public static getStartTime(Landroid/content/Context;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x17

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 53
    .local v2, "start":[I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "prefs":Landroid/content/SharedPreferences;
    aput v9, v2, v7

    .line 55
    aput v7, v2, v8

    .line 56
    const v5, 0x7f07054e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "23:00"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 59
    :try_start_0
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "vls":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    .line 61
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v4    # "vls":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 65
    aput v9, v2, v7

    .line 66
    aput v7, v2, v8

    goto :goto_0
.end method

.method public static getStringTime([I)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # [I

    .prologue
    const/16 v6, 0xa

    .line 105
    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 106
    :cond_0
    const/4 v4, 0x0

    .line 119
    :goto_0
    return-object v4

    .line 109
    :cond_1
    const/4 v4, 0x0

    aget v0, p0, v4

    .line 110
    .local v0, "hour":I
    const/4 v4, 0x1

    aget v2, p0, v4

    .line 111
    .local v2, "min":I
    if-ge v0, v6, :cond_2

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "hours":Ljava/lang/String;
    :goto_1
    if-ge v2, v6, :cond_3

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "minutes":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 114
    .end local v1    # "hours":Ljava/lang/String;
    .end local v3    # "minutes":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "hours":Ljava/lang/String;
    goto :goto_1

    .line 118
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "minutes":Ljava/lang/String;
    goto :goto_2
.end method

.method public static isActiveSleepMode(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 14
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 15
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const v0, 0x7f07054c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 16
    .local v10, "sleep_mode":Z
    if-nez v10, :cond_0

    move v0, v12

    .line 30
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "sleep_mode":Z
    :goto_0
    return v0

    .line 18
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    .restart local v10    # "sleep_mode":Z
    :cond_0
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->getStartTime(Landroid/content/Context;)[I

    move-result-object v11

    .line 19
    .local v11, "start":[I
    invoke-static {p0}, Lcom/perm/utils/SleepModeHelper;->getEndTime(Landroid/content/Context;)[I

    move-result-object v8

    .line 20
    .local v8, "end":[I
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x0

    aget v1, v8, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    if-ne v0, v1, :cond_1

    move v0, v12

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 23
    .local v6, "c":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 24
    .local v4, "hr":I
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 25
    .local v5, "min":I
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-static/range {v0 .. v5}, Lcom/perm/utils/SleepModeHelper;->isContainsTime(IIIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 26
    .end local v4    # "hr":I
    .end local v5    # "min":I
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v8    # "end":[I
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "sleep_mode":Z
    .end local v11    # "start":[I
    :catch_0
    move-exception v7

    .line 27
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move v0, v12

    .line 30
    goto :goto_0
.end method

.method public static isContainsTime(IIIIII)Z
    .locals 6
    .param p0, "start_hour"    # I
    .param p1, "start_min"    # I
    .param p2, "end_hour"    # I
    .param p3, "end_min"    # I
    .param p4, "hour"    # I
    .param p5, "min"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    if-ne p0, p2, :cond_1

    if-ne p2, p3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v3

    .line 36
    :cond_1
    mul-int/lit8 v5, p0, 0x3c

    add-int v1, v5, p1

    .line 37
    .local v1, "start_time":I
    mul-int/lit8 v5, p2, 0x3c

    add-int v0, v5, p3

    .line 38
    .local v0, "end_time":I
    mul-int/lit8 v5, p4, 0x3c

    add-int v2, v5, p5

    .line 39
    .local v2, "time":I
    if-ge v1, v0, :cond_2

    .line 41
    if-lt v2, v1, :cond_0

    if-ge v2, v0, :cond_0

    move v3, v4

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    if-ltz v2, :cond_3

    if-lt v2, v0, :cond_4

    :cond_3
    if-lt v2, v1, :cond_0

    const/16 v5, 0x59f

    if-gt v2, v5, :cond_0

    :cond_4
    move v3, v4

    .line 46
    goto :goto_0
.end method

.method public static saveEndTime(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f07054d

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method public static saveStartTime(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f07054e

    .line 95
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void
.end method
