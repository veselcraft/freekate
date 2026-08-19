.class public abstract Lcom/perm/kate/AppBackground;
.super Ljava/lang/Object;
.source "AppBackground.java"


# direct methods
.method private static decode(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, " ms"

    const-string v3, "duration="

    const-string v4, "Kate.AppBackground"

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const/4 v9, 0x0

    .line 59
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    .line 60
    iput-boolean v10, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    sget-object v11, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    :try_start_1
    invoke-static {v11, v9, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 65
    sget-object v12, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 66
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 70
    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 75
    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v14
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    :goto_0
    if-eqz p1, :cond_1

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v14, v14, v16

    :cond_1
    int-to-double v7, v13

    .line 86
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v14

    double-to-int v7, v7

    int-to-double v12, v12

    .line 87
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    double-to-int v8, v12

    .line 90
    :try_start_2
    iget v12, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v12, v12

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    int-to-double v14, v0

    int-to-double v9, v7

    .line 91
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v12, v9

    int-to-double v7, v8

    .line 92
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v14, v7

    .line 93
    :try_start_3
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 97
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 99
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 103
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v10, p0

    invoke-virtual {v1, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v10, 0x0

    .line 105
    :try_start_4
    invoke-static {v1, v10, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 106
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v7, v18

    if-lez v10, :cond_3

    .line 113
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v7

    double-to-int v10, v14

    .line 114
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v7

    double-to-int v7, v12

    const/4 v0, 0x1

    .line 115
    :try_start_5
    invoke-static {v9, v7, v10, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 118
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 142
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 145
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

    return-object v9

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    goto :goto_6

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 136
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p0, :cond_4

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const-string v7, ""

    .line 139
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ErrnoException"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 140
    invoke-static {v0, v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 142
    :cond_5
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 134
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 142
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 128
    :goto_6
    :try_start_9
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 130
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 142
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :goto_7
    return-object v1

    :catchall_4
    move-exception v0

    .line 142
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 143
    invoke-static {v11}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 145
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

    .line 146
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static fastblur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 36

    move/from16 v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v12, v10, v11

    .line 225
    new-array v13, v12, [I

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pix"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v13

    move v5, v10

    move v8, v10

    move v9, v11

    .line 227
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v3, v11, -0x1

    add-int v4, v0, v0

    add-int/2addr v4, v1

    .line 234
    new-array v5, v12, [I

    .line 235
    new-array v6, v12, [I

    .line 236
    new-array v7, v12, [I

    .line 238
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v8, v8, [I

    add-int/lit8 v9, v4, 0x1

    shr-int/2addr v9, v1

    mul-int v9, v9, v9

    mul-int/lit16 v12, v9, 0x100

    .line 242
    new-array v14, v12, [I

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_1

    .line 244
    div-int v16, v15, v9

    aput v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x3

    const/4 v12, 0x2

    new-array v15, v12, [I

    aput v9, v15, v1

    const/4 v9, 0x0

    aput v4, v15, v9

    .line 249
    const-class v9, I

    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    add-int/lit8 v15, v0, 0x1

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    neg-int v1, v0

    move/from16 v28, v11

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v11, v1

    const/4 v1, 0x0

    :goto_2
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v11, v0, :cond_3

    move/from16 v31, v3

    move-object/from16 v32, v8

    const/4 v3, 0x0

    .line 261
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v8, v17, v8

    aget v8, v13, v8

    add-int v33, v11, v0

    .line 262
    aget-object v33, v9, v33

    and-int v30, v8, v30

    shr-int/lit8 v30, v30, 0x10

    .line 263
    aput v30, v33, v3

    and-int v29, v8, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v19, 0x1

    .line 264
    aput v29, v33, v19

    and-int/lit16 v8, v8, 0xff

    const/16 v16, 0x2

    .line 265
    aput v8, v33, v16

    .line 266
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v8, v15, v8

    .line 267
    aget v29, v33, v3

    mul-int v29, v29, v8

    add-int v1, v1, v29

    .line 268
    aget v29, v33, v19

    mul-int v29, v29, v8

    add-int v20, v20, v29

    .line 269
    aget v29, v33, v16

    mul-int v29, v29, v8

    add-int v21, v21, v29

    if-lez v11, :cond_2

    .line 271
    aget v8, v33, v3

    add-int v25, v25, v8

    .line 272
    aget v8, v33, v19

    add-int v26, v26, v8

    .line 273
    aget v8, v33, v16

    add-int v27, v27, v8

    goto :goto_3

    .line 275
    :cond_2
    aget v8, v33, v3

    add-int v22, v22, v8

    .line 276
    aget v3, v33, v19

    add-int v23, v23, v3

    .line 277
    aget v3, v33, v16

    add-int v24, v24, v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v31

    move-object/from16 v8, v32

    goto :goto_2

    :cond_3
    move/from16 v31, v3

    move-object/from16 v32, v8

    move v8, v0

    move v3, v1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_5

    .line 284
    aget v11, v14, v3

    aput v11, v5, v17

    .line 285
    aget v11, v14, v20

    aput v11, v6, v17

    .line 286
    aget v11, v14, v21

    aput v11, v7, v17

    sub-int v3, v3, v22

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v11, v8, v0

    add-int/2addr v11, v4

    .line 293
    rem-int/2addr v11, v4

    aget-object v11, v9, v11

    const/16 v33, 0x0

    .line 295
    aget v34, v11, v33

    sub-int v22, v22, v34

    const/16 v19, 0x1

    .line 296
    aget v33, v11, v19

    sub-int v23, v23, v33

    const/16 v16, 0x2

    .line 297
    aget v33, v11, v16

    sub-int v24, v24, v33

    if-nez v12, :cond_4

    add-int v33, v1, v0

    move-object/from16 v34, v14

    add-int/lit8 v14, v33, 0x1

    .line 300
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v32, v1

    goto :goto_5

    :cond_4
    move-object/from16 v34, v14

    .line 302
    :goto_5
    aget v14, v32, v1

    add-int v14, v18, v14

    aget v14, v13, v14

    and-int v33, v14, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    .line 304
    aput v33, v11, v35

    and-int v33, v14, v29

    shr-int/lit8 v33, v33, 0x8

    const/16 v19, 0x1

    .line 305
    aput v33, v11, v19

    and-int/lit16 v14, v14, 0xff

    const/16 v16, 0x2

    .line 306
    aput v14, v11, v16

    .line 308
    aget v14, v11, v35

    add-int v25, v25, v14

    .line 309
    aget v14, v11, v19

    add-int v26, v26, v14

    .line 310
    aget v11, v11, v16

    add-int v27, v27, v11

    add-int v3, v3, v25

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int/lit8 v8, v8, 0x1

    .line 316
    rem-int/2addr v8, v4

    .line 317
    rem-int v11, v8, v4

    aget-object v11, v9, v11

    const/4 v14, 0x0

    .line 319
    aget v33, v11, v14

    add-int v22, v22, v33

    const/16 v19, 0x1

    .line 320
    aget v33, v11, v19

    add-int v23, v23, v33

    const/16 v16, 0x2

    .line 321
    aget v33, v11, v16

    add-int v24, v24, v33

    .line 323
    aget v33, v11, v14

    sub-int v25, v25, v33

    .line 324
    aget v14, v11, v19

    sub-int v26, v26, v14

    .line 325
    aget v11, v11, v16

    sub-int v27, v27, v11

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v34

    goto/16 :goto_4

    :cond_5
    move-object/from16 v34, v14

    add-int v18, v18, v10

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v28

    move/from16 v3, v31

    move-object/from16 v8, v32

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_6
    move/from16 v31, v3

    move-object/from16 v32, v8

    move/from16 v28, v11

    move-object/from16 v34, v14

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v10, :cond_c

    neg-int v2, v0

    mul-int v3, v2, v10

    move/from16 v21, v4

    move-object/from16 v22, v13

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move v4, v2

    move v13, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-gt v4, v0, :cond_9

    move/from16 v23, v10

    const/4 v10, 0x0

    .line 335
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v1

    add-int v25, v4, v0

    .line 337
    aget-object v25, v9, v25

    .line 339
    aget v26, v5, v24

    aput v26, v25, v10

    .line 340
    aget v10, v6, v24

    const/16 v19, 0x1

    aput v10, v25, v19

    .line 341
    aget v10, v7, v24

    const/16 v16, 0x2

    aput v10, v25, v16

    .line 343
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v15, v10

    .line 345
    aget v26, v5, v24

    mul-int v26, v26, v10

    add-int v2, v2, v26

    .line 346
    aget v26, v6, v24

    mul-int v26, v26, v10

    add-int v3, v3, v26

    .line 347
    aget v24, v7, v24

    mul-int v24, v24, v10

    add-int v8, v8, v24

    if-lez v4, :cond_7

    const/4 v10, 0x0

    .line 350
    aget v24, v25, v10

    add-int v17, v17, v24

    const/16 v19, 0x1

    .line 351
    aget v24, v25, v19

    add-int v18, v18, v24

    const/16 v16, 0x2

    .line 352
    aget v24, v25, v16

    add-int v20, v20, v24

    goto :goto_8

    :cond_7
    const/4 v10, 0x0

    const/16 v16, 0x2

    const/16 v19, 0x1

    .line 354
    aget v24, v25, v10

    add-int v11, v11, v24

    .line 355
    aget v10, v25, v19

    add-int/2addr v12, v10

    .line 356
    aget v10, v25, v16

    add-int/2addr v14, v10

    :goto_8
    move/from16 v10, v31

    if-ge v4, v10, :cond_8

    add-int v13, v13, v23

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v31, v10

    move/from16 v10, v23

    goto :goto_7

    :cond_9
    move/from16 v23, v10

    move/from16 v10, v31

    move/from16 v25, v0

    move/from16 v24, v1

    move/from16 v13, v28

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v13, :cond_b

    const/high16 v26, -0x1000000

    .line 367
    aget v27, v22, v24

    and-int v26, v27, v26

    aget v27, v34, v2

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v34, v3

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v34, v8

    or-int v26, v26, v27

    aput v26, v22, v24

    sub-int/2addr v2, v11

    sub-int/2addr v3, v12

    sub-int/2addr v8, v14

    sub-int v26, v25, v0

    add-int v26, v26, v21

    .line 374
    rem-int v26, v26, v21

    aget-object v26, v9, v26

    const/16 v27, 0x0

    .line 376
    aget v28, v26, v27

    sub-int v11, v11, v28

    const/16 v19, 0x1

    .line 377
    aget v27, v26, v19

    sub-int v12, v12, v27

    const/16 v16, 0x2

    .line 378
    aget v27, v26, v16

    sub-int v14, v14, v27

    if-nez v1, :cond_a

    add-int v0, v4, v15

    .line 381
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v23

    aput v0, v32, v4

    .line 383
    :cond_a
    aget v0, v32, v4

    add-int/2addr v0, v1

    .line 385
    aget v27, v5, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    .line 386
    aget v27, v6, v0

    const/16 v19, 0x1

    aput v27, v26, v19

    .line 387
    aget v0, v7, v0

    const/16 v16, 0x2

    aput v0, v26, v16

    .line 389
    aget v0, v26, v28

    add-int v17, v17, v0

    .line 390
    aget v0, v26, v19

    add-int v18, v18, v0

    .line 391
    aget v0, v26, v16

    add-int v20, v20, v0

    add-int v2, v2, v17

    add-int v3, v3, v18

    add-int v8, v8, v20

    add-int/lit8 v25, v25, 0x1

    .line 397
    rem-int v25, v25, v21

    .line 398
    aget-object v0, v9, v25

    const/16 v26, 0x0

    .line 400
    aget v27, v0, v26

    add-int v11, v11, v27

    const/16 v19, 0x1

    .line 401
    aget v27, v0, v19

    add-int v12, v12, v27

    const/16 v16, 0x2

    .line 402
    aget v27, v0, v16

    add-int v14, v14, v27

    .line 404
    aget v27, v0, v26

    sub-int v17, v17, v27

    .line 405
    aget v27, v0, v19

    sub-int v18, v18, v27

    .line 406
    aget v0, v0, v16

    sub-int v20, v20, v0

    add-int v24, v24, v23

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p2

    goto/16 :goto_9

    :cond_b
    const/16 v16, 0x2

    const/16 v19, 0x1

    const/16 v26, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p2

    move/from16 v31, v10

    move/from16 v28, v13

    move/from16 v4, v21

    move-object/from16 v13, v22

    move/from16 v10, v23

    goto/16 :goto_6

    :cond_c
    move/from16 v23, v10

    move-object/from16 v22, v13

    move/from16 v13, v28

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v4, v23

    move/from16 v7, v23

    move v8, v13

    .line 413
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method

.method public static get(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4

    .line 27
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    const-string v1, "[app_background]"

    invoke-virtual {v0, v1}, Lcom/perm/utils/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 31
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "background_blur"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    invoke-static {p0, v0}, Lcom/perm/kate/AppBackground;->decode(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x5

    .line 39
    :try_start_0
    invoke-static {p0, v0, v2}, Lcom/perm/kate/AppBackground;->fastblur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0, v1, p0}, Lcom/perm/utils/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method static makeLocalCopy(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x0

    .line 157
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "app_bg"

    .line 161
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "message_bgs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 163
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 167
    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 169
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 171
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 173
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_2
    move-exception p0

    .line 177
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 179
    throw p0
.end method
