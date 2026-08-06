.class Lcom/perm/ads/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/perm/ads/Helper;->scale:F

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v3, "r":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 41
    .local v4, "sw":Ljava/io/StringWriter;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 43
    .local v0, "buffer":[C
    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "n":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :goto_1
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 44
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    .line 48
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 52
    :goto_2
    throw v5

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 49
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "n":I
    :catch_1
    move-exception v1

    .line 50
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDIP(I)I
    .locals 2
    .param p0, "p"    # I

    .prologue
    .line 15
    invoke-static {}, Lcom/perm/ads/Helper;->initScale()V

    .line 16
    sget v0, Lcom/perm/ads/Helper;->scale:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getScale()F
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/perm/ads/Helper;->initScale()V

    .line 26
    sget v0, Lcom/perm/ads/Helper;->scale:F

    return v0
.end method

.method private static initScale()V
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/perm/ads/Helper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/perm/ads/Helper;->scale:F

    .line 22
    :cond_0
    return-void
.end method
