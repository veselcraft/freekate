.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# virtual methods
.method public abstract dequeueInputBufferIndex()I
.end method

.method public abstract dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputFormat()Landroid/media/MediaFormat;
.end method

.method public abstract queueInputBuffer(IIIJI)V
.end method

.method public abstract queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setParameters(Landroid/os/Bundle;)V
.end method
