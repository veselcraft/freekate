.class Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$1;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    .line 398
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 0

    .line 403
    new-array p1, p1, [Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$1;->newArray(I)[Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    return-object p1
.end method
