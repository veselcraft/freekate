.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .locals 0

    .line 1867
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    .line 1867
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    return-void
.end method


# virtual methods
.method public onInvalidLatency(J)V
    .locals 2

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onPositionAdvancing(J)V

    :cond_0
    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .locals 6

    .line 1875
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 1885
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$600(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 1887
    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$700(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1888
    sget-boolean p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_0

    const-string p2, "DefaultAudioSink"

    .line 1891
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1889
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .locals 6

    .line 1900
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 1910
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$600(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 1912
    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$700(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1913
    sget-boolean p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_0

    const-string p2, "DefaultAudioSink"

    .line 1916
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1914
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onUnderrun(IJ)V
    .locals 10

    .line 1933
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 1935
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    :cond_0
    return-void
.end method
