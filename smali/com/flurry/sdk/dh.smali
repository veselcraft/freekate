.class public Lcom/flurry/sdk/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "dh"


# instance fields
.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/flurry/sdk/dh;->d:J

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2a

    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/io/DataInputStream;)Z
    .locals 10

    .line 113
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 115
    sget-object v1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    const/4 v4, 0x0

    if-lt v0, v2, :cond_2

    .line 123
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading API key: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 130
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    .line 131
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    const-string p1, "Loading session reports"

    .line 133
    invoke-static {v3, v1, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object p1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string p2, "Persistent file loaded"

    invoke-static {v3, p1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v6}, Lcom/flurry/sdk/dh;->a(Z)V

    .line 154
    invoke-virtual {p0, v7, v8}, Lcom/flurry/sdk/dh;->a(J)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/dh;->a(Ljava/util/List;)V

    const/4 v4, 0x1

    goto :goto_1

    .line 142
    :cond_0
    new-array v0, v0, [B

    .line 143
    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 144
    new-instance v1, Lcom/flurry/sdk/de;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/de;-><init>([B)V

    .line 145
    invoke-interface {v2, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Session report added: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Api keys do not match, old: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", new: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting old file version: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v4

    :cond_3
    const/4 p1, 0x6

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown agent file version: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/flurry/sdk/dh;->d:J

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const v0, 0xb5fa

    const/4 v1, 0x6

    .line 54
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 60
    iget-boolean p2, p0, Lcom/flurry/sdk/dh;->b:Z

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 61
    iget-wide p2, p0, Lcom/flurry/sdk/dh;->d:J

    invoke-virtual {p1, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 65
    iget-object p2, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 66
    iget-object p3, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/sdk/de;

    invoke-virtual {p3}, Lcom/flurry/sdk/de;->a()[B

    move-result-object p3

    .line 67
    array-length v0, p3

    add-int/lit8 v2, v0, 0x2

    .line 68
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0xc350

    if-le v2, v3, :cond_0

    .line 72
    sget-object p3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discarded sessions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 76
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    .line 80
    :try_start_1
    sget-object p3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {v1, p3, v0, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    new-instance p3, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 83
    invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/de;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/flurry/sdk/dh;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/flurry/sdk/dh;->b:Z

    return v0
.end method

.method public a(Ljava/io/DataInputStream;Ljava/lang/String;)Z
    .locals 5

    .line 91
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x4

    .line 92
    sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const v1, 0xb5fa

    if-ne v0, v1, :cond_0

    .line 95
    invoke-direct {p0, p2, p1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;Ljava/io/DataInputStream;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    const-string v0, "Unexpected file type"

    .line 97
    invoke-static {p2, v2, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 104
    :goto_0
    invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    return p2

    :catchall_0
    move-exception p2

    const/4 v0, 0x6

    .line 101
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v2, "Error when loading persistent file"

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 104
    invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw p2
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/flurry/sdk/dh;->d:J

    return-wide v0
.end method
