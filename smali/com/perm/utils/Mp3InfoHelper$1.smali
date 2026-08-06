.class Lcom/perm/utils/Mp3InfoHelper$1;
.super Ljava/lang/Thread;
.source "Mp3InfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/Mp3InfoHelper;->getLength(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/Mp3InfoHelper;

.field final synthetic val$str_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/Mp3InfoHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/Mp3InfoHelper;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/perm/utils/Mp3InfoHelper$1;->this$0:Lcom/perm/utils/Mp3InfoHelper;

    iput-object p2, p0, Lcom/perm/utils/Mp3InfoHelper$1;->val$str_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 20
    const/4 v2, 0x0

    .line 22
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/perm/utils/Mp3InfoHelper$1;->val$str_url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 23
    const/16 v6, 0x7530

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 24
    const/16 v6, 0x7530

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 25
    invoke-static {v2}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 26
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    int-to-long v4, v6

    .line 28
    .local v4, "length":J
    iget-object v6, p0, Lcom/perm/utils/Mp3InfoHelper$1;->this$0:Lcom/perm/utils/Mp3InfoHelper;

    invoke-static {v6}, Lcom/perm/utils/Mp3InfoHelper;->access$000(Lcom/perm/utils/Mp3InfoHelper;)Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 29
    iget-object v6, p0, Lcom/perm/utils/Mp3InfoHelper$1;->this$0:Lcom/perm/utils/Mp3InfoHelper;

    invoke-static {v6}, Lcom/perm/utils/Mp3InfoHelper;->access$000(Lcom/perm/utils/Mp3InfoHelper;)Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;->completed(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 38
    .end local v4    # "length":J
    :cond_1
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 32
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 33
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 35
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v6
.end method
