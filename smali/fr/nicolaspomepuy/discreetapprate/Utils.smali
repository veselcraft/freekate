.class public Lfr/nicolaspomepuy/discreetapprate/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static installTimeFromPackageManager(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 48
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 49
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-class v3, Landroid/content/pm/PackageInfo;

    const-string v7, "firstInstallTime"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 50
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 51
    .local v4, "timestamp":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "timestamp":J
    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v6

    .line 53
    goto :goto_0

    .line 57
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    :goto_1
    move-object v3, v6

    .line 60
    goto :goto_0

    .line 56
    :catch_2
    move-exception v3

    goto :goto_1

    .line 55
    :catch_3
    move-exception v3

    goto :goto_1

    .line 54
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 85
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "res":I
    if-nez v2, :cond_0

    .line 87
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 89
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 92
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v1    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 40
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
