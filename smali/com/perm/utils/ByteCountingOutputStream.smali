.class public final Lcom/perm/utils/ByteCountingOutputStream;
.super Ljava/io/OutputStream;
.source "ByteCountingOutputStream.java"


# instance fields
.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public size()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    .line 22
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    .line 31
    return-void
.end method
