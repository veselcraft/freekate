.class public abstract Lcom/perm/utils/ChatNotificationsHelper;
.super Ljava/lang/Object;
.source "ChatNotificationsHelper.java"


# direct methods
.method private static getChatIdString(J)Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_1

    const-wide/16 v0, -0x1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    mul-long p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_2
    invoke-static {p0}, Lcom/perm/utils/ChatNotificationsHelper;->loadDisabledChats(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/perm/utils/ChatNotificationsHelper;->getChatIdString(J)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static loadDisabledChats(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f015f

    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static saveDisabledChats(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0f015f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDisabledChat(Landroid/content/Context;JJZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    mul-long p3, p3, p1

    .line 31
    :goto_0
    invoke-static {p0}, Lcom/perm/utils/ChatNotificationsHelper;->loadDisabledChats(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p3, p4}, Lcom/perm/utils/ChatNotificationsHelper;->getChatIdString(J)Ljava/lang/String;

    move-result-object p2

    if-eqz p5, :cond_1

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p3, ""

    .line 36
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 37
    :goto_1
    invoke-static {p0, p1}, Lcom/perm/utils/ChatNotificationsHelper;->saveDisabledChats(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
