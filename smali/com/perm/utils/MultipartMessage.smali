.class public Lcom/perm/utils/MultipartMessage;
.super Ljava/lang/Object;
.source "MultipartMessage.java"


# static fields
.field private static boundary:Ljava/lang/String; = "---------------------------gc0p4Jq0M2Yt08jU534c0p"


# instance fields
.field os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    return-void
.end method

.method private boundary()V
    .locals 1

    const-string v0, "--"

    .line 45
    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/perm/utils/MultipartMessage;->boundary:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/perm/utils/MultipartMessage;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method private guessContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jpg"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "png"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "image/png"

    return-object p1

    :cond_1
    const-string v0, "gif"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "image/gif"

    return-object p1

    :cond_2
    const-string v0, "3gp"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "video/3gp"

    return-object p1

    :cond_3
    const-string v0, "mp3"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "audio/mpeg"

    return-object p1

    :cond_4
    const-string v0, "mp4"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "video/mp4"

    return-object p1

    :cond_5
    const-string p1, "application/octet-stream"

    return-object p1

    :cond_6
    :goto_0
    const-string p1, "image/jpeg"

    return-object p1
.end method

.method private static pipe(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 7

    const v0, 0xc350

    new-array v1, v0, [B

    .line 69
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 70
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 71
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p2, :cond_0

    int-to-long v5, v3

    .line 73
    invoke-interface {p2, v5, v6}, Lcom/perm/utils/UploadProgressListener;->publishProgress(J)V

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    .line 76
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private writeName(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    const-string v0, "Content-Disposition: form-data; name=\""

    .line 51
    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 53
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(C)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/perm/utils/MultipartMessage;->boundary()V

    const-string v0, "--"

    .line 130
    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->writeln(Ljava/lang/String;)V

    return-void
.end method

.method protected newline()V
    .locals 1

    const-string v0, "\r\n"

    .line 29
    invoke-virtual {p0, v0}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/perm/utils/MultipartMessage;->boundary()V

    .line 84
    invoke-direct {p0, p1}, Lcom/perm/utils/MultipartMessage;->writeName(Ljava/lang/String;)V

    const-string p1, "; filename=\""

    .line 85
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 87
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(C)V

    .line 88
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    const-string p1, "Content-Type: "

    .line 89
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p2}, Lcom/perm/utils/MultipartMessage;->guessContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->writeln(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    .line 96
    iget-object p1, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    invoke-static {p3, p1, p4}, Lcom/perm/utils/MultipartMessage;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    return-void
.end method

.method protected write(C)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/perm/utils/MultipartMessage;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected writeln(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/utils/MultipartMessage;->write(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/perm/utils/MultipartMessage;->newline()V

    return-void
.end method
