.class public abstract Lcom/dynamixsoftware/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static readFileToBytes(Ljava/io/File;)[B
    .locals 8

    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    .line 18
    new-array v3, p0, [B

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    sub-int v5, p0, v4

    .line 21
    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    add-int/2addr v4, v5

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3
.end method

.method static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 28
    invoke-static {p0}, Lcom/dynamixsoftware/Utils;->readFileToBytes(Ljava/io/File;)[B

    move-result-object p0

    .line 29
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/dynamixsoftware/StaticVariables;->FILE_ENCODING:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static saveToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 33
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/dynamixsoftware/StaticVariables;->FILE_ENCODING:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method
