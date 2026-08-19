.class public abstract Lcom/perm/utils/RecommendationsHelper;
.super Ljava/lang/Object;
.source "RecommendationsHelper.java"


# static fields
.field private static cached_account_id:J

.field private static str_user_ids:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static checkForChangedAccount(J)V
    .locals 3

    .line 25
    sget-wide v0, Lcom/perm/utils/RecommendationsHelper;->cached_account_id:J

    cmp-long v2, v0, p0

    if-eqz v2, :cond_0

    .line 26
    sput-wide p0, Lcom/perm/utils/RecommendationsHelper;->cached_account_id:J

    const/4 p0, 0x0

    .line 27
    sput-object p0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static getUserIdString(J)Ljava/lang/String;
    .locals 2

    .line 41
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

.method public static hideUser(JJ)V
    .locals 1

    .line 32
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->checkForChangedAccount(J)V

    .line 33
    sget-object v0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->loadHiddenUsers(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 35
    :cond_0
    invoke-static {p2, p3}, Lcom/perm/utils/RecommendationsHelper;->getUserIdString(J)Ljava/lang/String;

    move-result-object p2

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 37
    invoke-static {p0, p1, p2}, Lcom/perm/utils/RecommendationsHelper;->saveHiddenUsers(JLjava/lang/String;)V

    return-void
.end method

.method public static isHiddenUser(JJ)Z
    .locals 1

    .line 17
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->checkForChangedAccount(J)V

    .line 18
    sget-object v0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 19
    invoke-static {p0, p1}, Lcom/perm/utils/RecommendationsHelper;->loadHiddenUsers(J)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    .line 20
    :cond_0
    invoke-static {p2, p3}, Lcom/perm/utils/RecommendationsHelper;->getUserIdString(J)Ljava/lang/String;

    move-result-object p0

    .line 21
    sget-object p1, Lcom/perm/utils/RecommendationsHelper;->str_user_ids:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static loadHiddenUsers(J)Ljava/lang/String;
    .locals 3

    .line 45
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "recommendations_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_hidden_recommendations_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static saveHiddenUsers(JLjava/lang/String;)V
    .locals 3

    .line 50
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "recommendations_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_hidden_recommendations_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
