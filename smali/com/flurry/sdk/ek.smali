.class public abstract Lcom/flurry/sdk/ek;
.super Lcom/flurry/sdk/fd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ek$a;,
        Lcom/flurry/sdk/ek$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljavax/net/ssl/SSLContext;

.field private static c:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/flurry/sdk/ek$a;

.field private f:I

.field private i:I

.field private j:Z

.field private final k:Lcom/flurry/sdk/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dp<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/flurry/sdk/ek$c;

.field private m:Ljava/net/HttpURLConnection;

.field private n:Lorg/apache/http/client/HttpClient;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Exception;

.field private r:I

.field private final s:Lcom/flurry/sdk/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dp<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/flurry/sdk/ek;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/flurry/sdk/fd;-><init>()V

    const/16 v0, 0x2710

    .line 176
    iput v0, p0, Lcom/flurry/sdk/ek;->f:I

    const/16 v0, 0x3a98

    .line 177
    iput v0, p0, Lcom/flurry/sdk/ek;->i:I

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/flurry/sdk/ek;->j:Z

    .line 179
    new-instance v0, Lcom/flurry/sdk/dp;

    invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;

    const/4 v0, -0x1

    .line 188
    iput v0, p0, Lcom/flurry/sdk/ek;->r:I

    .line 189
    new-instance v0, Lcom/flurry/sdk/dp;

    invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->t:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ek;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static declared-synchronized m()Ljavax/net/ssl/SSLContext;
    .locals 5

    const-class v0, Lcom/flurry/sdk/ek;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 88
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    .line 93
    new-instance v3, Lcom/flurry/sdk/eg;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/flurry/sdk/eg;-><init>(Ljava/security/KeyStore;)V

    aput-object v3, v1, v2

    const-string v2, "TLS"

    .line 98
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;

    .line 99
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x3

    .line 101
    :try_start_2
    sget-object v3, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    const-string v4, "Exception creating SSL context"

    invoke-static {v2, v3, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_0
    sget-object v1, Lcom/flurry/sdk/ek;->b:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized n()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ek;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ek;->c:Ljavax/net/ssl/HostnameVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 109
    monitor-exit v0

    return-object v1

    .line 112
    :cond_0
    :try_start_1
    new-instance v1, Lcom/flurry/sdk/ee;

    invoke-direct {v1}, Lcom/flurry/sdk/ee;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ek;->c:Ljavax/net/ssl/HostnameVerifier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private o()V
    .locals 8

    .line 320
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 328
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    .line 329
    iget v1, p0, Lcom/flurry/sdk/ek;->f:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 330
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/ek;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 331
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ek$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/ek;->j:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 333
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v2, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 334
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 337
    invoke-static {}, Lcom/flurry/sdk/el;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 338
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 342
    invoke-static {}, Lcom/flurry/sdk/ek;->n()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 343
    invoke-static {}, Lcom/flurry/sdk/ek;->m()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;

    invoke-virtual {v0}, Lcom/flurry/sdk/dp;->b()Ljava/util/Collection;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    iget-object v2, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_3
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_4

    .line 418
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    return-void

    .line 363
    :cond_4
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 369
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 370
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    :try_start_4
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ek;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    :try_start_5
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 376
    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 377
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v1

    .line 382
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ek;->r:I

    .line 385
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 387
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 389
    iget-object v5, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 394
    :cond_7
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v2, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v2, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v0, :cond_8

    .line 418
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    return-void

    .line 399
    :cond_8
    :try_start_6
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_9

    .line 418
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    return-void

    .line 408
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 409
    :try_start_8
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 412
    :try_start_9
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ek;->a(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 414
    :try_start_a
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 415
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 418
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    return-void

    :catchall_3
    move-exception v1

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 414
    :goto_4
    :try_start_b
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 415
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    .line 418
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private p()V
    .locals 13

    .line 424
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;

    invoke-virtual {v1}, Lcom/flurry/sdk/dp;->b()Ljava/util/Collection;

    move-result-object v1

    .line 433
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    sget-object v1, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v2, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v2, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Accept-Encoding"

    .line 439
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->removeHeaders(Ljava/lang/String;)V

    .line 443
    :cond_2
    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v2, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    move-object v1, v0

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lcom/flurry/sdk/ek$1;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/ek$1;-><init>(Lcom/flurry/sdk/ek;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 488
    :cond_3
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 489
    iget v2, p0, Lcom/flurry/sdk/ek;->f:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 490
    iget v2, p0, Lcom/flurry/sdk/ek;->i:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v2, "http.protocol.handle-redirects"

    .line 491
    iget-boolean v3, p0, Lcom/flurry/sdk/ek;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 494
    invoke-static {v1}, Lcom/flurry/sdk/eh;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;

    .line 495
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 498
    iget-boolean v1, p0, Lcom/flurry/sdk/ek;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v2, "Request cancelled"

    if-nez v1, :cond_9

    if-eqz v0, :cond_8

    .line 505
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/ek;->r:I

    .line 508
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 510
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    .line 511
    invoke-interface {v6}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 512
    iget-object v10, p0, Lcom/flurry/sdk/ek;->s:Lcom/flurry/sdk/dp;

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 518
    :cond_5
    sget-object v1, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v3, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v3, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v1, :cond_6

    .line 547
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    return-void

    .line 523
    :cond_6
    :try_start_2
    iget-boolean v1, p0, Lcom/flurry/sdk/ek;->p:Z

    if-nez v1, :cond_7

    .line 528
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 535
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 536
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 539
    :try_start_5
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ek;->a(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 541
    :try_start_6
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 542
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 541
    :goto_3
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 542
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v1

    .line 524
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 547
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    return-void

    .line 499
    :cond_9
    :try_start_7
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 547
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->r()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private q()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    if-nez v0, :cond_0

    return-void

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;)V

    return-void
.end method

.method private r()V
    .locals 1

    .line 596
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lcom/flurry/sdk/ek;->o:Z

    .line 602
    iget-object v0, p0, Lcom/flurry/sdk/ek;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ek;->n:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_2

    .line 607
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, " for url: "

    const-string v1, "HTTP status: "

    const/4 v2, 0x3

    const/4 v3, 0x4

    .line 280
    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V

    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/es;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    sget-object v4, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network not available, aborting http request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V

    return-void

    .line 290
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    :cond_2
    sget-object v4, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iput-object v4, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    .line 296
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_4

    .line 297
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V

    goto :goto_0

    .line 299
    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    .line 302
    :goto_0
    sget-object v4, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/flurry/sdk/ek;->r:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 304
    :try_start_3
    sget-object v5, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flurry/sdk/ek;->r:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception during http request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    iput-object v4, p0, Lcom/flurry/sdk/ek;->q:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :goto_1
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V

    return-void

    :goto_2
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ek$a;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/flurry/sdk/ek;->e:Lcom/flurry/sdk/ek$a;

    return-void
.end method

.method public a(Lcom/flurry/sdk/ek$c;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/flurry/sdk/ek;->l:Lcom/flurry/sdk/ek$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/flurry/sdk/ek;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Lcom/flurry/sdk/dp;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/ek;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-boolean v1, p0, Lcom/flurry/sdk/ek;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 234
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/flurry/sdk/ek;->r:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/flurry/sdk/ek;->r:I

    return v0
.end method
