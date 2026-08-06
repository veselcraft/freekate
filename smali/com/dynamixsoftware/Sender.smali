.class Lcom/dynamixsoftware/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field static filter:Ljava/io/FilenameFilter;

.field static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamixsoftware/Sender;->lock:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/dynamixsoftware/Sender$1;

    invoke-direct {v0}, Lcom/dynamixsoftware/Sender$1;-><init>()V

    sput-object v0, Lcom/dynamixsoftware/Sender;->filter:Ljava/io/FilenameFilter;

    .line 15
    return-void
.end method

.method public static send()V
    .locals 2

    .prologue
    .line 30
    sget-object v1, Lcom/dynamixsoftware/Sender;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    invoke-static {}, Lcom/dynamixsoftware/Sender;->sendInternal()V

    .line 30
    monitor-exit v1

    .line 33
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendInThread()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/dynamixsoftware/Sender$2;

    invoke-direct {v0}, Lcom/dynamixsoftware/Sender$2;-><init>()V

    .line 24
    invoke-virtual {v0}, Lcom/dynamixsoftware/Sender$2;->start()V

    .line 25
    return-void
.end method

.method private static sendInternal()V
    .locals 14

    .prologue
    .line 37
    :try_start_0
    sget-object v7, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 38
    sget-object v7, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    sget-object v8, Lcom/dynamixsoftware/Sender;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 39
    .local v5, "list":[Ljava/io/File;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-nez v7, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    array-length v8, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v2, v5, v7

    .line 42
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/dynamixsoftware/Utils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "data":Ljava/lang/String;
    const-string v9, "Sender"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sending report "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 45
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    sget-object v9, Lcom/dynamixsoftware/StaticVariables;->URL:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v6, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "data"

    invoke-direct {v9, v10, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "project_id"

    sget-wide v12, Lcom/dynamixsoftware/StaticVariables;->PROJECT_ID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 50
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 52
    const-string v9, "Sender"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Report sent "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
