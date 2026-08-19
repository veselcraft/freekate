.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# instance fields
.field private allowedCapturePolicy:I

.field private contentType:I

.field private flags:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 7

    .line 99
    new-instance v6, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->allowedCapturePolicy:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    return-object v6
.end method
