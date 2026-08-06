.class public Lcom/perm/kate/MessageThreadBackground;
.super Ljava/lang/Object;
.source "MessageThreadBackground.java"


# direct methods
.method private static decode(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 44
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    .line 39
    .local v28, "t1":J
    const/4 v14, 0x0

    .line 40
    .local v14, "inputStream":Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 43
    .local v27, "sizeInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 44
    .local v15, "o":Landroid/graphics/BitmapFactory$Options;
    const/16 v36, 0x1

    move/from16 v0, v36

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    sget-object v36, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v27

    .line 46
    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 49
    sget-object v36, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v37, "window"

    invoke-virtual/range {v36 .. v37}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/view/WindowManager;

    .line 50
    .local v33, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v33 .. v33}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 54
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v22

    .local v22, "resample_width":I
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v17

    .line 58
    .local v17, "resample_height":I
    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v26

    .line 60
    .local v26, "screen_density":F
    const/high16 v36, 0x40000000    # 2.0f

    cmpl-float v36, v26, v36

    if-ltz v36, :cond_1

    .line 62
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    .line 66
    .local v24, "save_factor":D
    :goto_0
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v36, v36, v24

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v22, v0

    .line 67
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v36, v36, v24

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v17, v0

    .line 70
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .local v20, "original_width":D
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 71
    .local v18, "original_height":D
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v20, v36

    .line 72
    .local v34, "width_ratio":D
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v12, v18, v36

    .line 73
    .local v12, "height_ratio":D
    move-wide/from16 v0, v34

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 77
    .local v10, "factor":D
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    .local v16, "o2":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v23, v0

    .line 79
    .local v23, "scale":I
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 81
    sget-object v36, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 82
    sget-object v36, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual/range {v36 .. v36}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 83
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 84
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v36, v10, v36

    if-lez v36, :cond_0

    .line 91
    div-double v36, v18, v10

    move-wide/from16 v0, v36

    double-to-int v5, v0

    .line 92
    .local v5, "desired_height":I
    div-double v36, v20, v10

    move-wide/from16 v0, v36

    double-to-int v6, v0

    .line 93
    .local v6, "desired_width":I
    const/16 v36, 0x1

    :try_start_1
    move/from16 v0, v36

    invoke-static {v4, v6, v5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 120
    .end local v5    # "desired_height":I
    .end local v6    # "desired_width":I
    :cond_0
    :goto_1
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 123
    .local v30, "t2":J
    const-string v36, "Kate.MessageThreadBackground"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "duration="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v30, v28

    const-wide/32 v40, 0xf4240

    div-long v38, v38, v40

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ms"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "display":Landroid/view/Display;
    .end local v10    # "factor":D
    .end local v12    # "height_ratio":D
    .end local v15    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "resample_height":I
    .end local v18    # "original_height":D
    .end local v20    # "original_width":D
    .end local v22    # "resample_width":I
    .end local v23    # "scale":I
    .end local v24    # "save_factor":D
    .end local v26    # "screen_density":F
    .end local v33    # "wm":Landroid/view/WindowManager;
    .end local v34    # "width_ratio":D
    :goto_2
    return-object v4

    .line 65
    .end local v30    # "t2":J
    .restart local v7    # "display":Landroid/view/Display;
    .restart local v15    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v17    # "resample_height":I
    .restart local v22    # "resample_width":I
    .restart local v26    # "screen_density":F
    .restart local v33    # "wm":Landroid/view/WindowManager;
    :cond_1
    const-wide/high16 v24, 0x3ff8000000000000L    # 1.5

    .restart local v24    # "save_factor":D
    goto/16 :goto_0

    .line 94
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "desired_height":I
    .restart local v6    # "desired_width":I
    .restart local v10    # "factor":D
    .restart local v12    # "height_ratio":D
    .restart local v16    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "original_height":D
    .restart local v20    # "original_width":D
    .restart local v23    # "scale":I
    .restart local v34    # "width_ratio":D
    :catch_0
    move-exception v8

    .line 96
    .local v8, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 105
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "desired_height":I
    .end local v6    # "desired_width":I
    .end local v7    # "display":Landroid/view/Display;
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v10    # "factor":D
    .end local v12    # "height_ratio":D
    .end local v15    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "resample_height":I
    .end local v18    # "original_height":D
    .end local v20    # "original_width":D
    .end local v22    # "resample_width":I
    .end local v23    # "scale":I
    .end local v24    # "save_factor":D
    .end local v26    # "screen_density":F
    .end local v33    # "wm":Landroid/view/WindowManager;
    .end local v34    # "width_ratio":D
    :catch_1
    move-exception v8

    .line 106
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 107
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 108
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v36

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/perm/utils/MemoryCache;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 123
    .restart local v30    # "t2":J
    const-string v36, "Kate.MessageThreadBackground"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "duration="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v30, v28

    const-wide/32 v40, 0xf4240

    div-long v38, v38, v40

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ms"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v8    # "ex":Ljava/lang/OutOfMemoryError;
    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    .line 109
    .end local v30    # "t2":J
    :catch_2
    move-exception v8

    .line 112
    .local v8, "ex":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 123
    .restart local v30    # "t2":J
    const-string v36, "Kate.MessageThreadBackground"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "duration="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v30, v28

    const-wide/32 v40, 0xf4240

    div-long v38, v38, v40

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ms"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 113
    .end local v8    # "ex":Ljava/io/FileNotFoundException;
    .end local v30    # "t2":J
    :catch_3
    move-exception v32

    .line 114
    .local v32, "th":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    if-eqz p0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "info":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    const-string v37, "ErrnoException"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 118
    move-object/from16 v0, v32

    invoke-static {v0, v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    :cond_2
    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 123
    .restart local v30    # "t2":J
    const-string v36, "Kate.MessageThreadBackground"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "duration="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v30, v28

    const-wide/32 v40, 0xf4240

    div-long v38, v38, v40

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ms"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 115
    .end local v9    # "info":Ljava/lang/String;
    .end local v30    # "t2":J
    :cond_3
    :try_start_6
    const-string v9, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 120
    .end local v32    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v36

    invoke-static {v14}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 121
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 123
    .restart local v30    # "t2":J
    const-string v37, "Kate.MessageThreadBackground"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "duration="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sub-long v40, v30, v28

    const-wide/32 v42, 0xf4240

    div-long v40, v40, v42

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ms"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    throw v36
.end method

.method public static get(Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[message_thread_background]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v3, v2}, Lcom/perm/utils/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 30
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 24
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "[message_thread_background]"

    goto :goto_0

    .line 28
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/MessageThreadBackground;->decode(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v3, v2, v0}, Lcom/perm/utils/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v1, v0

    .line 30
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method static makeLocalCopy(Landroid/net/Uri;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 10
    .param p0, "data"    # Landroid/net/Uri;
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 135
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 137
    .local v0, "context":Landroid/content/Context;
    const-string v3, "message_bg"

    .line 138
    .local v3, "filename":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "message_bgs"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v2, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 147
    invoke-static {v4, v6}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 148
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 149
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 151
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    .line 157
    .end local p0    # "data":Landroid/net/Uri;
    invoke-static {v6}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 155
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :goto_0
    return-object p0

    .line 152
    .restart local p0    # "data":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 153
    .local v7, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    invoke-static {v5}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 157
    .end local v7    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v5}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v4}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v8

    .line 157
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 152
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method
