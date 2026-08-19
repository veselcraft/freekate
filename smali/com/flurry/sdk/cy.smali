.class public final Lcom/flurry/sdk/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/flurry/sdk/cy;->a:I

    .line 24
    iput-object p2, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;

    .line 26
    iput-wide p4, p0, Lcom/flurry/sdk/cy;->d:J

    .line 27
    iput-boolean p6, p0, Lcom/flurry/sdk/cy;->e:Z

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/flurry/sdk/cy;->f:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/flurry/sdk/cy;->f:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/flurry/sdk/cy;->f:Z

    .line 53
    iget-wide v0, p0, Lcom/flurry/sdk/cy;->d:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/flurry/sdk/cy;->g:J

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ended event \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/flurry/sdk/cy;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/flurry/sdk/cy;->g:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const-string v0, "FlurryAgent"

    invoke-static {p2, v0, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/flurry/sdk/cy;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/flurry/sdk/cy;->f:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/flurry/sdk/cy;->e()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public e()[B
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    iget v1, p0, Lcom/flurry/sdk/cy;->a:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 115
    iget-object v1, p0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 123
    iget-object v1, p0, Lcom/flurry/sdk/cy;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 126
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    iget-wide v4, p0, Lcom/flurry/sdk/cy;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 130
    iget-wide v4, p0, Lcom/flurry/sdk/cy;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 132
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 134
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_0
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    :goto_2
    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_3
    return-object v0

    :goto_4
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
