.class public final Lcom/google/android/exoplayer2/audio/AacUtil$Config;
.super Ljava/lang/Object;
.source "AacUtil.java"


# instance fields
.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final sampleRateHz:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 44
    iput p2, p0, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 45
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/google/android/exoplayer2/audio/AacUtil$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AacUtil$Config;-><init>(IILjava/lang/String;)V

    return-void
.end method
