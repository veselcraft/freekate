.class public abstract Lcom/flurry/sdk/eh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public static a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 2

    .line 47
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 48
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private static declared-synchronized a()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 6

    const-class v0, Lcom/flurry/sdk/eh;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-object v1

    .line 29
    :cond_0
    :try_start_1
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v1, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 30
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 33
    invoke-static {}, Lcom/flurry/sdk/el;->d()Z

    move-result v1

    const/16 v2, 0x1bb

    if-eqz v1, :cond_1

    .line 34
    sget-object v1, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    new-instance v5, Lcom/flurry/sdk/ef;

    invoke-direct {v5}, Lcom/flurry/sdk/ef;-><init>()V

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v1, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 39
    :goto_0
    sget-object v1, Lcom/flurry/sdk/eh;->a:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
