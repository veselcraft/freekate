.class public final Lcom/my/target/core/net/cookie/a;
.super Ljava/lang/Object;
.source "MyTargetCookieManager.java"


# static fields
.field private static b:Lcom/my/target/core/net/cookie/a;


# instance fields
.field private final a:Ljava/net/CookieHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/my/target/core/net/cookie/b;

    invoke-direct {v0, p1}, Lcom/my/target/core/net/cookie/b;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Ljava/net/CookieManager;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v1, p0, Lcom/my/target/core/net/cookie/a;->a:Ljava/net/CookieHandler;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/my/target/core/net/cookie/a;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/my/target/core/net/cookie/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/my/target/core/net/cookie/a;->b:Lcom/my/target/core/net/cookie/a;

    if-nez v0, :cond_0

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 30
    new-instance v0, Lcom/my/target/core/net/cookie/a;

    invoke-direct {v0, p0}, Lcom/my/target/core/net/cookie/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/my/target/core/net/cookie/a;->b:Lcom/my/target/core/net/cookie/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/my/target/core/net/cookie/a;->b:Lcom/my/target/core/net/cookie/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/net/URLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/my/target/core/net/cookie/a;->a:Ljava/net/CookieHandler;

    invoke-virtual {v2, v1, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public final b(Ljava/net/URLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/my/target/core/net/cookie/a;->a:Ljava/net/CookieHandler;

    invoke-virtual {v2, v1, v0}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 67
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 75
    :goto_1
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_1

    .line 82
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method
