.class public Lcom/perm/kate/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/Player$PlayerCallback;
    }
.end annotation


# instance fields
.field private bufferPercents:I

.field callbacks:Ljava/util/LinkedList;

.field protected current:Ljava/lang/String;

.field public isVoice:Z

.field private mp:Landroid/media/MediaPlayer;

.field proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field proxy:Lorg/npr/android/news/StreamProxy;

.field speed:F

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/perm/kate/Player;->bufferPercents:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 257
    iput v1, p0, Lcom/perm/kate/Player;->speed:F

    .line 296
    iput-boolean v0, p0, Lcom/perm/kate/Player;->isVoice:Z

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/perm/kate/Player;->bufferPercents:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    iput v2, p0, Lcom/perm/kate/Player;->speed:F

    .line 296
    iput-boolean v1, p0, Lcom/perm/kate/Player;->isVoice:Z

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    .line 45
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 46
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 47
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 48
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 49
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 50
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 51
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 52
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method private acquireProximityWake()V
    .locals 3

    .line 328
    invoke-direct {p0}, Lcom/perm/kate/Player;->initWakeIfRequired()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/Player;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x124f80

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initWakeIfRequired()V
    .locals 3

    .line 303
    iget-boolean v0, p0, Lcom/perm/kate/Player;->isVoice:Z

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Player;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 309
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    return-void

    .line 317
    :cond_3
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x20

    const-string v2, "kate:MessThrFra"

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/Player;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private releaseProximityWake()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/perm/kate/Player;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/perm/kate/Player;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private setVoiceSpeedInternal()V
    .locals 3

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 250
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/Player;->speed:F

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 202
    iget v0, p0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x4

    .line 204
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 205
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

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 207
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 208
    invoke-direct {p0}, Lcom/perm/kate/Player;->releaseProximityWake()V

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/perm/kate/Player;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "Kate.Player"

    const-string v1, "Player destroyed"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getBufferPercents()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/perm/kate/Player;->bufferPercents:I

    return v0
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    monitor-enter p0

    .line 227
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

    .line 229
    monitor-exit p0

    return v0

    .line 228
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    monitor-enter p0

    .line 221
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

    .line 223
    monitor-exit p0

    return v0

    .line 222
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 168
    iput p2, p0, Lcom/perm/kate/Player;->bufferPercents:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "Kate.Player"

    const-string v0, "onCompletion called"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 173
    iput p1, p0, Lcom/perm/kate/Player;->state:I

    .line 174
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

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onCompletion()V

    goto :goto_1

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/Player;->releaseProximityWake()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError--->   what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "    extra:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Kate.Player"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 153
    iput p2, p0, Lcom/perm/kate/Player;->state:I

    .line 154
    iget-object p2, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {p3}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {p2}, Lcom/perm/kate/Player$PlayerCallback;->onError()V

    goto :goto_1

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/Player;->releaseProximityWake()V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Kate.Player"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 182
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

    .line 183
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 184
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    return-void

    .line 189
    :cond_1
    iget p1, p0, Lcom/perm/kate/Player;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/perm/kate/Player;->setVoiceSpeedInternal()V

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/Player;->acquireProximityWake()V

    .line 193
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 194
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_1

    :cond_3
    const-string p1, "Kate.Player"

    const-string v0, "onPrepared called"

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration:  ===>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onPrepared()V

    goto :goto_2

    .line 198
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "Kate.Player"

    const-string v0, "onSeekComplete"

    .line 277
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/perm/kate/Player;->state:I

    .line 279
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

    :cond_0
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 61
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 63
    monitor-exit p0

    return-void

    .line 64
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 66
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

    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/Player;->releaseProximityWake()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
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

    .line 73
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Kate.Player"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before replace path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/psv4.vkuseraudio.net"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    const-string v1, "http://"

    .line 84
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    const-string v0, "Kate.Player"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after replace path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/perm/kate/Player;->current:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 89
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    .line 99
    monitor-exit p0

    return-void

    .line 91
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/perm/kate/Player;->resume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 105
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->stop()V

    .line 108
    :cond_4
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    new-instance v0, Lorg/npr/android/news/StreamProxy;

    invoke-direct {v0}, Lorg/npr/android/news/StreamProxy;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    .line 110
    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->init()V

    .line 111
    iget-object v0, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    invoke-virtual {v0}, Lorg/npr/android/news/StreamProxy;->start()V

    const-string v0, "http://127.0.0.1:%d/%s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    iget-object v4, p0, Lcom/perm/kate/Player;->proxy:Lorg/npr/android/news/StreamProxy;

    invoke-virtual {v4}, Lorg/npr/android/news/StreamProxy;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_5
    iput-object p1, p0, Lcom/perm/kate/Player;->current:Ljava/lang/String;

    const-string v0, "http"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iput v3, p0, Lcom/perm/kate/Player;->bufferPercents:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x64

    .line 124
    iput v0, p0, Lcom/perm/kate/Player;->bufferPercents:I

    :goto_0
    const/4 v0, 0x3

    .line 125
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 126
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_1

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 128
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStartBuffering()V

    goto :goto_2

    .line 130
    :cond_8
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 132
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method repeat()V
    .locals 0

    .line 148
    invoke-virtual {p0}, Lcom/perm/kate/Player;->resume()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 143
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

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/Player;->acquireProximityWake()V

    return-void
.end method

.method public declared-synchronized seek(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Kate.Player"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x5

    .line 216
    iput p1, p0, Lcom/perm/kate/Player;->state:I

    .line 217
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setVoiceSpeed(F)V
    .locals 1

    .line 237
    iput p1, p0, Lcom/perm/kate/Player;->speed:F

    .line 239
    iget p1, p0, Lcom/perm/kate/Player;->state:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/Player;->setVoiceSpeedInternal()V

    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
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
