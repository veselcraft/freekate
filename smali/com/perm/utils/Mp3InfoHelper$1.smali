.class Lcom/perm/utils/Mp3InfoHelper$1;
.super Ljava/lang/Thread;
.source "Mp3InfoHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/Mp3InfoHelper;

.field final synthetic val$str_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/Mp3InfoHelper;Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/perm/utils/Mp3InfoHelper$1;->this$0:Lcom/perm/utils/Mp3InfoHelper;

    iput-object p2, p0, Lcom/perm/utils/Mp3InfoHelper$1;->val$str_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/perm/utils/Mp3InfoHelper$1;->val$str_url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/16 v1, 0x7530

    .line 23
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 25
    invoke-static {v0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 26
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 27
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    .line 28
    iget-object v3, p0, Lcom/perm/utils/Mp3InfoHelper$1;->this$0:Lcom/perm/utils/Mp3InfoHelper;

    invoke-static {v3}, Lcom/perm/utils/Mp3InfoHelper;->access$000(Lcom/perm/utils/Mp3InfoHelper;)Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/perm/utils/Mp3InfoHelper$1;->this$0:Lcom/perm/utils/Mp3InfoHelper;

    invoke-static {v3}, Lcom/perm/utils/Mp3InfoHelper;->access$000(Lcom/perm/utils/Mp3InfoHelper;)Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;->completed(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    :cond_2
    throw v1
.end method
