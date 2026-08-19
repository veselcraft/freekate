.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
    }
.end annotation


# virtual methods
.method public abstract configure(Lcom/google/android/exoplayer2/Format;I[I)V
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21()V
.end method

.method public abstract experimentalFlushWithoutAudioTrackRelease()V
.end method

.method public abstract flush()V
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getFormatSupport(Lcom/google/android/exoplayer2/Format;)I
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;JI)Z
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
.end method

.method public abstract setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
.end method

.method public abstract setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplayer2/Format;)Z
.end method
