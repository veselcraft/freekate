.class public abstract Lcom/perm/kate/PhotoSaver;
.super Ljava/lang/Object;
.source "PhotoSaver.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/perm/kate/PhotoSaver;->downloadImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/PhotoSaver;->copyImage(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method private static copyImage(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 141
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 144
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 145
    invoke-virtual {p1, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p3, :cond_1

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f03d9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    new-instance v1, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p2}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_1
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v1

    :goto_1
    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception p2

    move-object p1, v1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-exception p2

    move-object p1, v1

    .line 154
    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_2

    .line 156
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 158
    :cond_2
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 159
    :goto_4
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p0

    .line 158
    :goto_5
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 159
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 160
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private static downloadImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PhotoSaver"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v1}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x7530

    .line 107
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 109
    invoke-static {p1}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 112
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 113
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f03d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p0, v0}, Lcom/perm/kate/PhotoSaver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 122
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;->completed(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, p1

    goto :goto_5

    :catch_1
    move-exception p2

    move-object v2, v0

    :goto_1
    move-object v0, p1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception p2

    move-object v2, v0

    :goto_2
    if-eqz p3, :cond_2

    .line 125
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perm/kate/PhotoSaver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :catchall_3
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_3
    if-eqz p4, :cond_3

    .line 127
    invoke-interface {p4}, Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;->error()V

    .line 128
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    :cond_4
    :goto_4
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void

    :goto_5
    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 132
    :cond_5
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 133
    throw p0
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/KatePhotos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveDir()Ljava/io/File;
    .locals 3

    .line 80
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_save_dir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v1, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "KatePhotos"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v1
.end method

.method public static isScopedStorage()Z
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static savePhoto(Landroid/content/Context;Lcom/perm/kate/api/Photo;I)V
    .locals 7

    .line 34
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f0f00e0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 45
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 46
    iget-object p2, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-le p2, v2, :cond_2

    .line 48
    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 49
    iget-object p2, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    .line 51
    iget-object p2, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 52
    iget-object p2, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_3
    iget-object p2, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 58
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Empty url"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "src_big="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";src_xbig="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";src_xxbig="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";src_xxxbig="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_4
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    const p1, 0x7f0f03e2

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/perm/kate/PhotoSaver$1;

    invoke-direct {v0, p0, p2, v3}, Lcom/perm/kate/PhotoSaver$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 75
    :cond_6
    invoke-static {p0, p1, v3, v2}, Lcom/perm/kate/PhotoSaver;->copyImage(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V

    :goto_2
    return-void
.end method

.method public static savePhotos(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f0f00e0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    return-void

    .line 201
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f0f03e2

    goto :goto_0

    :cond_2
    const v1, 0x7f0f055a

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/PhotoSaver$2;

    invoke-direct {v2, p1, v0, p2, p0}, Lcom/perm/kate/PhotoSaver$2;-><init>(Ljava/util/ArrayList;Ljava/io/File;ILcom/perm/kate/PhotosActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static saveTempPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 3

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uploads/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 266
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "image_from_site.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/PhotoSaver$3;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/perm/kate/PhotoSaver$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
