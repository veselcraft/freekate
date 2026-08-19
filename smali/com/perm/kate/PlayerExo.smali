.class public Lcom/perm/kate/PlayerExo;
.super Lcom/perm/kate/Player;
.source "PlayerExo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method public static synthetic $r8$lambda$9QI8wIqAbPqJcbLaGTpicjf5nOM(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/perm/kate/PlayerExo;->lambda$new$0(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V3UMlZ0fP4X_eM4tLF_mkUsUt44()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 1

    invoke-static {}, Lcom/perm/kate/PlayerExo;->lambda$new$1()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/Player;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object p1, Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda0;

    .line 38
    sget-object v0, Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/perm/kate/PlayerExo$$ExternalSyntheticLambda1;

    .line 41
    new-instance v1, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/android/exoplayer2/Renderer;

    .line 35
    new-instance p3, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object p4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-direct {p3, p4, v0, p0, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    const/4 p0, 0x0

    aput-object p3, p1, p0

    return-object p1
.end method

.method private static synthetic lambda$new$1()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 39
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 168
    iget v0, p0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->stop()V

    :cond_0
    const/4 v0, 0x4

    .line 170
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 171
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 173
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const-string v0, "Kate.PlayerExo"

    const-string v1, "Player destroyed"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBufferPercents()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    monitor-enter p0

    .line 195
    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 197
    monitor-exit p0

    return v0

    .line 196
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    monitor-exit p0

    return v0

    .line 189
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/device/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/device/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.PlayerExo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/perm/kate/Player;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError--->   what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.PlayerExo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 134
    iput p1, p0, Lcom/perm/kate/Player;->state:I

    .line 135
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onError()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 153
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 154
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 155
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    return-void

    .line 158
    :cond_1
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 159
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_1

    :cond_2
    const-string p1, "Kate.PlayerExo"

    const-string v0, "onPrepared called"

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration:  ===>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onPrepared()V

    goto :goto_2

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/BasePlayer;->play()V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onStaticMetadataChanged(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onStaticMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 48
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->pause()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 53
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 54
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized play(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 59
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Kate.PlayerExo"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before replace path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "Kate.PlayerExo"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after replace path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/perm/kate/Player;->current:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 69
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 79
    monitor-exit p0

    return-void

    .line 71
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/perm/kate/PlayerExo;->resume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 86
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->stop()V

    .line 89
    :cond_3
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance v0, Lorg/npr/android/news/StreamProxy;

    invoke-direct {v0}, Lorg/npr/android/news/StreamProxy;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    .line 91
    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->init()V

    .line 92
    iget-object v0, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->start()V

    const-string v0, "http://127.0.0.1:%d/%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 94
    iget-object v4, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    invoke-virtual {v4}, Lorg/npr/android/news/StreamProxy;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_4
    iput-object p1, p0, Lcom/perm/kate/Player;->current:Ljava/lang/String;

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 99
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStartBuffering()V

    goto :goto_1

    .line 102
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/perm/kate/PlayerExo;->onPrepared(Landroid/media/MediaPlayer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 112
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method repeat()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 128
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/BasePlayer;->play()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 121
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized seek(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Kate.PlayerExo"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVolume(FF)V
    .locals 1

    .line 203
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/PlayerExo;->sep:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/perm/kate/Player;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
