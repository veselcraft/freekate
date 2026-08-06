.class Lcom/yandex/metrica/impl/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ax$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ay;

.field private c:Lcom/yandex/metrica/impl/i;

.field private d:Landroid/os/Handler;

.field private e:Lcom/yandex/metrica/impl/ob/cc;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ax;->g:Ljava/util/Map;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ax;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->d:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ay;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/i;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->c:Lcom/yandex/metrica/impl/i;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/cc;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->e:Lcom/yandex/metrica/impl/ob/cc;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ax;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/c;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/x;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/x;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/c;)V

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/x;)V

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->c:Lcom/yandex/metrica/impl/i;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/i;)V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->e:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 76
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/c;->a()V

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)Lcom/yandex/metrica/b;
    .locals 4

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/b;

    .line 62
    if-nez v0, :cond_0

    .line 63
    new-instance v1, Lcom/yandex/metrica/impl/ab;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ax;->a:Landroid/content/Context;

    sget-object v0, Lcom/yandex/metrica/impl/aw;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/yandex/metrica/impl/ab;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/c;)V

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 69
    :cond_0
    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/impl/aa;
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to activate AppMetrica with provided API Key. API Key %s has already been used by another reporter."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/aa;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/metrica/impl/aa;-><init>(Landroid/content/Context;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ay;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/c;)V

    .line 52
    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/aa;)V

    .line 54
    iget-object v1, p0, Lcom/yandex/metrica/impl/ax;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method
