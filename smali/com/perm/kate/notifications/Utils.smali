.class public Lcom/perm/kate/notifications/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static getIconId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_old_notifications_icon"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 28
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    const v1, 0x7f020136

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f020137

    goto :goto_0
.end method

.method static getMessagesIconId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_old_notifications_icon"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    .local v0, "flag":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    if-nez v0, :cond_0

    const v1, 0x7f02013b

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f020136

    goto :goto_0
.end method

.method static getVibratePattern(Landroid/content/Context;Landroid/content/SharedPreferences;)[J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const-wide/16 v8, 0x0

    .line 13
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    .local v0, "default_length":Ljava/lang/Long;
    const v5, 0x7f07054f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    .local v1, "length_str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 17
    .local v2, "length":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 20
    :goto_0
    cmp-long v5, v2, v8

    if-gtz v5, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 22
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [J

    const/4 v5, 0x0

    aput-wide v8, v4, v5

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    .line 23
    .local v4, "vibrate":[J
    return-object v4

    .line 18
    .end local v4    # "vibrate":[J
    :catch_0
    move-exception v5

    goto :goto_0
.end method
