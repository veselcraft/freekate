.class public Lcom/my/target/do;
.super Lcom/my/target/dn;
.source "HttpStatRequest.java"


# instance fields
.field private cN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/my/target/dn;-><init>()V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .line 107
    iget v0, p0, Lcom/my/target/do;->cN:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_3

    const-string v0, "Location"

    .line 109
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 126
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Lcom/my/target/iv;->ao(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/my/target/iv;->am(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    .line 132
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/my/target/dn;->em:Ljava/lang/Object;

    nop

    :catch_0
    :cond_3
    return-object v1
.end method

.method public static cJ()Lcom/my/target/do;
    .locals 1

    .line 32
    new-instance v0, Lcom/my/target/do;

    invoke-direct {v0}, Lcom/my/target/do;-><init>()V

    return-object v0
.end method

.method private g(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .line 48
    iput-object p1, p0, Lcom/my/target/dn;->em:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send stat request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 52
    invoke-static {p2}, Lcom/my/target/dr;->r(Landroid/content/Context;)Lcom/my/target/dr;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x2710

    .line 57
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 58
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    .line 59
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    const-string v4, "http.agent"

    .line 60
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v3, "connection"

    const-string v4, "close"

    .line 62
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/my/target/dr;->b(Ljava/net/URLConnection;)V

    .line 65
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/my/target/dn;->responseCode:I

    .line 66
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 71
    :cond_0
    iget v3, p0, Lcom/my/target/dn;->responseCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_3

    const/16 v4, 0x193

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x12e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x12d

    if-eq v3, v0, :cond_2

    const/16 v0, 0x12f

    if-ne v3, v0, :cond_4

    .line 82
    :cond_2
    iget v0, p0, Lcom/my/target/do;->cN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/do;->cN:I

    .line 83
    invoke-direct {p0, p1}, Lcom/my/target/do;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 76
    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/my/target/dr;->a(Ljava/net/URLConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v2

    .line 89
    :goto_1
    iput-boolean v1, p0, Lcom/my/target/dn;->el:Z

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/dn;->c:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat request error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/my/target/dn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v2, :cond_6

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "redirected to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v2, p2}, Lcom/my/target/do;->g(Ljava/lang/String;Landroid/content/Context;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/my/target/do;->cN:I

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/my/target/do;->g(Ljava/lang/String;Landroid/content/Context;)V

    .line 42
    iget-object p1, p0, Lcom/my/target/dn;->em:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected synthetic c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/my/target/do;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
