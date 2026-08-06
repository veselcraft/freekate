.class public Lcom/perm/kate/photoupload/HttpClientUploader;
.super Ljava/lang/Object;
.source "HttpClientUploader.java"


# direct methods
.method static getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const/4 v7, 0x0

    .line 76
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 77
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 78
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 82
    if-eqz v7, :cond_0

    .line 83
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_0
    return-object v0

    .line 82
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 83
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method static needHttpClient(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url1"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x1

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_1

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static upload(Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/UploadProgressDisplayerToNotification;)Lorg/json/JSONObject;
    .locals 13
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "url1"    # Ljava/lang/String;
    .param p2, "displayer"    # Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lcom/perm/kate/photoupload/HttpClientUploader;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 44
    .local v3, "file":Ljava/io/File;
    const-string v10, "Kate.HttpClientUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {p2, v10, v11}, Lcom/perm/kate/UploadProgressDisplayerToNotification;->setTotalAmount(J)V

    .line 47
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 48
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    .line 50
    .local v0, "builder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    new-instance v2, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 51
    .local v2, "fb":Lorg/apache/http/entity/mime/content/FileBody;
    const-string v10, "video_file"

    invoke-virtual {v0, v10, v2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 52
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 54
    .local v9, "yourEntity":Lorg/apache/http/HttpEntity;
    new-instance v4, Lcom/perm/kate/photoupload/ProgressiveEntity;

    invoke-direct {v4, v9, p2}, Lcom/perm/kate/photoupload/ProgressiveEntity;-><init>(Lorg/apache/http/HttpEntity;Lcom/perm/utils/UploadProgressListener;)V

    .line 55
    .local v4, "myEntity":Lcom/perm/kate/photoupload/ProgressiveEntity;
    invoke-virtual {v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 56
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 57
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "resp":Ljava/lang/String;
    const-string v10, "Kate.HttpClientUploader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resp1="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v8, "root":Lorg/json/JSONObject;
    return-object v8
.end method

.method private static uriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 65
    const-string v1, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "file":Ljava/io/File;
    :goto_0
    return-object v0

    .line 68
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1, p0}, Lcom/perm/kate/photoupload/HttpClientUploader;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0
.end method
