.class public Lcom/perm/kate/PhotoSaver;
.super Ljava/lang/Object;
.source "PhotoSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;,
        Lcom/perm/kate/PhotoSaver$MyMediaScannerClient2;,
        Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;
    }
.end annotation


# direct methods
.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;

    .prologue
    .line 25
    invoke-static {p0, p1, p2, p3, p4}, Lcom/perm/kate/PhotoSaver;->downloadImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/perm/kate/PhotoSaver;->copyImage(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method private static copyImage(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V
    .locals 10
    .param p0, "application_context"    # Landroid/content/Context;
    .param p1, "cache_file"    # Ljava/io/File;
    .param p2, "destination_file"    # Ljava/io/File;
    .param p3, "media_scan"    # Z

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 130
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 133
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 134
    .local v4, "len1":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 143
    .end local v0    # "buffer":[B
    .end local v4    # "len1":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 144
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    if-eqz p3, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :cond_0
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v6}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 136
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len1":I
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 137
    if-eqz p3, :cond_2

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f070370

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "messages":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 141
    new-instance v8, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    .end local v5    # "messages":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v7}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 150
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 148
    .end local v0    # "buffer":[B
    .end local v4    # "len1":I
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 149
    invoke-static {v6}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v8

    .line 148
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 143
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static downloadImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 11
    .param p0, "application_context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/io/File;
    .param p3, "media_scan"    # Z
    .param p4, "callback"    # Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;

    .prologue
    .line 91
    const/4 v6, 0x0

    .line 92
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 94
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v8, "PhotoSaver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "imageUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 97
    const/16 v8, 0x7530

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    const/16 v8, 0x7530

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    invoke-static {v1}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 102
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-direct {v4, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 103
    .local v4, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v6    # "os":Ljava/io/OutputStream;
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v4, v7}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 105
    if-eqz p3, :cond_0

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f070370

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "messages":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/perm/kate/PhotoSaver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    new-instance v8, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    .end local v5    # "messages":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    .line 112
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {p4, v8}, Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;->completed(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :cond_1
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_2
    invoke-static {v7}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v6, v7

    .line 124
    .end local v3    # "imageUrl":Ljava/net/URL;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz p3, :cond_3

    .line 115
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/perm/kate/PhotoSaver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    :cond_3
    if-eqz p4, :cond_4

    .line 117
    invoke-interface {p4}, Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;->error()V

    .line 118
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_5
    invoke-static {v6}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v1, :cond_6

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    :cond_6
    invoke-static {v6}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v8

    .line 120
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v3    # "imageUrl":Ljava/net/URL;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 113
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/KatePhotos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 77
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "photo_save_dir"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "dir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 83
    :cond_1
    return-object v1
.end method

.method public static savePhoto(Landroid/content/Context;Lcom/perm/kate/api/Photo;I)V
    .locals 13
    .param p0, "application_context"    # Landroid/content/Context;
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;
    .param p2, "photo_size"    # I

    .prologue
    const/4 v12, 0x1

    .line 31
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v1

    .line 32
    .local v1, "destination_dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0700a4

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 74
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "destination_filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v2, "destination_file":Ljava/io/File;
    const/4 v4, 0x0

    .line 42
    .local v4, "need_download":Z
    const/4 v6, 0x3

    if-ne p2, v6, :cond_1

    iget-object v6, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 43
    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    .line 44
    .local v5, "url":Ljava/lang/String;
    const/4 v4, 0x1

    .line 55
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 56
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Empty url"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "src_big="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";src_xbig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";src_xxbig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";src_xxxbig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    if-le p2, v12, :cond_2

    iget-object v6, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 46
    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 47
    .restart local v5    # "url":Ljava/lang/String;
    const/4 v4, 0x1

    goto :goto_1

    .line 48
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    if-lez p2, :cond_3

    iget-object v6, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 49
    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 50
    .restart local v5    # "url":Ljava/lang/String;
    const/4 v4, 0x1

    goto :goto_1

    .line 53
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    iget-object v5, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 59
    :cond_4
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "cache_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 61
    const/4 v4, 0x1

    .line 62
    :cond_5
    if-eqz v4, :cond_6

    .line 63
    const v6, 0x7f070379

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 64
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/perm/kate/PhotoSaver$1;

    invoke-direct {v7, p0, v5, v2}, Lcom/perm/kate/PhotoSaver$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 72
    :cond_6
    invoke-static {p0, v0, v2, v12}, Lcom/perm/kate/PhotoSaver;->copyImage(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Z)V

    goto/16 :goto_0
.end method

.method public static savePhotos(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V
    .locals 4
    .param p0, "activity"    # Lcom/perm/kate/PhotosActivity;
    .param p2, "photo_size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/PhotosActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v0

    .line 185
    .local v0, "destination_dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700a4

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "message":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Lcom/perm/kate/PhotosActivity;->displayToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const v2, 0x7f070379

    :goto_1
    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "message":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 193
    invoke-virtual {p0, v1}, Lcom/perm/kate/PhotosActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 194
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/perm/kate/PhotoSaver$2;

    invoke-direct {v3, p1, v0, p2, p0}, Lcom/perm/kate/PhotoSaver$2;-><init>(Ljava/util/ArrayList;Ljava/io/File;ILcom/perm/kate/PhotosActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 191
    .end local v1    # "message":Ljava/lang/String;
    :cond_4
    const v2, 0x7f0704d5

    goto :goto_1
.end method

.method public static saveTempPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photo_url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;

    .prologue
    .line 256
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".Kate/uploads/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v0, "destination_dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "image_from_site.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    .local v1, "destination_file":Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/perm/kate/PhotoSaver$3;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/perm/kate/PhotoSaver$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "application_context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method
