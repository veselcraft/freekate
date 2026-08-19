.class public final Lcom/my/target/dr;
.super Ljava/lang/Object;
.source "MyTargetCookieManager.java"


# static fields
.field private static volatile et:Lcom/my/target/dr;


# instance fields
.field private final eu:Ljava/net/CookieHandler;


# direct methods
.method constructor <init>(Ljava/net/CookieManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/my/target/dr;->eu:Ljava/net/CookieHandler;

    return-void
.end method

.method private a(Ljava/net/URLConnection;Ljava/util/Map;)V
    .locals 3

    .line 95
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 96
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    goto :goto_1

    .line 113
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/my/target/dr;
    .locals 3

    .line 33
    sget-object v0, Lcom/my/target/dr;->et:Lcom/my/target/dr;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/my/target/dr;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/my/target/dr;->et:Lcom/my/target/dr;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/my/target/ds;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/my/target/ds;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p0, Ljava/net/CookieManager;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 43
    new-instance v0, Lcom/my/target/dr;

    invoke-direct {v0, p0}, Lcom/my/target/dr;-><init>(Ljava/net/CookieManager;)V

    sput-object v0, Lcom/my/target/dr;->et:Lcom/my/target/dr;

    .line 45
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/URLConnection;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/my/target/dr;->eu:Ljava/net/CookieHandler;

    invoke-virtual {v1, p1, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set cookies from urlconnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/net/URLConnection;)V
    .locals 3

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/my/target/dr;->eu:Ljava/net/CookieHandler;

    invoke-virtual {v2, v1, v0}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/my/target/dr;->a(Ljava/net/URLConnection;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set cookies to urlconnection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
