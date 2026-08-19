.class public Lcom/my/target/dm;
.super Lcom/my/target/dn;
.source "HttpLogRequest.java"


# instance fields
.field private ek:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/my/target/dn;-><init>()V

    return-void
.end method

.method public static cG()Lcom/my/target/dm;
    .locals 1

    .line 28
    new-instance v0, Lcom/my/target/dm;

    invoke-direct {v0}, Lcom/my/target/dm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public O(Ljava/lang/String;)Lcom/my/target/dm;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/my/target/dm;->ek:Ljava/lang/String;

    return-object p0
.end method

.method protected synthetic c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/my/target/dm;->e(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Void;
    .locals 5

    .line 42
    iget-object p2, p0, Lcom/my/target/dm;->ek:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p1, "can\'t send log request: body is null"

    .line 44
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 45
    iput-boolean v0, p0, Lcom/my/target/dn;->el:Z

    return-object v1

    :cond_0
    const-string p2, "send log request"

    .line 49
    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 53
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 p2, 0x1388

    .line 56
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 57
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p2, "POST"

    .line 58
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string v2, "text/html; charset=utf-8"

    .line 59
    invoke-virtual {p1, p2, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "connection"

    const-string v2, "close"

    .line 60
    invoke-virtual {p1, p2, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 63
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 64
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    iget-object v3, p0, Lcom/my/target/dm;->ek:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 67
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 71
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 72
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v1

    .line 77
    :goto_0
    :try_start_2
    iput-boolean v0, p0, Lcom/my/target/dn;->el:Z

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/dn;->c:Ljava/lang/String;

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "log request error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/my/target/dn;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    .line 85
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v1

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    :cond_2
    throw p2
.end method
