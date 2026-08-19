.class public abstract Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@17.0.1"


# static fields
.field private static zza:Z = false
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MapsInitializer.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v0

    :try_start_0
    const-string v1, "Context is null"

    .line 1
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/google/android/gms/maps/MapsInitializer;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzca;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zzf;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zzf;->zzf()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zzf;->zzg()Lcom/google/android/gms/internal/maps/zzi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza(Lcom/google/android/gms/internal/maps/zzi;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    :try_start_3
    sput-boolean p0, Lcom/google/android/gms/maps/MapsInitializer;->zza:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v2

    :catch_0
    move-exception p0

    :try_start_4
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception p0

    .line 3
    iget p0, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return p0

    .line 5
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
