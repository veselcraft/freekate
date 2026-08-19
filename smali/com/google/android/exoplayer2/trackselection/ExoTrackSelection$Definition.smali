.class public final Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# instance fields
.field public final group:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final tracks:[I

.field public final type:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    .line 66
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    return-void
.end method
