.class public Lcom/dynamixsoftware/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static readFileToBytes(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 17
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 18
    .local v2, "length":J
    long-to-int v6, v2

    new-array v0, v6, [B

    .line 19
    .local v0, "bytes":[B
    const/4 v5, 0x0

    .line 20
    .local v5, "offset":I
    const/4 v4, 0x0

    .line 21
    .local v4, "numRead":I
    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    array-length v6, v0

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_1

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 24
    return-object v0

    .line 22
    :cond_1
    add-int/2addr v5, v4

    goto :goto_0
.end method

.method static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/dynamixsoftware/Utils;->readFileToBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 29
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/dynamixsoftware/StaticVariables;->FILE_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method static saveToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 34
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/dynamixsoftware/StaticVariables;->FILE_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 33
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    .local v0, "bos":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 38
    return-void
.end method
