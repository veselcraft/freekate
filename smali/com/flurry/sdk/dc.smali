.class public Lcom/flurry/sdk/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "dc"


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 29
    iput-wide v1, p0, Lcom/flurry/sdk/dc;->b:J

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/flurry/sdk/dc;->c:I

    .line 32
    iput-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".flurrydatasenderblock."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 29
    iput-wide v1, p0, Lcom/flurry/sdk/dc;->b:J

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/flurry/sdk/dc;->c:I

    .line 32
    iput-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    .line 41
    iput-object p1, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurrydatasenderblock."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a([B)Z
    .locals 7

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v1, :cond_0

    .line 59
    sget-object v0, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v1, "setData(byte[]) running on the MAIN thread!"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    .line 64
    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing FlurryDataSenderBlockInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-static {v3}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 93
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    return v1

    .line 74
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    array-length v0, p1

    .line 82
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 85
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x1

    .line 87
    iput v0, p0, Lcom/flurry/sdk/dc;->c:I

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/flurry/sdk/dc;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-static {v4}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 91
    :goto_0
    :try_start_3
    sget-object v3, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 93
    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_1
    return v1

    :catchall_2
    move-exception p1

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public b()[B
    .locals 7

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v1, "getData() running on the MAIN thread!"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading FlurryDataSenderBlockInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 131
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    return-object v3

    .line 121
    :cond_1
    :try_start_2
    new-array v3, v0, [B

    .line 122
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 124
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v3

    .line 129
    :goto_0
    :try_start_3
    sget-object v4, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v5, "Error when loading persistent file"

    invoke-static {v2, v4, v5, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    .line 134
    :cond_2
    sget-object v0, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "Agent cache file doesn\'t exist."

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method

.method public c()Z
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 156
    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "Deleted persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 157
    iput-wide v0, p0, Lcom/flurry/sdk/dc;->b:J

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/flurry/sdk/dc;->c:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x6

    .line 162
    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "Cannot delete persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
