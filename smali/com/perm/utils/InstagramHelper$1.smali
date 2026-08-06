.class Lcom/perm/utils/InstagramHelper$1;
.super Ljava/lang/Thread;
.source "InstagramHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/InstagramHelper;->getPhotoUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/InstagramHelper;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/utils/InstagramHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/InstagramHelper;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    iput-object p2, p0, Lcom/perm/utils/InstagramHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/perm/utils/InstagramHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 28
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "photo_url":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 30
    iget-object v4, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v4}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/perm/utils/InstagramHelper$Callback;->completed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :goto_0
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    .end local v3    # "photo_url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 32
    .restart local v3    # "photo_url":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v4}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/perm/utils/InstagramHelper$Callback;->error()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v3    # "photo_url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_2
    iget-object v4, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v4}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/perm/utils/InstagramHelper$Callback;->error()V

    .line 35
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 36
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 37
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v4, p0, Lcom/perm/utils/InstagramHelper$1;->this$0:Lcom/perm/utils/InstagramHelper;

    invoke-static {v4}, Lcom/perm/utils/InstagramHelper;->access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/perm/utils/InstagramHelper$Callback;->error()V

    .line 38
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 40
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v4
.end method
