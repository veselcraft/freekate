.class public Lorg/npr/android/news/StreamProxy;
.super Ljava/lang/Object;
.source "StreamProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isRunning:Z

.field private port:I

.field private socket:Ljava/net/ServerSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/npr/android/news/StreamProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/npr/android/news/StreamProxy;->port:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/npr/android/news/StreamProxy;->isRunning:Z

    return-void
.end method

.method private download(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    const/4 v0, 0x0

    .line 138
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 140
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 141
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResponseCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 146
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error downloading"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private processRequest(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 6

    .line 152
    sget-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "processing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, p1}, Lorg/npr/android/news/StreamProxy;->download(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "downloading..."

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status_line="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "reading headers"

    .line 161
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 168
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 175
    sget-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "writing to client"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    const-string p1, "headers written"

    .line 177
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0xc800

    new-array v0, p1, [B

    .line 181
    :goto_1
    iget-boolean v2, p0, Lorg/npr/android/news/StreamProxy;->isRunning:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0, v4, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 182
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 183
    :cond_3
    sget-object p1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v0, "after bytes write"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 185
    :try_start_1
    sget-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_2
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 188
    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    return-void

    .line 187
    :goto_3
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 188
    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    .line 189
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private readRequest(Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 109
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x2000

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 110
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 119
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "after read"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p1, "Proxy client closed connection without a request."

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_0
    move-exception p1

    .line 121
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error parsing request"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/npr/android/news/StreamProxy;->port:I

    return v0
.end method

.method public init()V
    .locals 7

    const-string v0, "Error initializing server"

    .line 51
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lorg/npr/android/news/StreamProxy;->port:I

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, 0x7f

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x1

    aput-byte v5, v3, v4

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    const/4 v6, 0x3

    aput-byte v4, v3, v6

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lorg/npr/android/news/StreamProxy;->socket:Ljava/net/ServerSocket;

    const/16 v2, 0x1388

    .line 52
    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 53
    iget-object v1, p0, Lorg/npr/android/news/StreamProxy;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lorg/npr/android/news/StreamProxy;->port:I

    .line 54
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/npr/android/news/StreamProxy;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " obtained"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 58
    sget-object v2, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 56
    sget-object v2, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 86
    sget-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    iget-boolean v0, p0, Lorg/npr/android/news/StreamProxy;->isRunning:Z

    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/npr/android/news/StreamProxy;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "client connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, v0}, Lorg/npr/android/news/StreamProxy;->readRequest(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {p0, v1, v0}, Lorg/npr/android/news/StreamProxy;->processRequest(Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error connecting to client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Proxy interrupted. Shutting down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/npr/android/news/StreamProxy;->socket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/npr/android/news/StreamProxy;->thread:Ljava/lang/Thread;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start proxy; it has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 70
    sget-object v0, Lorg/npr/android/news/StreamProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "stop called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lorg/npr/android/news/StreamProxy;->isRunning:Z

    .line 72
    iget-object v0, p0, Lorg/npr/android/news/StreamProxy;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/npr/android/news/StreamProxy;->thread:Ljava/lang/Thread;

    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/npr/android/news/StreamProxy;->socket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/npr/android/news/StreamProxy;->socket:Ljava/net/ServerSocket;

    return-void
.end method
