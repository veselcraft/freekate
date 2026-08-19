.class public abstract Lcom/google/android/gms/maps/internal/zzca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String; = "zzca"

.field private static zzb:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static zzc:Lcom/google/android/gms/maps/internal/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zzf;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzc:Lcom/google/android/gms/maps/internal/zzf;

    if-nez v0, :cond_3

    const v0, 0xcc77c0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    const-string v1, "Making Creator dynamically"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzca;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    .line 5
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzca;->zzc(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    .line 7
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 8
    instance-of v2, v1, Lcom/google/android/gms/maps/internal/zzf;

    if-eqz v2, :cond_1

    .line 9
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/maps/internal/zzf;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/internal/zze;

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/internal/zze;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 4
    :goto_0
    sput-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzc:Lcom/google/android/gms/maps/internal/zzf;

    .line 11
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzca;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    sget v1, Lcom/google/android/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 12
    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/maps/internal/zzf;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p0, Lcom/google/android/gms/maps/internal/zzca;->zzc:Lcom/google/android/gms/maps/internal/zzf;

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 14
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find dynamic class com.google.android.gms.maps.internal.CreatorImpl"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    :cond_3
    return-object v0
.end method

.method private static zzb(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    sget-object v0, Lcom/google/android/gms/maps/internal/zzca;->zzb:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v1, "com.google.android.gms.maps_dynamite"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/maps/internal/zzca;->zza:Ljava/lang/String;

    const-string v2, "Failed to load maps module, use legacy"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 3
    :goto_0
    sput-object p0, Lcom/google/android/gms/maps/internal/zzca;->zzb:Landroid/content/Context;

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static zzc(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to call the default constructor of "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 2
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to instantiate the dynamic class "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 3
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
