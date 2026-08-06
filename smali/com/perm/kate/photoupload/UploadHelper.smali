.class public Lcom/perm/kate/photoupload/UploadHelper;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# direct methods
.method private static checkWebp(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 102
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 103
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 104
    const/16 v3, 0x8

    aget-byte v3, v0, v3

    const/16 v4, 0x57

    if-ne v3, v4, :cond_0

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    const/16 v4, 0x45

    if-ne v3, v4, :cond_0

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_0

    const/16 v3, 0xb

    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    .line 105
    const/4 v3, 0x1

    .line 110
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 112
    .end local v0    # "buffer":[B
    :goto_0
    return v3

    .line 110
    .restart local v0    # "buffer":[B
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 112
    .end local v0    # "buffer":[B
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static getResizeSize(I)I
    .locals 2
    .param p0, "resize_option"    # I

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incorrect resize_option value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_0
    const/16 v0, 0x500

    .line 120
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x258

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static resampleImage(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resize_option"    # I

    .prologue
    .line 19
    invoke-static/range {p0 .. p1}, Lcom/perm/kate/photoupload/UploadHelper;->checkWebp(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    .line 20
    .local v11, "is_webp":Z
    const-string v22, "Kate.UploadHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "is_webp="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-eqz v11, :cond_0

    if-nez p2, :cond_0

    .line 24
    const/16 p2, 0x1

    .line 26
    :cond_0
    if-nez p2, :cond_1

    move-object/from16 v21, p1

    .line 95
    .end local p1    # "uri":Landroid/net/Uri;
    .local v21, "uri":Landroid/net/Uri;
    :goto_0
    return-object v21

    .line 28
    .end local v21    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v9, 0x0

    .line 29
    .local v9, "inputStream1":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 31
    .local v10, "inputStream2":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 34
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .local v12, "o":Landroid/graphics/BitmapFactory$Options;
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v9, v0, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 38
    const-string v22, "Kate.UploadHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "size="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .local v16, "original_width":D
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v14, v0

    .line 42
    .local v14, "original_height":D
    invoke-static/range {p2 .. p2}, Lcom/perm/kate/photoupload/UploadHelper;->getResizeSize(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 45
    .local v18, "resample_size":I
    if-nez v11, :cond_2

    .line 46
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpg-double v22, v16, v22

    if-gtz v22, :cond_2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpg-double v22, v14, v22

    if-gtz v22, :cond_2

    .line 91
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v21, p1

    .line 48
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v21    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 50
    .end local v21    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v6, v22, v24

    .line 51
    .local v6, "factor":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v19, v0

    .line 53
    .local v19, "scale":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 54
    const/16 v19, 0x1

    .line 57
    :cond_3
    const/16 v22, 0x320

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 58
    add-int/lit8 v19, v19, -0x1

    .line 60
    :cond_4
    const-string v22, "Kate.UploadHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "factor="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " scale="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 64
    .local v13, "o2":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 66
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v10, v0, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 67
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 68
    const-string v22, "Kate.UploadHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "after scale width="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " height="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v6, v22

    if-lez v22, :cond_5

    .line 73
    div-double v22, v14, v6

    move-wide/from16 v0, v22

    double-to-int v3, v0

    .line 74
    .local v3, "desired_height":I
    div-double v22, v16, v6

    move-wide/from16 v0, v22

    double-to-int v4, v0

    .line 75
    .local v4, "desired_width":I
    const/16 v22, 0x1

    :try_start_2
    move/from16 v0, v22

    invoke-static {v2, v4, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 81
    .end local v3    # "desired_height":I
    .end local v4    # "desired_width":I
    :cond_5
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getTempFile()Ljava/io/File;

    move-result-object v5

    .line 82
    .local v5, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v8, "fos":Ljava/io/FileOutputStream;
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x5a

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 84
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 85
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p1

    .line 91
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "factor":D
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "original_height":D
    .end local v16    # "original_width":D
    .end local v18    # "resample_size":I
    .end local v19    # "scale":I
    :goto_2
    move-object/from16 v21, p1

    .line 95
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v21    # "uri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 86
    .end local v21    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v20

    .line 88
    .local v20, "th":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    invoke-static/range {v20 .. v20}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 91
    .end local v20    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v22

    invoke-static {v9}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v10}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v22

    .line 76
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "desired_height":I
    .restart local v4    # "desired_width":I
    .restart local v6    # "factor":D
    .restart local v12    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "o2":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "original_height":D
    .restart local v16    # "original_width":D
    .restart local v18    # "resample_size":I
    .restart local v19    # "scale":I
    :catch_1
    move-exception v22

    goto :goto_1
.end method
