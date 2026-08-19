.class public final Lcom/perm/utils/ByteCountingOutputStream;
.super Ljava/io/OutputStream;
.source "ByteCountingOutputStream.java"


# instance fields
.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public size()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4

    .line 21
    iget-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 30
    iget-wide p1, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/perm/utils/ByteCountingOutputStream;->size:J

    return-void
.end method
