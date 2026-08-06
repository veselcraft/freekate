.class public Lcom/inmobi/commons/core/utilities/info/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/inmobi/commons/core/utilities/info/a;

.field private static c:Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/commons/core/utilities/info/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/a;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/a;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->h:Ljava/util/Map;

    .line 30
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/utilities/info/a;->a(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/inmobi/commons/core/utilities/info/a;->d()V

    .line 32
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/utilities/info/a;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/a;->b:Lcom/inmobi/commons/core/utilities/info/a;

    .line 71
    if-nez v0, :cond_1

    .line 72
    sget-object v1, Lcom/inmobi/commons/core/utilities/info/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/a;->b:Lcom/inmobi/commons/core/utilities/info/a;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/inmobi/commons/core/utilities/info/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/info/a;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/a;->b:Lcom/inmobi/commons/core/utilities/info/a;

    .line 76
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/a;->b:Lcom/inmobi/commons/core/utilities/info/a;

    .line 78
    :cond_0
    monitor-exit v1

    .line 80
    :cond_1
    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/commons/core/utilities/info/a;->d:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/commons/core/utilities/info/a;->e:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/inmobi/commons/core/utilities/info/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/commons/core/utilities/info/a;->g:Ljava/lang/String;

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz v1, :cond_2

    .line 50
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 51
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_3
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/info/a;->a:Ljava/lang/String;

    const-string v3, "Failed to fetch app info completely"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->h:Ljava/util/Map;

    const-string v1, "u-appbid"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/info/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->h:Ljava/util/Map;

    const-string v1, "u-appdnm"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/info/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->h:Ljava/util/Map;

    const-string v1, "u-appver"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/info/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/info/a;->h:Ljava/util/Map;

    return-object v0
.end method
