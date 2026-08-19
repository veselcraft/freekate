.class public abstract synthetic Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# direct methods
.method public static $default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v0, 0x0

    .line 159
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I

    move-result p1

    return p1
.end method

.method public static $default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v0, 0x0

    .line 167
    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V

    return-void
.end method
