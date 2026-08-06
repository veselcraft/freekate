.class public final Lcom/yandex/metrica/impl/be;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/pm/PackageItemInfo;)I
    .locals 2

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 117
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "metrica:api:level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "metrica://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yandex/metrica/IMetricaService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 51
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 129
    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->d(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v7, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-boolean v5, v7, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    or-int/2addr v5, v1

    iget-object v1, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    or-int/2addr v1, v5

    if-nez v1, :cond_0

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INTERNET"

    invoke-static {v8, v5, v7}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v10}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v5

    const/16 v7, 0x2c

    if-ge v5, v7, :cond_6

    const/4 v5, -0x1

    :goto_4
    cmp-long v7, v0, v2

    if-ltz v7, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-gez v7, :cond_c

    :cond_1
    const/4 v7, 0x1

    :goto_5
    if-ltz v5, :cond_f

    if-gt v5, v4, :cond_2

    if-ne v5, v4, :cond_f

    if-eqz v7, :cond_f

    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    move v2, v5

    :goto_6
    move v4, v2

    move-object v6, v3

    move-wide v2, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    shl-int/lit8 v7, v5, 0x5

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v8, v5, v11}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_7
    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v7, v5

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v8, v5, v11}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_8
    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v7, v5

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v8, v5, v11}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    :goto_9
    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v7, v5

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v8, v5, v11}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_a
    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    iget-object v5, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "android.permission.READ_PHONE_STATE"

    invoke-static {v8, v5, v11}, Lcom/yandex/metrica/impl/ai;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_b
    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    goto :goto_5

    :cond_d
    if-eqz v6, :cond_e

    :goto_c
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v6, Landroid/content/ComponentName;

    const-class v0, Lcom/yandex/metrica/MetricaService;

    invoke-direct {v6, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c

    :cond_f
    move-wide v0, v2

    move v2, v4

    move-object v3, v6

    goto :goto_6
.end method

.method private static d(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 150
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 151
    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method
