.class public Lcom/perm/kate/ForceLocale;
.super Ljava/lang/Object;
.source "ForceLocale.java"


# direct methods
.method public static changeLocale(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Lcom/perm/kate/ForceLocale;->getForcedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-static {v0, p0}, Lcom/perm/kate/ForceLocale;->forceLoacle(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "th":Ljava/lang/Throwable;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static forceLoacle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 57
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 58
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 59
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 60
    return-void
.end method

.method private static getForcedLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_language"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "lang_pref":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, ""

    .line 49
    :goto_0
    return-object v2

    .line 31
    :cond_0
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    const-string v2, "ru"

    goto :goto_0

    .line 33
    :cond_1
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const-string v2, "uk"

    goto :goto_0

    .line 35
    :cond_2
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    const-string v2, "en"

    goto :goto_0

    .line 37
    :cond_3
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    const-string v2, "be"

    goto :goto_0

    .line 39
    :cond_4
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 40
    const-string v2, "tt"

    goto :goto_0

    .line 41
    :cond_5
    const-string v2, "6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42
    const-string v2, "tr"

    goto :goto_0

    .line 43
    :cond_6
    const-string v2, "7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    const-string v2, "ba"

    goto :goto_0

    .line 45
    :cond_7
    const-string v2, "8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 46
    const-string v2, "it"

    goto :goto_0

    .line 47
    :cond_8
    const-string v2, "9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 48
    const-string v2, "kz"

    goto :goto_0

    .line 49
    :cond_9
    const-string v2, ""

    goto :goto_0
.end method
