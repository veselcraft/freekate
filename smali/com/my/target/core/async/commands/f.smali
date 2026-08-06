.class public final Lcom/my/target/core/async/commands/f;
.super Lcom/my/target/core/async/commands/a;
.source "LoadMediaCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/async/commands/a",
        "<",
        "Lcom/my/target/core/models/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/my/target/core/models/h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/my/target/core/async/commands/a;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/my/target/core/async/commands/f;->c:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/my/target/core/async/commands/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0xc8

    .line 31
    iget-object v0, p0, Lcom/my/target/core/async/commands/f;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/my/target/nativeads/models/ImageData;

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, p0, Lcom/my/target/core/async/commands/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    .line 1095
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1096
    iget-object v3, p0, Lcom/my/target/core/async/commands/f;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/my/target/core/utils/e;->a(Landroid/content/Context;)Lcom/my/target/core/utils/e;

    move-result-object v3

    .line 1097
    if-nez v1, :cond_6

    .line 1099
    if-eqz v3, :cond_1

    .line 1101
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/my/target/core/utils/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1102
    if-eqz v1, :cond_2

    .line 1104
    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/models/ImageData;->setData(Ljava/lang/Object;)V

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to open disk cache and save image "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1120
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send image request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/core/async/commands/f;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1123
    const/16 v4, 0x2710

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1124
    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1125
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1126
    const-string v4, "connection"

    const-string v5, "close"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 1129
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 1130
    if-ne v4, v6, :cond_5

    .line 1132
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1134
    if-eqz v3, :cond_7

    .line 1136
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/my/target/core/utils/e;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1137
    if-eqz v3, :cond_3

    .line 1139
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1154
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 1156
    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/models/ImageData;->setData(Ljava/lang/Object;)V

    .line 1157
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v3

    if-nez v3, :cond_4

    .line 1158
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/models/ImageData;->setHeight(I)V

    .line 1159
    :cond_4
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v3

    if-nez v3, :cond_5

    .line 1160
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/models/ImageData;->setWidth(I)V

    .line 1163
    :cond_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1164
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1166
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1167
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1113
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting image from memory cache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1143
    :cond_7
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1144
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1147
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1150
    :catch_1
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/my/target/core/async/commands/f;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/my/target/nativeads/models/VideoData;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/my/target/core/async/commands/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/nativeads/models/VideoData;

    .line 2042
    iget-object v1, p0, Lcom/my/target/core/async/commands/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/my/target/core/utils/e;->a(Landroid/content/Context;)Lcom/my/target/core/utils/e;

    move-result-object v1

    .line 2044
    if-nez v1, :cond_9

    .line 2046
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open disk cache and save video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2049
    :cond_9
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 2188
    const-string v4, ".mp4"

    invoke-virtual {v1, v3, v4}, Lcom/my/target/core/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2050
    if-eqz v3, :cond_a

    .line 2052
    invoke-virtual {v0, v3}, Lcom/my/target/nativeads/models/VideoData;->setData(Ljava/lang/Object;)V

    .line 2053
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting video from cache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2060
    :cond_a
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send video request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/target/core/async/commands/f;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 2063
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2064
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2065
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 2066
    const-string v3, "connection"

    const-string v4, "close"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2069
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 2070
    if-ne v3, v6, :cond_b

    .line 2072
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2074
    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/my/target/core/utils/e;->b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2075
    if-eqz v1, :cond_b

    .line 2077
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/models/VideoData;->setData(Ljava/lang/Object;)V

    .line 2080
    :cond_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 2081
    :catch_2
    move-exception v0

    .line 2083
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 2084
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1164
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method
