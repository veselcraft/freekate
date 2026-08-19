.class public abstract Lcom/perm/kate/MessageThreadBackground;
.super Ljava/lang/Object;
.source "MessageThreadBackground.java"


# direct methods
.method private static decode(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, " ms"

    const-string v3, "duration="

    const-string v4, "Kate.MessageThreadBackg"

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v9, 0x0

    .line 43
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    .line 44
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    sget-object v11, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 46
    :try_start_1
    invoke-static {v11, v9, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 49
    sget-object v12, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 50
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 54
    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 58
    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v14
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    :goto_0
    int-to-double v7, v13

    .line 66
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v14

    double-to-int v7, v7

    int-to-double v12, v12

    .line 67
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    double-to-int v8, v12

    .line 70
    :try_start_2
    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v12, v12

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    int-to-double v14, v0

    move-object/from16 v16, v11

    int-to-double v10, v7

    .line 71
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v12, v10

    int-to-double v7, v8

    .line 72
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v14, v7

    .line 73
    :try_start_3
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 77
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 78
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 79
    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 81
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 82
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, p0

    :try_start_5
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 83
    :try_start_6
    invoke-static {v11, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 84
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v7, v17

    if-lez v0, :cond_1

    .line 91
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v7

    double-to-int v0, v14

    .line 92
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v7

    double-to-int v7, v12

    const/4 v8, 0x1

    .line 93
    :try_start_7
    invoke-static {v10, v7, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 96
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 120
    :cond_1
    :goto_1
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v16, v11

    :goto_2
    move-object v11, v9

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v16, v11

    :goto_3
    move-object v11, v9

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v16, v11

    :goto_4
    move-object v11, v9

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v11, v9

    move-object/from16 v16, v11

    .line 114
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_2
    const-string v1, ""

    .line 117
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ErrnoException"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 118
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 120
    :cond_3
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v11, v9

    move-object/from16 v16, v11

    .line 112
    :goto_7
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 120
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v11, v9

    move-object/from16 v16, v11

    .line 106
    :goto_9
    :try_start_b
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 108
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 120
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :goto_a
    return-object v9

    :catchall_6
    move-exception v0

    .line 120
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public static get(Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "[message_thread_background]"

    if-eqz p1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {p1, v0}, Lcom/perm/utils/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 28
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/MessageThreadBackground;->decode(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 29
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {p1, v0, p0}, Lcom/perm/utils/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method static makeLocalCopy(Landroid/net/Uri;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    .line 135
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "message_bg"

    if-eqz p1, :cond_0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_bgs"

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 143
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 147
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 148
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 151
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 153
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 157
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_2
    move-exception p0

    .line 157
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 159
    throw p0
.end method
