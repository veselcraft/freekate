.class abstract Lcom/dynamixsoftware/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field static filter:Ljava/io/FilenameFilter;

.field static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynamixsoftware/Sender;->lock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/dynamixsoftware/Sender$2;

    invoke-direct {v0}, Lcom/dynamixsoftware/Sender$2;-><init>()V

    sput-object v0, Lcom/dynamixsoftware/Sender;->filter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public static send()V
    .locals 2

    .line 27
    sget-object v0, Lcom/dynamixsoftware/Sender;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/dynamixsoftware/Sender;->sendInternal()V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sendInThread()V
    .locals 1

    .line 16
    new-instance v0, Lcom/dynamixsoftware/Sender$1;

    invoke-direct {v0}, Lcom/dynamixsoftware/Sender$1;-><init>()V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static sendInternal()V
    .locals 11

    const-string v0, "UTF-8"

    const-string v1, "Sender"

    .line 34
    :try_start_0
    sget-object v2, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 35
    sget-object v2, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    sget-object v3, Lcom/dynamixsoftware/Sender;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 38
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 39
    invoke-static {v5}, Lcom/dynamixsoftware/Utils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending report "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v7, Ljava/net/URL;

    sget-object v8, Lcom/dynamixsoftware/StaticVariables;->URL:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data="

    .line 46
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&project_id="

    .line 48
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-wide v9, Lcom/dynamixsoftware/StaticVariables;->PROJECT_ID:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 53
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const-string v8, "POST"

    .line 54
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v8, 0x4e20

    .line 57
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 58
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v8, 0x1

    .line 59
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 67
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Report sent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method
