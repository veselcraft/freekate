.class Lcom/perm/utils/InstagramHelper$1;
.super Ljava/lang/Thread;
.source "InstagramHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/InstagramHelper;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/InstagramHelper;Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    iput-object p2, p0, Lcom/perm/utils/InstagramHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 26
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/perm/utils/InstagramHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 27
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "Location"

    .line 28
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v2, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v2}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/perm/utils/InstagramHelper$Callback;->completed(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v0}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/perm/utils/InstagramHelper$Callback;->error()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 37
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v2}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v2

    invoke-interface {v2}, Lcom/perm/utils/InstagramHelper$Callback;->error()V

    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 34
    :goto_1
    iget-object v2, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v2}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v2

    invoke-interface {v2}, Lcom/perm/utils/InstagramHelper$Callback;->error()V

    .line 35
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 41
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 42
    :cond_2
    throw v0
.end method
