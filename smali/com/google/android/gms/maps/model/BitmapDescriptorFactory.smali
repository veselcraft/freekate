.class public abstract Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@17.0.1"


# static fields
.field private static zza:Lcom/google/android/gms/internal/maps/zzi;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/maps/zzi;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza:Lcom/google/android/gms/internal/maps/zzi;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "delegate must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/maps/zzi;

    sput-object p0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza:Lcom/google/android/gms/internal/maps/zzi;

    return-void
.end method
