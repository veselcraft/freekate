.class public Lcom/yandex/mobile/ads/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/utils/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/mobile/ads/utils/d;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/utils/d;->a:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/yandex/mobile/ads/utils/d$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/d$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/utils/d;->d:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/yandex/mobile/ads/utils/d$2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/d$2;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/utils/d;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/utils/d;->c:Z

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/utils/d;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/yandex/mobile/ads/utils/d;->b:Lcom/yandex/mobile/ads/utils/d;

    if-nez v0, :cond_1

    .line 38
    sget-object v1, Lcom/yandex/mobile/ads/utils/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/utils/d;->b:Lcom/yandex/mobile/ads/utils/d;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/yandex/mobile/ads/utils/d;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/d;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/utils/d;->b:Lcom/yandex/mobile/ads/utils/d;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/utils/d;->b:Lcom/yandex/mobile/ads/utils/d;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/utils/d$a;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 49
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/utils/d;->c:Z

    if-eqz v0, :cond_3

    .line 50
    sget-object v1, Lcom/yandex/mobile/ads/utils/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/utils/d;->c:Z

    if-eqz v0, :cond_2

    .line 52
    invoke-static {p1}, Lcom/yandex/mobile/ads/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Lcom/yandex/mobile/ads/utils/d;->d:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x20

    :try_start_1
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "Please, check %s activity in AndroidManifest file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/yandex/mobile/ads/utils/d$a;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/utils/d$a;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 57
    :cond_0
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Lcom/yandex/mobile/ads/utils/d;->e:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v4, 0x1000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "Please, check %s permission in AndroidManifest file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/yandex/mobile/ads/utils/d$a;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/utils/d$a;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Lcom/yandex/mobile/ads/utils/d$a;

    const-string v2, "Please, check %s permission in AndroidManifest file."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/yandex/mobile/ads/utils/d;->e:Ljava/util/List;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/utils/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/utils/d;->c:Z

    .line 62
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :cond_3
    return v7
.end method
