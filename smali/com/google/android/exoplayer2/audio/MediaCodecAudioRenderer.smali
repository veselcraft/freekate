.class public Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private audioSinkNeedsReset:Z

.field private codecMaxInputSize:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private final context:Landroid/content/Context;

.field private currentPositionUs:J

.field private decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZF)V

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    .line 242
    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 243
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 244
    new-instance p1, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 8

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 131
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 6

    .line 152
    new-instance v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v5, p5, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 8

    .line 174
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    return-object p0
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 812
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    .line 813
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "samsung"

    .line 814
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 815
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    .line 816
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    .line 817
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static deviceDoesntSupportOperatingRate()Z
    .locals 2

    .line 800
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 801
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 727
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 732
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 736
    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    return p1
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 783
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 786
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 8

    .line 371
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 373
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 374
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 378
    new-instance v1, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 382
    :cond_1
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method protected getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)I
    .locals 5

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 705
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 710
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 711
    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v4, :cond_1

    .line 712
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 4

    .line 398
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 399
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v3, v0, :cond_0

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 3

    .line 318
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecryptOnlyDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 330
    invoke-interface {p1, v0, p3, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 332
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object p2

    const-string v2, "audio/eac3-joc"

    .line 333
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 337
    invoke-interface {p1, p2, p3, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 336
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    .line 341
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;
    .locals 0

    return-object p0
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getStreamFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 356
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 357
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 358
    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object v4

    .line 360
    iget-object p4, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v0, "audio/raw"

    .line 361
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 362
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    move-object p4, p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 363
    :goto_1
    iput-object p4, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    .line 364
    new-instance p4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p4

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p4
.end method

.method protected getMediaFormat(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 753
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 755
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 757
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 758
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 760
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 762
    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const/4 p3, 0x0

    const-string v1, "priority"

    .line 763
    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    .line 764
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->deviceDoesntSupportOperatingRate()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    .line 765
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    .line 768
    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const-string p4, "ac4-is-sync"

    .line 771
    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    .line 773
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 p4, 0x4

    .line 775
    invoke-static {p4, p3, p1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 774
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "pcm-encoding"

    .line 777
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 568
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 571
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 688
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 685
    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    goto :goto_0

    .line 679
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    goto :goto_0

    .line 675
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 676
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    goto :goto_0

    .line 671
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 672
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    goto :goto_0

    .line 668
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 558
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 420
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 540
    throw v0

    :catchall_1
    move-exception v0

    .line 537
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 539
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 541
    throw v0

    :catchall_2
    move-exception v0

    .line 539
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 540
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 0

    .line 494
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 495
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 496
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getConfiguration()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz p1, :cond_0

    .line 497
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    :goto_0
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 2

    .line 428
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer2/FormatHolder;)Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getCodec()Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 444
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    .line 447
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 449
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v0

    goto :goto_0

    .line 455
    :cond_4
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 459
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 461
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v3

    .line 462
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 463
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 464
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v3, "channel-count"

    .line 465
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 466
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 467
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 468
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v0, v3, :cond_6

    .line 471
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 472
    :goto_1
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v0, v3, :cond_6

    .line 473
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 478
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->configure(Lcom/google/android/exoplayer2/Format;I[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 480
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected onPositionDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 505
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 506
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz p3, :cond_0

    .line 507
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_0

    .line 509
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 512
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 514
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 1

    .line 599
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 586
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 591
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    :cond_0
    const/4 p1, 0x0

    .line 593
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 3

    const/4 v0, 0x0

    .line 547
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v1, :cond_0

    .line 550
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 549
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v2, :cond_1

    .line 550
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 553
    :cond_1
    throw v1
.end method

.method protected onStarted()V
    .locals 1

    .line 519
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 525
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 527
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 0

    .line 617
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 622
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {p1, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 628
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 630
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 631
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    return p2

    .line 637
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 646
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 648
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 641
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p14, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 639
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected renderToEndOfStream()V
    .locals 3

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 660
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method protected shouldUseBypass(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    return p1
.end method

.method protected supportsFormat(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;)I
    .locals 10

    .line 269
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    invoke-static {v1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 273
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 274
    :goto_0
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 275
    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    .line 278
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 279
    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    .line 280
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecryptOnlyDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 281
    :cond_3
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1

    .line 285
    :cond_4
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "audio/raw"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 286
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 289
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v7, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v8, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v9, 0x2

    .line 290
    invoke-static {v9, v7, v8}, Lcom/google/android/exoplayer2/util/Util;->getPcmFormat(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 289
    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 291
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 294
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->getDecoderInfos(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    invoke-static {v3}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v4, :cond_8

    .line 299
    invoke-static {v9}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 302
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 303
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 306
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v5, 0x10

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x3

    .line 311
    :goto_2
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1
.end method
