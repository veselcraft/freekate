.class public Lcom/perm/utils/RecommendationsHelper;
.super Ljava/lang/Object;
.source "RecommendationsHelper.java"


# static fields
.field private static cached_account_id:J

.field private static str_user_ids:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/perm/utils/RecommendationsHelper;->cached_account_id:J

    return-void
.end method

.method private static checkForChangedAccount(J)V
    .locals 2
    .param p0, "account_id"    # J

    .prologue
    .line 25
    sget-wide v0, Lcom/perm/utils/RecommendationsHelper;->cached_account_id:J

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    .line 26
    sput-wide p0, Lcom/perm/utils/RecommendationsHelper;->cached_account_id:J

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method

.method private static getUserIdString(J)Ljava/lang/String;
    .locals 2
    .param p0, "user_id"    # J

    .prologue
    .line 41
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

.method public static hideUser(JJ)V
    .locals 4
    .param p0, "account_id"    # J
    .param p2, "user_id"    # J

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->checkForChangedAccount(J)V

    .line 33
    sget-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 34
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->loadHiddenUsers(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 35
    :cond_0
    invoke-static {p2, p3}, Lcom/perm/utils/RecommendationsHelper;->getUserIdString(J)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "str_user_id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 37
    sget-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/perm/utils/RecommendationsHelper;->saveHiddenUsers(JLjava/lang/String;)V

    .line 38
    return-void
.end method

.method public static isHiddenUser(JJ)Z
    .locals 2
    .param p0, "account_id"    # J
    .param p2, "user_id"    # J

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->checkForChangedAccount(J)V

    .line 18
    sget-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->loadHiddenUsers(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 20
    :cond_0
    invoke-static {p2, p3}, Lcom/perm/utils/RecommendationsHelper;->getUserIdString(J)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "str_user_id":Ljava/lang/String;
    sget-object v1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private static loadHiddenUsers(J)Ljava/lang/String;
    .locals 4
    .param p0, "account_id"    # J

    .prologue
    .line 45
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "recommendations_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_hidden_recommendations_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static saveHiddenUsers(JLjava/lang/String;)V
    .locals 4
    .param p0, "account_id"    # J
    .param p2, "str_user_ids"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "recommendations_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_hidden_recommendations_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
