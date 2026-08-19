.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/maps/model/LatLng;

.field private zzb:F

.field private zzc:F

.field private zzd:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzd:F

    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zza:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzb:F

    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzc:F

    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzd:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 1
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "location must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zza:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzc:F

    return-object p0
.end method

.method public zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzb:F

    return-object p0
.end method
