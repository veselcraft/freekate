.class public Lcom/perm/utils/OnlineNotificationsHelper;
.super Ljava/lang/Object;
.source "OnlineNotificationsHelper.java"


# direct methods
.method private static getUserIdString(J)Ljava/lang/String;
    .locals 2
    .param p0, "user_id"    # J

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # Ljava/lang/Long;

    .prologue
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 v2, 0x0

    .line 18
    :goto_0
    return v2

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/perm/utils/OnlineNotificationsHelper;->loadEnabledUsers(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "str_user_ids":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/utils/OnlineNotificationsHelper;->getUserIdString(J)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "str_user_id":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private static loadEnabledUsers(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const v1, 0x7f070547

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static saveEnabledUsers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str_user_ids"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f070547

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static setEnabledUser(Landroid/content/Context;JZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # J
    .param p3, "enable"    # Z

    .prologue
    .line 22
    invoke-static {p0}, Lcom/perm/utils/OnlineNotificationsHelper;->loadEnabledUsers(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "str_user_ids":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/perm/utils/OnlineNotificationsHelper;->getUserIdString(J)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "str_user_id":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_0
    invoke-static {p0, v1}, Lcom/perm/utils/OnlineNotificationsHelper;->saveEnabledUsers(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void

    .line 27
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
