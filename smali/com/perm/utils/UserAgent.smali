.class public abstract Lcom/perm/utils/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# static fields
.field public static user_agent:Ljava/lang/String;


# direct methods
.method private static getUserAgent()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 28
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KateMobileAndroid/%s-%d (Android %s; SDK %d; %s; %s %s; %s)"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x4

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x5

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x6

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x7

    aput-object v1, v4, v0

    .line 31
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/perm/utils/UserAgent;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    return-void
.end method

.method public static set(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 45
    sget-object v0, Lcom/perm/utils/UserAgent;->user_agent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "User-Agent"

    .line 46
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
