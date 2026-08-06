.class public Lcom/perm/kate/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/Player$PlayerCallback;
    }
.end annotation


# instance fields
.field private bufferPercents:I

.field callback:Lcom/perm/kate/Player$PlayerCallback;

.field private current:Ljava/lang/String;

.field private mp:Landroid/media/MediaPlayer;

.field public state:I


# direct methods
.method public constructor <init>(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 3
    .param p1, "c"    # Lcom/perm/kate/Player$PlayerCallback;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 27
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/Player;->bufferPercents:I

    .line 34
    iput-object p1, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 37
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 38
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 40
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 41
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 42
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 43
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 148
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 149
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 150
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    .line 152
    const-string v0, "Kate.Player"

    const-string v1, "Player destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public getBufferPercents()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/perm/kate/Player;->bufferPercents:I

    return v0
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 126
    iput p2, p0, Lcom/perm/kate/Player;->bufferPercents:I

    .line 127
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 130
    const-string v0, "Kate.Player"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 132
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 133
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onCompletion()V

    .line 134
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 111
    const-string v0, "Kate.Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError--->   what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 113
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onError()V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 186
    const-string v0, "Kate.Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 138
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 139
    const-string v0, "Kate.Player"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "Kate.Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration:  ===>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onPrepared()V

    .line 142
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 143
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 192
    const-string v0, "Kate.Player"

    const-string v1, "onSeekComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 194
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 195
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/perm/kate/Player;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 53
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    monitor-enter p0

    if-nez p1, :cond_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_0
    const-string v1, "Kate.Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before replace path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 66
    :cond_1
    :try_start_1
    const-string v1, "Kate.Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after replace path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/perm/kate/Player;->current:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget v1, p0, Lcom/perm/kate/Player;->state:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/Player;->resume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 82
    :cond_2
    :pswitch_2
    :try_start_3
    iput-object p1, p0, Lcom/perm/kate/Player;->current:Ljava/lang/String;

    .line 84
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/perm/kate/Player;->bufferPercents:I

    .line 89
    :goto_1
    const/4 v1, 0x3

    iput v1, p0, Lcom/perm/kate/Player;->state:I

    .line 90
    iget-object v1, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 91
    iget-object v1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 92
    iget-object v1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStartBuffering()V

    .line 94
    iget-object v1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto/16 :goto_0

    .line 88
    :cond_3
    const/16 v1, 0x64

    iput v1, p0, Lcom/perm/kate/Player;->bufferPercents:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 107
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    .line 108
    return-void
.end method

.method public declared-synchronized seek(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    const-string v0, "Kate.Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Lcom/perm/kate/Player;->state:I

    .line 159
    iget-object v0, p0, Lcom/perm/kate/Player;->callback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/Player;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/Player;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
