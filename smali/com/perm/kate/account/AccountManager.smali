.class public Lcom/perm/kate/account/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# instance fields
.field public accounts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAccount(Lcom/perm/kate/account/Account;)V
    .locals 1

    .line 98
    invoke-virtual {p0, p1}, Lcom/perm/kate/account/AccountManager;->fetchAccountDetails(Lcom/perm/kate/account/Account;)V

    .line 99
    iget-object v0, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    return-void
.end method

.method public downloadAccountDetails(Lcom/perm/kate/account/Account;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/perm/kate/account/AccountManager$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/account/AccountManager$1;-><init>(Lcom/perm/kate/account/AccountManager;Lcom/perm/kate/account/Account;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method fetchAccountDetails(Lcom/perm/kate/account/Account;)V
    .locals 3

    .line 90
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p1, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 93
    iget-object v0, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iput-object v0, p1, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public loadAccounts(Landroid/content/Context;)V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    .line 23
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "accounts"

    const/4 v1, 0x0

    .line 24
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 29
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/perm/kate/account/Account;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/account/Account;

    move-result-object v1

    .line 30
    iget-object v2, v1, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public refreshAccounts()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/account/Account;

    .line 105
    invoke-virtual {p0, v1}, Lcom/perm/kate/account/AccountManager;->fetchAccountDetails(Lcom/perm/kate/account/Account;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    return-void
.end method

.method public saveAccounts()V
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/account/Account;

    .line 43
    invoke-virtual {v2}, Lcom/perm/kate/account/Account;->save()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "accounts"

    .line 47
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
