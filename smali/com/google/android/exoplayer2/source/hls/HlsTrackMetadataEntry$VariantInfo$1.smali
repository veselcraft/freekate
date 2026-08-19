.class Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo$1;
.super Ljava/lang/Object;
.source "HlsTrackMetadataEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;
    .locals 1

    .line 150
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;
    .locals 0

    .line 155
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo$1;->newArray(I)[Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-result-object p1

    return-object p1
.end method
