.class Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingMultipartRequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/photoupload/ProgressiveEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressiveOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/ProgressiveEntity;

.field transferred:J


# direct methods
.method public constructor <init>(Lcom/perm/kate/photoupload/ProgressiveEntity;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/ProgressiveEntity;
    .param p2, "proxy"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->this$0:Lcom/perm/kate/photoupload/ProgressiveEntity;

    .line 26
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->transferred:J

    .line 27
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 4
    .param p1, "bts"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 31
    iget-wide v0, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->transferred:J

    .line 32
    iget-object v0, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->this$0:Lcom/perm/kate/photoupload/ProgressiveEntity;

    iget-object v0, v0, Lcom/perm/kate/photoupload/ProgressiveEntity;->displayer:Lcom/perm/utils/UploadProgressListener;

    iget-wide v2, p0, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;->transferred:J

    invoke-interface {v0, v2, v3}, Lcom/perm/utils/UploadProgressListener;->publishProgress(J)V

    .line 33
    return-void
.end method
