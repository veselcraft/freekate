.class public final Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# instance fields
.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    .line 96
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    .line 97
    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->frameSize:I

    .line 98
    iput p6, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
