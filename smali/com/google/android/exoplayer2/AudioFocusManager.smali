.class final Lcom/google/android/exoplayer2/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGainToRequest:I

.field private final focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

.field private playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 121
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 123
    iput-object p3, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 124
    new-instance p1, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;-><init>(Lcom/google/android/exoplayer2/AudioFocusManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    return-void
.end method

.method private abandonAudioFocusDefault()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private abandonAudioFocusIfHeld()V
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusDefault()V

    :goto_0
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method

.method private abandonAudioFocusV26()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/AudioFocusManager;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 274
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x25

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unidentified audio usage: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 318
    :pswitch_1
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v4

    .line 326
    :pswitch_2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne p0, v5, :cond_2

    return v4

    :cond_2
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 290
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executePlayerCommand(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    :cond_0
    return-void
.end method

.method private handlePlatformAudioFocusChange(I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    .line 360
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    return-void

    .line 363
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    return-void

    :cond_2
    if-eq p1, v1, :cond_4

    .line 368
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->willPauseWhenDucked()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 372
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->executePlayerCommand(I)V

    const/4 p1, 0x2

    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    :goto_1
    return-void
.end method

.method private requestAudioFocus()I
    .locals 3

    .line 190
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 193
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    .line 195
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioFocusState(I)V

    const/4 v0, -0x1

    return v0
.end method

.method private requestAudioFocusDefault()I
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 218
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private requestAudioFocusV26()I
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 227
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 233
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusListener:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    .line 235
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private setAudioFocusState(I)V
    .locals 1

    .line 338
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 341
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 347
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    .line 350
    :cond_2
    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_3

    .line 352
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    :cond_3
    return-void
.end method

.method private shouldAbandonAudioFocusIfHeld(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 185
    iget p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private willPauseWhenDucked()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->contentType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getVolumeMultiplier()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->playerControl:Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;

    .line 174
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 145
    invoke-static {p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->convertAudioAttributesToFocusGain(Lcom/google/android/exoplayer2/audio/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/AudioFocusManager;->focusGainToRequest:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 146
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public updateAudioFocus(ZI)I
    .locals 1

    .line 161
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager;->shouldAbandonAudioFocusIfHeld(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->abandonAudioFocusIfHeld()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/AudioFocusManager;->requestAudioFocus()I

    move-result v0

    :cond_2
    return v0
.end method
