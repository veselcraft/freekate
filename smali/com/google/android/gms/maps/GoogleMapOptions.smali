.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-maps@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/GoogleMapOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/Boolean;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:I

.field private zzd:Lcom/google/android/gms/maps/model/CameraPosition;

.field private zze:Ljava/lang/Boolean;

.field private zzf:Ljava/lang/Boolean;

.field private zzg:Ljava/lang/Boolean;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Ljava/lang/Boolean;

.field private zzj:Ljava/lang/Boolean;

.field private zzk:Ljava/lang/Boolean;

.field private zzl:Ljava/lang/Boolean;

.field private zzm:Ljava/lang/Boolean;

.field private zzn:Ljava/lang/Float;

.field private zzo:Ljava/lang/Float;

.field private zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzq:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/maps/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzc:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzn:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzo:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method constructor <init>(BBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBBBLjava/lang/Float;Ljava/lang/Float;Lcom/google/android/gms/maps/model/LatLngBounds;B)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzc:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzn:Ljava/lang/Float;

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzo:Ljava/lang/Float;

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {p1}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zza:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzb:Ljava/lang/Boolean;

    move v1, p3

    iput v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzc:I

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzd:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p5}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zze:Ljava/lang/Boolean;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzf:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzg:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzh:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzi:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzj:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzk:Ljava/lang/Boolean;

    invoke-static {p12}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzl:Ljava/lang/Boolean;

    invoke-static {p13}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzm:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzn:Ljava/lang/Float;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzo:Ljava/lang/Float;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static/range {p17 .. p17}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzq:Ljava/lang/Boolean;

    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 6
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    if-eqz p0, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/maps/R$styleable;->MapAttrs:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_mapType:I

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_zOrderOnTop:I

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_2
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_useViewLifecycle:I

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_3
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiCompass:I

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_4
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiRotateGestures:I

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_5
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiScrollGesturesDuringRotateOrZoom:I

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabledDuringRotateOrZoom(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_6
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiScrollGestures:I

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_7
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiTiltGestures:I

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 20
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_8
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiZoomGestures:I

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_9
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiZoomControls:I

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 24
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_a
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_liteMode:I

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_b
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_uiMapToolbar:I

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 28
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_c
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_ambientEnabled:I

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 30
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->ambientEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_d
    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraMinZoomPreference:I

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_e

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 33
    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/GoogleMapOptions;->minZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 34
    :cond_e
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraMaxZoomPreference:I

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->maxZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 37
    :cond_f
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zza(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->latLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 39
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/GoogleMapOptions;->zzb(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_10
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 6
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/maps/R$styleable;->MapAttrs:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_latLngBoundsSouthWestLatitude:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    sget v1, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_latLngBoundsSouthWestLongitude:I

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    sget v3, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_latLngBoundsNorthEastLatitude:I

    .line 6
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    sget v4, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_latLngBoundsNorthEastLongitude:I

    .line 8
    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {p0, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v0

    .line 10
    :goto_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    new-instance p0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 13
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_6
    :goto_4
    return-object v0
.end method

.method public static zzb(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    sget p1, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraTargetLat:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraTargetLng:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_1
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v3, p1

    float-to-double v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    sget v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraZoom:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    :cond_3
    sget v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraBearing:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    :cond_4
    sget v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs_cameraTilt:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 15
    :cond_5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ambientEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzm:Ljava/lang/Boolean;

    return-object p0
.end method

.method public camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzd:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object p0
.end method

.method public compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzf:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzd:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public getLatLngBoundsForCameraTarget()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzc:I

    return v0
.end method

.method public getMaxZoomPreference()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzo:Ljava/lang/Float;

    return-object v0
.end method

.method public getMinZoomPreference()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzn:Ljava/lang/Float;

    return-object v0
.end method

.method public latLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzk:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzl:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzc:I

    return-object p0
.end method

.method public maxZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzo:Ljava/lang/Float;

    return-object p0
.end method

.method public minZoomPreference(F)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzn:Ljava/lang/Float;

    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzj:Ljava/lang/Boolean;

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzg:Ljava/lang/Boolean;

    return-object p0
.end method

.method public scrollGesturesEnabledDuringRotateOrZoom(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzq:Ljava/lang/Boolean;

    return-object p0
.end method

.method public tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzi:Ljava/lang/Boolean;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzc:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MapType"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzk:Ljava/lang/Boolean;

    const-string v2, "LiteMode"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzd:Lcom/google/android/gms/maps/model/CameraPosition;

    const-string v2, "Camera"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzf:Ljava/lang/Boolean;

    const-string v2, "CompassEnabled"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zze:Ljava/lang/Boolean;

    const-string v2, "ZoomControlsEnabled"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzg:Ljava/lang/Boolean;

    const-string v2, "ScrollGesturesEnabled"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzh:Ljava/lang/Boolean;

    const-string v2, "ZoomGesturesEnabled"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzi:Ljava/lang/Boolean;

    const-string v2, "TiltGesturesEnabled"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzj:Ljava/lang/Boolean;

    const-string v2, "RotateGesturesEnabled"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzq:Ljava/lang/Boolean;

    const-string v2, "ScrollGesturesEnabledDuringRotateOrZoom"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzl:Ljava/lang/Boolean;

    const-string v2, "MapToolbarEnabled"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzm:Ljava/lang/Boolean;

    const-string v2, "AmbientEnabled"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzn:Ljava/lang/Float;

    const-string v2, "MinZoomPreference"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzo:Ljava/lang/Float;

    const-string v2, "MaxZoomPreference"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzp:Lcom/google/android/gms/maps/model/LatLngBounds;

    const-string v2, "LatLngBoundsForCameraTarget"

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zza:Ljava/lang/Boolean;

    const-string v2, "ZOrderOnTop"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzb:Ljava/lang/Boolean;

    const-string v2, "UseViewLifecycleInFragment"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zza:Ljava/lang/Boolean;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzb:Ljava/lang/Boolean;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I

    move-result v1

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 7
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zze:Ljava/lang/Boolean;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/4 v2, 0x6

    .line 9
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzf:Ljava/lang/Boolean;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/4 v2, 0x7

    .line 11
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzg:Ljava/lang/Boolean;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0x8

    .line 13
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzh:Ljava/lang/Boolean;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0x9

    .line 15
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzi:Ljava/lang/Boolean;

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0xa

    .line 17
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzj:Ljava/lang/Boolean;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0xb

    .line 19
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzk:Ljava/lang/Boolean;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0xc

    .line 21
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzl:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0xe

    .line 23
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzm:Ljava/lang/Boolean;

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0xf

    .line 25
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMinZoomPreference()Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    .line 26
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMaxZoomPreference()Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x11

    .line 27
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getLatLngBoundsForCameraTarget()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    const/16 v2, 0x12

    .line 28
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzq:Ljava/lang/Boolean;

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/maps/internal/zza;->zzb(Ljava/lang/Boolean;)B

    move-result p2

    const/16 v1, 0x13

    .line 30
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    .line 31
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zza:Ljava/lang/Boolean;

    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zze:Ljava/lang/Boolean;

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method
