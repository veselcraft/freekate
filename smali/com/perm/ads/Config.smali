.class Lcom/perm/ads/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/ads/Config$Banner;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field banners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/ads/Config$Banner;",
            ">;"
        }
    .end annotation
.end field

.field refresh_period:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0xe10

    iput v0, p0, Lcom/perm/ads/Config;->refresh_period:I

    .line 23
    return-void
.end method

.method public static download(Ljava/lang/Integer;)Lcom/perm/ads/Config;
    .locals 11
    .param p0, "app_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 48
    if-nez p0, :cond_1

    .line 49
    const-string v8, "AdView.Config"

    const-string v10, "AdView is not configured. Please call AdView.setProjectId()."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 71
    :cond_0
    :goto_0
    return-object v8

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 54
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "http://s3-eu-west-1.amazonaws.com/adnetconf/config_"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".json"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 56
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 57
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 58
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 59
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 60
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 61
    const-string v8, "Accept-Encoding"

    const-string v10, "gzip"

    invoke-virtual {v2, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 63
    .local v1, "code":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    .line 73
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v8, v9

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v4, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 66
    .local v4, "is":Ljava/io/InputStream;
    const-string v8, "Content-Encoding"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "enc":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v8, "gzip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 68
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v4, v5

    .line 69
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_4
    invoke-static {v4}, Lcom/perm/ads/Helper;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "response":Ljava/lang/String;
    const-string v8, "AdView.Config"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ad response="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v6}, Lcom/perm/ads/Config;->parse(Ljava/lang/String;)Lcom/perm/ads/Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 73
    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 72
    .end local v1    # "code":I
    .end local v3    # "enc":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 73
    if-eqz v2, :cond_5

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    :cond_5
    throw v8
.end method

.method private static getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "ad_config"

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/perm/ads/Config;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v4, "root":Lorg/json/JSONObject;
    new-instance v1, Lcom/perm/ads/Config;

    invoke-direct {v1}, Lcom/perm/ads/Config;-><init>()V

    .line 35
    .local v1, "config":Lcom/perm/ads/Config;
    const-string v5, "b"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 36
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    .line 38
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 43
    .end local v2    # "i":I
    :cond_0
    const-string v5, "r"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/perm/ads/Config;->refresh_period:I

    .line 44
    return-object v1

    .line 39
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 40
    .local v3, "o":Lorg/json/JSONObject;
    iget-object v5, v1, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/perm/ads/Config$Banner;->parse(Lorg/json/JSONObject;)Lcom/perm/ads/Config$Banner;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static readCache(Landroid/content/Context;)Lcom/perm/ads/Config;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 94
    .local v4, "t1":J
    const/4 v2, 0x0

    .line 96
    .local v2, "is":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-static {}, Lcom/perm/ads/Config;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v2    # "is":Ljava/io/ObjectInputStream;
    .local v3, "is":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/ads/Config;

    .line 101
    .local v1, "conf":Lcom/perm/ads/Config;
    iget-object v9, v1, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 102
    iget-object v9, v1, Lcom/perm/ads/Config;->banners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-nez v10, :cond_2

    .line 114
    :cond_1
    invoke-static {v3}, Lcom/perm/ads/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 116
    .local v6, "t2":J
    const-string v9, "AdView.Config"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "readCache took "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v6, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 118
    .end local v1    # "conf":Lcom/perm/ads/Config;
    .end local v3    # "is":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/ObjectInputStream;
    :goto_1
    return-object v1

    .line 102
    .end local v2    # "is":Ljava/io/ObjectInputStream;
    .end local v6    # "t2":J
    .restart local v1    # "conf":Lcom/perm/ads/Config;
    .restart local v3    # "is":Ljava/io/ObjectInputStream;
    :cond_2
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/ads/Config$Banner;

    .line 103
    .local v0, "b":Lcom/perm/ads/Config$Banner;
    if-eqz v0, :cond_0

    iget v10, v0, Lcom/perm/ads/Config$Banner;->weight:I

    if-nez v10, :cond_0

    .line 104
    const/4 v10, 0x1

    iput v10, v0, Lcom/perm/ads/Config$Banner;->weight:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 107
    .end local v0    # "b":Lcom/perm/ads/Config$Banner;
    .end local v1    # "conf":Lcom/perm/ads/Config;
    :catch_0
    move-exception v8

    move-object v2, v3

    .line 108
    .end local v3    # "is":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/ObjectInputStream;
    .local v8, "th":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    instance-of v9, v8, Ljava/io/FileNotFoundException;

    if-nez v9, :cond_3

    .line 109
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    sget-object v9, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v9, :cond_3

    .line 111
    sget-object v9, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v9, v8}, Lcom/perm/ads/Listener;->reportException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :cond_3
    invoke-static {v2}, Lcom/perm/ads/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 116
    .restart local v6    # "t2":J
    const-string v9, "AdView.Config"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "readCache took "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v6, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    goto :goto_1

    .line 113
    .end local v6    # "t2":J
    .end local v8    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    .line 114
    :goto_3
    invoke-static {v2}, Lcom/perm/ads/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 116
    .restart local v6    # "t2":J
    const-string v10, "AdView.Config"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "readCache took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    throw v9

    .line 113
    .end local v2    # "is":Ljava/io/ObjectInputStream;
    .end local v6    # "t2":J
    .restart local v3    # "is":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "is":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 107
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static saveCache(Lcom/perm/ads/Config;Landroid/content/Context;)V
    .locals 6
    .param p0, "config"    # Lcom/perm/ads/Config;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/perm/ads/Config;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    invoke-static {v1}, Lcom/perm/ads/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 90
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    sget-object v3, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    if-eqz v3, :cond_0

    .line 86
    sget-object v3, Lcom/perm/ads/AdView;->listener:Lcom/perm/ads/Listener;

    invoke-virtual {v3, v2}, Lcom/perm/ads/Listener;->reportException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/perm/ads/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 87
    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 88
    :goto_2
    invoke-static {v0}, Lcom/perm/ads/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 89
    throw v3

    .line 87
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 83
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
