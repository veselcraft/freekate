.class public Lcom/perm/kate/account/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# instance fields
.field public accounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/account/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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
    .param p1, "a"    # Lcom/perm/kate/account/Account;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/perm/kate/account/AccountManager;->fetchAccountDetails(Lcom/perm/kate/account/Account;)V

    .line 99
    iget-object v0, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 101
    return-void
.end method

.method public downloadAccountDetails(Lcom/perm/kate/account/Account;)V
    .locals 1
    .param p1, "a"    # Lcom/perm/kate/account/Account;

    .prologue
    .line 58
    new-instance v0, Lcom/perm/kate/account/AccountManager$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/account/AccountManager$1;-><init>(Lcom/perm/kate/account/AccountManager;Lcom/perm/kate/account/Account;)V

    .line 86
    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager$1;->start()V

    .line 87
    return-void
.end method

.method fetchAccountDetails(Lcom/perm/kate/account/Account;)V
    .locals 4
    .param p1, "a"    # Lcom/perm/kate/account/Account;

    .prologue
    .line 90
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p1, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 91
    .local v0, "u":Lcom/perm/kate/api/User;
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 93
    iget-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iput-object v1, p1, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    .line 95
    :cond_0
    return-void
.end method

.method public loadAccounts(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    .line 23
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 24
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v6, "accounts"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "str":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 37
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 27
    .restart local v3    # "settings":Landroid/content/SharedPreferences;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/perm/kate/account/Account;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/account/Account;

    move-result-object v0

    .line 30
    .local v0, "a":Lcom/perm/kate/account/Account;
    iget-object v6, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 31
    iget-object v6, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 34
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refreshAccounts()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 105
    .local v0, "a":Lcom/perm/kate/account/Account;
    invoke-virtual {p0, v0}, Lcom/perm/kate/account/AccountManager;->fetchAccountDetails(Lcom/perm/kate/account/Account;)V

    goto :goto_0

    .line 106
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 107
    return-void
.end method

.method public saveAccounts()V
    .locals 8

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 42
    .local v1, "arr":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 43
    .local v0, "a":Lcom/perm/kate/account/Account;
    invoke-virtual {v0}, Lcom/perm/kate/account/Account;->save()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v0    # "a":Lcom/perm/kate/account/Account;
    .end local v1    # "arr":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 50
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 53
    .end local v5    # "th":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 44
    .restart local v1    # "arr":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "str":Ljava/lang/String;
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 46
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 47
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "accounts"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
