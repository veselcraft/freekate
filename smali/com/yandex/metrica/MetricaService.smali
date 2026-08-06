.class public Lcom/yandex/metrica/MetricaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/MetricaService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/yandex/metrica/impl/ob/g;


# instance fields
.field private final e:Lcom/yandex/metrica/IMetricaService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ob/bj;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bj;-><init>()V

    sput-object v0, Lcom/yandex/metrica/MetricaService;->a:Ljava/util/concurrent/Executor;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/MetricaService;->b:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/ob/g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/g;-><init>()V

    sput-object v0, Lcom/yandex/metrica/MetricaService;->d:Lcom/yandex/metrica/impl/ob/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 205
    new-instance v0, Lcom/yandex/metrica/MetricaService$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/MetricaService$1;-><init>(Lcom/yandex/metrica/MetricaService;)V

    iput-object v0, p0, Lcom/yandex/metrica/MetricaService;->e:Lcom/yandex/metrica/IMetricaService$Stub;

    .line 257
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/CounterConfiguration;I)Lcom/yandex/metrica/impl/ob/h;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-static {p1}, Lcom/yandex/metrica/impl/q;->a(Lcom/yandex/metrica/impl/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/h;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p2, v2, v1}, Lcom/yandex/metrica/impl/ob/h;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/ob/i;
    .locals 6

    .prologue
    .line 53
    if-eqz p1, :cond_3

    sget-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yandex/metrica/MetricaService;->a:Ljava/util/concurrent/Executor;

    sget-object v5, Lcom/yandex/metrica/MetricaService;->d:Lcom/yandex/metrica/impl/ob/g;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/g;)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/yandex/metrica/impl/q;->a(Lcom/yandex/metrica/impl/g;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/i;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/yandex/metrica/MetricaService;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 105
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 109
    invoke-static {p1}, Lcom/yandex/metrica/MetricaService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/g;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_KEY_KEY_START_TYPE"

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "EXTRA_KEY_KEY_START_EVENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0}, Lcom/yandex/metrica/impl/g;->a(I)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    :cond_0
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/g;->l()Z

    move-result v0

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/g;->m()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    const-string v0, "EXTRA_KEY_LIB_CFG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/bl;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-direct {p0, v4}, Lcom/yandex/metrica/MetricaService;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/g;->d()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/z;->a(Landroid/location/Location;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v4, v1, v0}, Lcom/yandex/metrica/impl/ob/h;->a(Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/Integer;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/h;

    move-result-object v3

    new-instance v0, Lcom/yandex/metrica/impl/ob/i;

    sget-object v2, Lcom/yandex/metrica/MetricaService;->a:Ljava/util/concurrent/Executor;

    sget-object v5, Lcom/yandex/metrica/MetricaService;->d:Lcom/yandex/metrica/impl/ob/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/h;Lcom/yandex/metrica/CounterConfiguration;Lcom/yandex/metrica/impl/ob/g;)V

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/i;->a(Lcom/yandex/metrica/impl/g;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->stopSelf()V

    .line 114
    return-void

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->b(Lcom/yandex/metrica/CounterConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;ZZ)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/CounterConfiguration;)Z
    .locals 1

    .prologue
    .line 53
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/i;)Z
    .locals 1

    .prologue
    .line 53
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 53
    sget-object v1, Lcom/yandex/metrica/impl/q$a;->q:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/i;->e()V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/yandex/metrica/impl/q$a;->t:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/i;->b(Lcom/yandex/metrica/impl/g;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    return-object v0
.end method

.method private b(Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/bl;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/CounterConfiguration;->e(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 337
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->a(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->a()V

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->e:Lcom/yandex/metrica/IMetricaService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/e;->a(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/bd;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/bd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/bd;->a(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/yandex/metrica/impl/utils/f;->a()Lcom/yandex/metrica/impl/utils/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/f;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a()Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/bs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/metrica/impl/ob/bi;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/bs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/bs;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v0}, Lcom/yandex/metrica/impl/ob/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/z;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->b()V

    .line 134
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->a(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yandex/metrica/MetricaService;->a(Landroid/content/Intent;)V

    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-static {p1}, Lcom/yandex/metrica/MetricaService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 151
    :goto_0
    return v0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v5

    .line 145
    sget-object v6, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    monitor-enter v6

    .line 147
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/i;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v4, :cond_1

    sget-object v4, Lcom/yandex/metrica/MetricaService;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->c()V

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v4, v2

    .line 147
    goto :goto_2

    .line 149
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 151
    goto :goto_0
.end method
