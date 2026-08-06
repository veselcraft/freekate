.class public Lcom/perm/utils/ChatNotificationsHelper;
.super Ljava/lang/Object;
.source "ChatNotificationsHelper.java"


# direct methods
.method private static getChatIdString(J)Ljava/lang/String;
    .locals 2
    .param p0, "chat_id"    # J

    .prologue
    .line 51
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

.method public static isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "chat_id"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v6, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "dialog_id":Ljava/lang/Long;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 18
    move-object v0, p2

    .line 22
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 23
    const/4 v3, 0x0

    .line 26
    :goto_1
    return v3

    .line 19
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 20
    const-wide/16 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {p0}, Lcom/perm/utils/ChatNotificationsHelper;->loadDisabledChats(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "str_chat_ids":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/perm/utils/ChatNotificationsHelper;->getChatIdString(J)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "str_chat_id":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method private static loadDisabledChats(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const v1, 0x7f07052d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static saveDisabledChats(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str_chat_ids"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f07052d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public static setDisabledChat(Landroid/content/Context;JJZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # J
    .param p3, "chat_id"    # J
    .param p5, "disable"    # Z

    .prologue
    .line 30
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    move-wide v0, p3

    .line 31
    .local v0, "dialog_id":J
    :goto_0
    invoke-static {p0}, Lcom/perm/utils/ChatNotificationsHelper;->loadDisabledChats(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "str_chat_ids":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/perm/utils/ChatNotificationsHelper;->getChatIdString(J)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "str_chat_id":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    :goto_1
    invoke-static {p0, v3}, Lcom/perm/utils/ChatNotificationsHelper;->saveDisabledChats(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void

    .line 30
    .end local v0    # "dialog_id":J
    .end local v2    # "str_chat_id":Ljava/lang/String;
    .end local v3    # "str_chat_ids":Ljava/lang/String;
    :cond_0
    const-wide/16 v4, -0x1

    mul-long v0, v4, p1

    goto :goto_0

    .line 36
    .restart local v0    # "dialog_id":J
    .restart local v2    # "str_chat_id":Ljava/lang/String;
    .restart local v3    # "str_chat_ids":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
