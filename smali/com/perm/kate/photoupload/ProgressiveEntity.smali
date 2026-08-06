.class Lcom/perm/kate/photoupload/ProgressiveEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "CountingMultipartRequestEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;
    }
.end annotation


# instance fields
.field displayer:Lcom/perm/utils/UploadProgressListener;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/perm/utils/UploadProgressListener;)V
    .locals 0
    .param p1, "en"    # Lorg/apache/http/HttpEntity;
    .param p2, "displayer"    # Lcom/perm/utils/UploadProgressListener;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 16
    iput-object p2, p0, Lcom/perm/kate/photoupload/ProgressiveEntity;->displayer:Lcom/perm/utils/UploadProgressListener;

    .line 17
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/photoupload/ProgressiveEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    new-instance v1, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/photoupload/ProgressiveEntity$ProgressiveOutputStream;-><init>(Lcom/perm/kate/photoupload/ProgressiveEntity;Ljava/io/OutputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 22
    return-void
.end method
