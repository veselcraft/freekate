.class public Lcom/perm/utils/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# static fields
.field public static user_agent:Ljava/lang/String;


# direct methods
.method private static getUserAgent()Ljava/lang/String;
    .locals 8

    .prologue
    .line 26
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 27
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 28
    .local v2, "package_info":Landroid/content/pm/PackageInfo;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "lang":Ljava/lang/String;
    const-string v4, "KateMobileAndroid/%s-%d (Android %s; SDK %d; %s; %s %s; %s)"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object v1, v5, v6

    .line 29
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 40
    .end local v1    # "lang":Ljava/lang/String;
    .end local v2    # "package_info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    .line 37
    :catch_0
    move-exception v3

    .line 38
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 40
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/perm/utils/UserAgent;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static set(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 45
    sget-object v0, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "User-Agent"

    sget-object v1, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
