.class final Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$Listener;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 858
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onOffloadBufferEmptying()V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer$WakeupListener;->onWakeup()V

    :cond_0
    return-void
.end method

.method public onOffloadBufferFull(J)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Renderer$WakeupListener;->onSleep(J)V

    :cond_0
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onPositionDiscontinuity()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 834
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    return-void
.end method
