.class Lcom/google/android/exoplayer2/source/TrackGroupArray$1;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 130
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray$1;->newArray(I)[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    return-object p1
.end method
