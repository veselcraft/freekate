.class public Lcom/perm/kate/ads/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# static fields
.field static config_parsed:Z

.field static inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/perm/kate/ads/AdManager;->inited:Z

    .line 38
    sput-boolean v0, Lcom/perm/kate/ads/AdManager;->config_parsed:Z

    return-void
.end method

.method public static initConfig()V
    .locals 4

    .prologue
    .line 16
    sget-boolean v0, Lcom/perm/kate/ads/AdManager;->inited:Z

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/kate/ads/AdManager;->inited:Z

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/ads/AdManager$1;

    invoke-direct {v1}, Lcom/perm/kate/ads/AdManager$1;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static readConfigFromCache()V
    .locals 2

    .prologue
    .line 42
    sget-boolean v1, Lcom/perm/kate/ads/AdManager;->config_parsed:Z

    if-eqz v1, :cond_1

    .line 49
    .local v0, "x":Lcom/perm/kate/ads/AdConfig;
    :cond_0
    :goto_0
    return-void

    .line 44
    .end local v0    # "x":Lcom/perm/kate/ads/AdConfig;
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/perm/kate/ads/AdManager;->config_parsed:Z

    .line 46
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Lcom/perm/kate/ads/AdConfig;->readCache(Landroid/content/Context;)Lcom/perm/kate/ads/AdConfig;

    move-result-object v0

    .line 47
    .restart local v0    # "x":Lcom/perm/kate/ads/AdConfig;
    if-eqz v0, :cond_0

    .line 48
    sput-object v0, Lcom/perm/kate/KApplication;->adConfig:Lcom/perm/kate/ads/AdConfig;

    goto :goto_0
.end method

.method static refreshConfig()V
    .locals 14

    .prologue
    .line 53
    const-string v6, "ad_last_config_refresh"

    .line 54
    .local v6, "preference_name":Ljava/lang/String;
    sget-object v10, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 55
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v10, 0x0

    invoke-interface {v7, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    .local v0, "last_check":J
    sget-object v10, Lcom/perm/kate/KApplication;->adConfig:Lcom/perm/kate/ads/AdConfig;

    iget v10, v10, Lcom/perm/kate/ads/AdConfig;->refresh_period:I

    int-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long v2, v10, v12

    .line 57
    .local v2, "max_period":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, "now":J
    sub-long v10, v4, v0

    cmp-long v10, v10, v2

    if-gez v10, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    :try_start_0
    invoke-static {}, Lcom/perm/kate/ads/AdConfig;->download()Lcom/perm/kate/ads/AdConfig;

    move-result-object v9

    .line 64
    .local v9, "x":Lcom/perm/kate/ads/AdConfig;
    if-eqz v9, :cond_0

    .line 66
    sput-object v9, Lcom/perm/kate/KApplication;->adConfig:Lcom/perm/kate/ads/AdConfig;

    .line 67
    sget-object v10, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v9, v10}, Lcom/perm/kate/ads/AdConfig;->saveCache(Lcom/perm/kate/ads/AdConfig;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 68
    .end local v9    # "x":Lcom/perm/kate/ads/AdConfig;
    :catch_0
    move-exception v8

    .line 69
    .local v8, "th":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v8    # "th":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 72
    .local v8, "th":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
