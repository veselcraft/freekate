.class public final Lcom/google/android/exoplayer2/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# instance fields
.field private accessibilityChannel:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;

.field private colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field private containerMimeType:Ljava/lang/String;

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private encoderDelay:I

.field private encoderPadding:I

.field private exoMediaCryptoType:Ljava/lang/Class;

.field private frameRate:F

.field private height:I

.field private id:Ljava/lang/String;

.field private initializationData:Ljava/util/List;

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private maxInputSize:I

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private pcmEncoding:I

.field private peakBitrate:I

.field private pixelWidthHeightRatio:F

.field private projectionData:[B

.field private roleFlags:I

.field private rotationDegrees:I

.field private sampleMimeType:Ljava/lang/String;

.field private sampleRate:I

.field private selectionFlags:I

.field private stereoMode:I

.field private subsampleOffsetUs:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 180
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 182
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    const-wide v1, 0x7fffffffffffffffL

    .line 183
    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 185
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 186
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 187
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    iput v1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 189
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 191
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 192
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 193
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 195
    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    .line 207
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    .line 208
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    .line 209
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    .line 210
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    .line 211
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 214
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 217
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    .line 218
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    .line 219
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 220
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    .line 222
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    .line 223
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    .line 224
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    .line 225
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    .line 226
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    .line 227
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    .line 228
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    .line 229
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 231
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    .line 232
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    .line 233
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    .line 234
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    .line 235
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    .line 237
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    .line 239
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/Format$Builder;)J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/Format$Builder;)F
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    return p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/Format$Builder;)[B
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    return p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    return p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    return p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    return p0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    return p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/Class;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->exoMediaCryptoType:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/Format$Builder;)I
    .locals 0

    .line 126
    iget p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 600
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 579
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I

    return-object p0
.end method

.method public setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 316
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I

    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 522
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I

    return-object p0
.end method

.method public setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-object p0
.end method

.method public setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 555
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I

    return-object p0
.end method

.method public setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 566
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I

    return-object p0
.end method

.method public setExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->exoMediaCryptoType:Ljava/lang/Class;

    return-object p0
.end method

.method public setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 454
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F

    return-object p0
.end method

.method public setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 443
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->height:I

    return-object p0
.end method

.method public setId(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 386
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I

    return-object p0
.end method

.method public setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object p0
.end method

.method public setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 544
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I

    return-object p0
.end method

.method public setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 327
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I

    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 476
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F

    return-object p0
.end method

.method public setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method public setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 305
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I

    return-object p0
.end method

.method public setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 465
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I

    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 533
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I

    return-object p0
.end method

.method public setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 294
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I

    return-object p0
.end method

.method public setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 498
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I

    return-object p0
.end method

.method public setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 419
    iput-wide p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J

    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;
    .locals 0

    .line 432
    iput p1, p0, Lcom/google/android/exoplayer2/Format$Builder;->width:I

    return-object p0
.end method
