.class public Lcom/perm/utils/MultipartMessage;
.super Ljava/lang/Object;
.source "MultipartMessage.java"


# static fields
.field private static boundary:Ljava/lang/String;


# instance fields
.field os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "---------------------------gc0p4Jq0M2Yt08jU534c0p"

    sput-object v0, Lcom/perm/utils/MultipartMessage;->boundary:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    .line 18
    return-void
.end method

.method private boundary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/perm/utils/MultipartMessage;->boundary:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/perm/utils/MultipartMessage;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method private guessContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "f":Ljava/lang/String;
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const-string v1, "image/jpeg"

    .line 115
    :goto_0
    return-object v1

    .line 105
    :cond_1
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "image/png"

    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string v1, "image/gif"

    goto :goto_0

    .line 109
    :cond_3
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    const-string v1, "video/3gp"

    goto :goto_0

    .line 111
    :cond_4
    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    const-string v1, "audio/mpeg"

    goto :goto_0

    .line 113
    :cond_5
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    const-string v1, "video/mp4"

    goto :goto_0

    .line 115
    :cond_6
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method private static pipe(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const v3, 0xc350

    new-array v0, v3, [B

    .line 68
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 69
    .local v2, "total":I
    monitor-enter p0

    .line 70
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "nread":I
    if-ltz v1, :cond_1

    .line 71
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    if-eqz p2, :cond_0

    .line 73
    int-to-long v4, v2

    invoke-interface {p2, v4, v5}, Lcom/perm/utils/UploadProgressListener;->publishProgress(J)V

    .line 74
    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    .line 76
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 78
    const/4 v0, 0x0

    .line 79
    return-void

    .line 76
    .end local v1    # "nread":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private writeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    .line 51
    const-string v0, "Content-Disposition: form-data; name=\""

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(C)V

    .line 54
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/perm/utils/MultipartMessage;->boundary()V

    .line 130
    const-string v0, "--"

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->writeln(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected newline()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/perm/utils/MultipartMessage;->boundary()V

    .line 84
    invoke-direct {p0, p1}, Lcom/perm/utils/MultipartMessage;->writeName(Ljava/lang/String;)V

    .line 85
    const-string v1, "; filename=\""

    invoke-virtual {p0, v1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 87
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/perm/utils/MultipartMessage;->write(C)V

    .line 88
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    .line 89
    const-string v1, "Content-Type: "

    invoke-virtual {p0, v1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p2}, Lcom/perm/utils/MultipartMessage;->guessContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->writeln(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    .line 96
    iget-object v1, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    invoke-static {p3, v1, p4}, Lcom/perm/utils/MultipartMessage;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    .line 98
    return-void
.end method

.method protected write(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 22
    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    return-void
.end method

.method protected writeln(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    .line 35
    return-void
.end method
