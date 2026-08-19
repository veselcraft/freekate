.class Lcom/perm/kate/AudioQueue$AudioQueuePollThread;
.super Ljava/lang/Thread;
.source "AudioQueue.java"


# instance fields
.field shouldStop:Z

.field final synthetic this$0:Lcom/perm/kate/AudioQueue;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AudioQueue;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    const-string p1, "Kate.AudioQueueLongPollThread"

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->shouldStop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "LongPoll Response="

    const-string v1, "AudioQueuePollThread interrupted"

    const-string v2, "Kate.AudioQueue"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const-wide/16 v6, 0x7530

    .line 150
    :try_start_0
    iget-boolean v8, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->shouldStop:Z

    if-eqz v8, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v8, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v8}, Lcom/perm/kate/AudioQueue;->access$200(Lcom/perm/kate/AudioQueue;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connect LongPoll URL="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v9}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 156
    invoke-virtual {v10, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v11, 0x7530

    .line 157
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 158
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    invoke-static {v10}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 160
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 161
    iget-boolean v12, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->shouldStop:Z

    if-eqz v12, :cond_1

    return-void

    .line 163
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LongPoll Response Code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 165
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 168
    :cond_2
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const/16 v13, 0x2000

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 169
    iget-boolean v12, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->shouldStop:Z

    if-eqz v12, :cond_3

    return-void

    .line 178
    :cond_3
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/perm/utils/ProxyManager;->getProxyType()I

    move-result v12

    if-ne v12, v13, :cond_6

    .line 179
    :cond_4
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Redirected to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    .line 186
    new-instance v9, Ljava/lang/Exception;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    .line 189
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 192
    :cond_6
    invoke-static {v11}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "failed"

    .line 199
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_8

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "LongPoll Response FAILED"

    .line 202
    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    if-ne v10, v9, :cond_7

    const-string v9, "LongPoll Response FAILED 2"

    .line 205
    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0xbb8

    .line 208
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 209
    iget-object v9, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v9}, Lcom/perm/kate/AudioQueue;->access$000(Lcom/perm/kate/AudioQueue;)V

    goto :goto_2

    .line 211
    :cond_7
    iget-object v9, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    sget-object v10, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    invoke-static {v9, v10}, Lcom/perm/kate/AudioQueue;->access$102(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$PollState;)Lcom/perm/kate/AudioQueue$PollState;

    goto :goto_2

    .line 215
    :cond_8
    iget-object v10, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    const-string v11, "ts"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/perm/kate/AudioQueue;->access$702(Lcom/perm/kate/AudioQueue;Ljava/lang/Long;)Ljava/lang/Long;

    .line 216
    iget-object v10, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v10}, Lcom/perm/kate/AudioQueue;->access$800(Lcom/perm/kate/AudioQueue;)V

    .line 217
    iget-object v10, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v10, v9}, Lcom/perm/kate/AudioQueue;->access$900(Lcom/perm/kate/AudioQueue;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 236
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    invoke-static {v6, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    sget-object v6, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    invoke-static {v5, v6}, Lcom/perm/kate/AudioQueue;->access$102(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$PollState;)Lcom/perm/kate/AudioQueue$PollState;

    goto :goto_2

    :catch_1
    move-exception v6

    .line 230
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    invoke-static {v6, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-wide/32 v5, 0x15f90

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :catch_2
    move-exception v5

    .line 227
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 225
    :catch_3
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v6

    move-object v8, v5

    move-object v5, v6

    .line 219
    :goto_1
    invoke-static {v5, v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 221
    iget-object v5, p0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->this$0:Lcom/perm/kate/AudioQueue;

    sget-object v6, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    invoke-static {v5, v6}, Lcom/perm/kate/AudioQueue;->access$102(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$PollState;)Lcom/perm/kate/AudioQueue$PollState;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    return-void

    .line 242
    :catch_5
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
