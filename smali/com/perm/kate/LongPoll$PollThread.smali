.class Lcom/perm/kate/LongPoll$PollThread;
.super Ljava/lang/Thread;
.source "LongPoll.java"


# instance fields
.field shouldStop:Z

.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method public constructor <init>(Lcom/perm/kate/LongPoll;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    const-string p1, "Kate.LongPollThread"

    .line 201
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "PollThread interrupted"

    const-string v1, "Kate.LongPoll"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const-wide/16 v5, 0x7530

    .line 212
    :try_start_0
    iget-boolean v7, p0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    if-eqz v7, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v8, v8, Lcom/perm/kate/LongPoll;->server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?act=a_check&key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v8, v8, Lcom/perm/kate/LongPoll;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&ts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v8, v8, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "&wait=25&mode=2&version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-static {v8}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 218
    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v10, 0x7530

    .line 219
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 220
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 221
    invoke-static {v9}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 222
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 223
    iget-boolean v11, p0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    if-eqz v11, :cond_1

    return-void

    .line 225
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "code="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 228
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 231
    :cond_2
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const/16 v12, 0x2000

    invoke-direct {v10, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 232
    iget-boolean v11, p0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    if-eqz v11, :cond_3

    return-void

    .line 241
    :cond_3
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/perm/utils/ProxyManager;->getProxyType()I

    move-result v11

    if-ne v11, v12, :cond_6

    .line 242
    :cond_4
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Redirected to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    .line 249
    new-instance v8, Ljava/lang/Exception;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    .line 252
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 256
    :cond_6
    invoke-static {v10}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_7

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_7
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "failed"

    .line 264
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_9

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    if-ne v9, v8, :cond_8

    const-wide/16 v8, 0xbb8

    .line 271
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 272
    iget-object v8, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v8}, Lcom/perm/kate/LongPoll;->access$200(Lcom/perm/kate/LongPoll;)V

    goto :goto_2

    .line 274
    :cond_8
    iget-object v8, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v9, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v8, v9}, Lcom/perm/kate/LongPoll;->access$002(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;

    goto :goto_2

    .line 278
    :cond_9
    iget-object v9, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    const-string v10, "ts"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    .line 279
    iget-object v9, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v9, v8}, Lcom/perm/kate/LongPoll;->access$300(Lcom/perm/kate/LongPoll;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 298
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    invoke-static {v5, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 300
    iget-object v4, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v5, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v4, v5}, Lcom/perm/kate/LongPoll;->access$002(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;

    goto :goto_2

    :catch_1
    move-exception v5

    .line 292
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 293
    invoke-static {v5, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-wide/32 v4, 0x15f90

    .line 295
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .line 289
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 287
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v5

    move-object v7, v4

    move-object v4, v5

    .line 281
    :goto_1
    invoke-static {v4, v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 283
    iget-object v4, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v5, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v4, v5}, Lcom/perm/kate/LongPoll;->access$002(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    return-void

    .line 304
    :catch_5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
