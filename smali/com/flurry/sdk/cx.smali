.class public final Lcom/flurry/sdk/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/flurry/sdk/cx;->a:I

    .line 22
    iput-wide p2, p0, Lcom/flurry/sdk/cx;->b:J

    .line 23
    iput-object p4, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/flurry/sdk/cx;->d:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/flurry/sdk/cx;->e:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/flurry/sdk/cx;->b()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public b()[B
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    iget v1, p0, Lcom/flurry/sdk/cx;->a:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    iget-wide v4, p0, Lcom/flurry/sdk/cx;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 46
    iget-object v1, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/flurry/sdk/cx;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/flurry/sdk/cx;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    const-string v4, "uncaught"

    const/4 v5, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x3

    .line 56
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "line.separator"

    .line 64
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v5, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 68
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Caused by: "

    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v5, p0, Lcom/flurry/sdk/cx;->f:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 78
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 85
    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    .line 91
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 93
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 95
    :goto_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_0
    move-object v1, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    :goto_4
    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_5
    return-object v0

    :goto_6
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/flurry/sdk/cx;->c:Ljava/lang/String;

    return-object v0
.end method
