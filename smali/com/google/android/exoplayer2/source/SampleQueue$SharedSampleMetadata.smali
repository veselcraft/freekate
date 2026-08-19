.class final Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# instance fields
.field public final drmSessionReference:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

.field public final format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;)V
    .locals 0

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplayer2/Format;

    .line 1077
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;Lcom/google/android/exoplayer2/source/SampleQueue$1;)V
    .locals 0

    .line 1071
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;)V

    return-void
.end method
