.class Lcom/perm/kate/Helper$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const-wide/16 v4, 0x0

    .line 143
    .local v4, "totalBytesSkipped":J
    :goto_0
    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/perm/kate/Helper$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v4

    invoke-virtual {v1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 145
    .local v2, "bytesSkipped":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/perm/kate/Helper$FlushedInputStream;->read()I

    move-result v0

    .line 147
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 155
    .end local v0    # "b":I
    .end local v2    # "bytesSkipped":J
    :cond_0
    return-wide v4

    .line 150
    .restart local v0    # "b":I
    .restart local v2    # "bytesSkipped":J
    :cond_1
    const-wide/16 v2, 0x1

    .line 153
    .end local v0    # "b":I
    :cond_2
    add-long/2addr v4, v2

    .line 154
    goto :goto_0
.end method
