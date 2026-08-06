.class final Lcom/yandex/mobile/ads/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 77
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 79
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 80
    const/4 v3, 0x0

    .line 82
    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_a

    aget-object v2, v5, v4

    .line 83
    const-string v7, "com.yandex.mobile.ads.AdActivity"

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v2

    .line 89
    :goto_1
    if-eqz v4, :cond_8

    .line 90
    iget v2, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_1

    move v2, v0

    :goto_2
    and-int/lit8 v3, v2, 0x1

    .line 92
    iget v2, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_2

    move v2, v0

    :goto_3
    and-int/2addr v3, v2

    .line 93
    iget v2, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v2, 0x80

    if-lez v2, :cond_3

    move v2, v0

    :goto_4
    and-int/2addr v3, v2

    .line 94
    iget v2, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v2, 0x100

    if-lez v2, :cond_4

    move v2, v0

    :goto_5
    and-int/2addr v3, v2

    .line 95
    iget v2, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v2, 0x200

    if-lez v2, :cond_5

    move v2, v0

    :goto_6
    and-int/2addr v2, v3

    .line 97
    const/16 v3, 0xd

    invoke-static {v3}, Lcom/yandex/mobile/ads/s;->c(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 98
    iget v3, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x400

    if-lez v3, :cond_6

    move v3, v0

    :goto_7
    and-int/2addr v2, v3

    .line 99
    iget v3, v4, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x800

    if-lez v3, :cond_7

    :goto_8
    and-int/2addr v0, v2

    .line 102
    :goto_9
    if-eqz v0, :cond_8

    .line 103
    return-void

    .line 82
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 90
    goto :goto_2

    :cond_2
    move v2, v1

    .line 92
    goto :goto_3

    :cond_3
    move v2, v1

    .line 93
    goto :goto_4

    :cond_4
    move v2, v1

    .line 94
    goto :goto_5

    :cond_5
    move v2, v1

    .line 95
    goto :goto_6

    :cond_6
    move v3, v1

    .line 98
    goto :goto_7

    :cond_7
    move v0, v1

    .line 99
    goto :goto_8

    :catch_0
    move-exception v0

    .line 110
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ad Activity into the AndroidManifest.xml is integrated wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move-object v4, v3

    goto :goto_1
.end method
