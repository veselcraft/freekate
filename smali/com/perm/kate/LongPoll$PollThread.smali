.class Lcom/perm/kate/LongPoll$PollThread;
.super Ljava/lang/Thread;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LongPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollThread"
.end annotation


# instance fields
.field shouldStop:Z

.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method public constructor <init>(Lcom/perm/kate/LongPoll;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    .line 175
    const-string v0, "Kate.LongPollThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 180
    const/4 v8, 0x0

    .line 182
    .local v8, "redirect_reported":Z
    :goto_0
    const/4 v12, 0x0

    .line 183
    .local v12, "url":Ljava/lang/String;
    const/4 v9, 0x0

    .line 186
    .local v9, "response":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    if-eqz v14, :cond_1

    .line 276
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v15, v15, Lcom/perm/kate/LongPoll;->server:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?act=a_check&key="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v15, v15, Lcom/perm/kate/LongPoll;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&ts="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v15, v15, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&wait=25&mode=2&version=1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 189
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    .local v13, "url1":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 191
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 192
    const/16 v14, 0x7530

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    const/16 v14, 0x7530

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 194
    invoke-static {v3}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 195
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 196
    .local v2, "code":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    if-nez v14, :cond_0

    .line 198
    const-string v14, "Kate.LongPoll"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "code="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v14, -0x1

    if-ne v2, v14, :cond_2

    .line 201
    const-wide/16 v14, 0x7530

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    goto/16 :goto_0

    .line 249
    .end local v2    # "code":I
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v13    # "url1":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 250
    .local v4, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-static {v4, v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v15, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v14, v15}, Lcom/perm/kate/LongPoll;->access$202(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 272
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    .line 273
    .local v5, "e1":Ljava/lang/InterruptedException;
    const-string v14, "Kate.LongPoll"

    const-string v15, "PollThread interrupted"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .end local v5    # "e1":Ljava/lang/InterruptedException;
    .restart local v2    # "code":I
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v13    # "url1":Ljava/net/URL;
    :cond_2
    :try_start_2
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const/16 v15, 0x2000

    invoke-direct {v7, v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 205
    .local v7, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/perm/kate/LongPoll$PollThread;->shouldStop:Z

    if-nez v14, :cond_0

    .line 212
    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 213
    const-string v14, "Kate.LongPoll"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Redirected to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez v8, :cond_3

    .line 219
    new-instance v14, Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 220
    const/4 v8, 0x1

    .line 222
    :cond_3
    const-wide/16 v14, 0x7530

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 254
    .end local v2    # "code":I
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v13    # "url1":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 256
    .restart local v5    # "e1":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v14, "Kate.LongPoll"

    const-string v15, "PollThread interrupted"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 226
    .end local v5    # "e1":Ljava/lang/InterruptedException;
    .restart local v2    # "code":I
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v13    # "url1":Ljava/net/URL;
    :cond_4
    :try_start_4
    invoke-static {v7}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 228
    sget-boolean v14, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v14, :cond_5

    .line 229
    const-string v14, "Kate.LongPoll"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "response="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v10, "root":Lorg/json/JSONObject;
    const-string v14, "failed"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 234
    .local v6, "failed":I
    if-eqz v6, :cond_7

    .line 235
    const-string v14, "Kate.LongPoll"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v14, 0x2

    if-ne v6, v14, :cond_6

    .line 240
    const-wide/16 v14, 0xbb8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v14}, Lcom/perm/kate/LongPoll;->access$100(Lcom/perm/kate/LongPoll;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 257
    .end local v2    # "code":I
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "failed":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v13    # "url1":Ljava/net/URL;
    :catch_3
    move-exception v4

    .line 258
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 259
    const-wide/16 v14, 0x7530

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 243
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "code":I
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "failed":I
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v10    # "root":Lorg/json/JSONObject;
    .restart local v13    # "url1":Ljava/net/URL;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v15, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v14, v15}, Lcom/perm/kate/LongPoll;->access$202(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 260
    .end local v2    # "code":I
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "failed":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v13    # "url1":Ljava/net/URL;
    :catch_4
    move-exception v4

    .line 261
    .local v4, "e":Lorg/json/JSONException;
    :try_start_7
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 262
    invoke-static {v4, v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 264
    const-wide/32 v14, 0x15f90

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 247
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v2    # "code":I
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "failed":I
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v10    # "root":Lorg/json/JSONObject;
    .restart local v13    # "url1":Ljava/net/URL;
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    const-string v15, "ts"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v14, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v14, v10}, Lcom/perm/kate/LongPoll;->access$300(Lcom/perm/kate/LongPoll;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 265
    .end local v2    # "code":I
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "failed":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v13    # "url1":Ljava/net/URL;
    :catch_5
    move-exception v11

    .line 267
    .local v11, "th":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    invoke-static {v11, v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/LongPoll$PollThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v15, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v14, v15}, Lcom/perm/kate/LongPoll;->access$202(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1
.end method
