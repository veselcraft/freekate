.class public Lcom/perm/kate/ads/AdConfig;
.super Ljava/lang/Object;
.source "AdConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field ad_config:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private default_ad_type:Ljava/lang/String;

.field public refresh_period:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    .line 31
    const-string v0, "n"

    iput-object v0, p0, Lcom/perm/kate/ads/AdConfig;->default_ad_type:Ljava/lang/String;

    .line 32
    const/16 v0, 0xe10

    iput v0, p0, Lcom/perm/kate/ads/AdConfig;->refresh_period:I

    .line 36
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "CheckMembersActivity"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "PhotoDetailsActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "BannedActivity"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "ForwardedMessagesActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "ExtraProfileActivity2"

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "CreateChatActivity"

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "AlbumsActivity2"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "FavesActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "FavesActivity2"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "GroupsActivity2"

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "PhotosActivity"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "LikesActivity"

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "VideoActivity2"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "SearchActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "FollowersActivity2"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "LyricsActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "GroupMembersActivity"

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "GroupContactsActivity"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "BirthdaysActivity"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "AudioAlbumsActivity"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "NoteActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "NotesActivity2"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "VideoAlbumsActivity"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "BlackListActivity"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "AttachmentsActivity"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "PollVotersActivity"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "MembersActivity"

    const-string v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "GroupLinksActivity"

    const-string v2, "y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "GroupTopicsActivity"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    const-string v1, "PollActivity"

    const-string v2, "n"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static download()Lcom/perm/kate/ads/AdConfig;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 116
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v7, "http://s3-us-west-2.amazonaws.com/katemob/ad_config.json"

    .line 118
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 119
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 121
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 122
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    const-string v8, "Accept-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 126
    .local v1, "code":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    .line 127
    const/4 v8, 0x0

    .line 135
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    :cond_0
    :goto_0
    return-object v8

    .line 128
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v4, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 129
    .local v4, "is":Ljava/io/InputStream;
    const-string v8, "Content-Encoding"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "enc":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v8, "gzip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v4, v5

    .line 132
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v4}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "response":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/kate/ads/AdConfig;->parse(Ljava/lang/String;)Lcom/perm/kate/ads/AdConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 135
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 135
    .end local v1    # "code":I
    .end local v3    # "enc":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v8
.end method

.method private static getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "ads_config"

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/perm/kate/ads/AdConfig;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, "root":Lorg/json/JSONObject;
    new-instance v1, Lcom/perm/kate/ads/AdConfig;

    invoke-direct {v1}, Lcom/perm/kate/ads/AdConfig;-><init>()V

    .line 143
    .local v1, "config":Lcom/perm/kate/ads/AdConfig;
    iget-object v8, v1, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 144
    const-string v8, "b"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 145
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 146
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 147
    .local v4, "o":Lorg/json/JSONObject;
    const-string v8, "t"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "type":Ljava/lang/String;
    const-string v8, "s"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 149
    .local v6, "screens":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 150
    iget-object v8, v1, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "j":I
    .end local v4    # "o":Lorg/json/JSONObject;
    .end local v6    # "screens":Lorg/json/JSONArray;
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    const-string v8, "r"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/perm/kate/ads/AdConfig;->refresh_period:I

    .line 153
    const-string v8, "d"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/perm/kate/ads/AdConfig;->default_ad_type:Ljava/lang/String;

    .line 154
    return-object v1
.end method

.method public static readCache(Landroid/content/Context;)Lcom/perm/kate/ads/AdConfig;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 77
    .local v4, "t1":J
    const/4 v1, 0x0

    .line 79
    .local v1, "is":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-static {}, Lcom/perm/kate/ads/AdConfig;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .local v2, "is":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/ads/AdConfig;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .local v0, "conf":Lcom/perm/kate/ads/AdConfig;
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    .local v6, "t2":J
    const-string v8, "Kate.AdConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readCache took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v6, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 92
    .end local v0    # "conf":Lcom/perm/kate/ads/AdConfig;
    .end local v2    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v0

    .line 82
    .end local v6    # "t2":J
    :catch_0
    move-exception v3

    .line 83
    .local v3, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    instance-of v8, v3, Ljava/io/FileNotFoundException;

    if-nez v8, :cond_0

    .line 84
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    .restart local v6    # "t2":J
    const-string v8, "Kate.AdConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readCache took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v6, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    .end local v3    # "th":Ljava/lang/Throwable;
    .end local v6    # "t2":J
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    .restart local v6    # "t2":J
    const-string v9, "Kate.AdConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readCache took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v6, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    throw v8

    .line 88
    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .end local v6    # "t2":J
    .restart local v2    # "is":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 82
    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v2    # "is":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static saveCache(Lcom/perm/kate/ads/AdConfig;Landroid/content/Context;)V
    .locals 6
    .param p0, "config"    # Lcom/perm/kate/ads/AdConfig;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-static {}, Lcom/perm/kate/ads/AdConfig;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 110
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 104
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getAdType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "activity_name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "com.perm.kate."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->ad_config:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ads/AdConfig;->default_ad_type:Ljava/lang/String;

    goto :goto_0
.end method
