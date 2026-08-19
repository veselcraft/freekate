.class public interface abstract Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
.super Ljava/lang/Object;
.source "ProgressiveMediaExtractor.java"


# virtual methods
.method public abstract disableSeekingOnMp3Streams()V
.end method

.method public abstract getCurrentInputPosition()J
.end method

.method public abstract init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
.end method

.method public abstract read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method
