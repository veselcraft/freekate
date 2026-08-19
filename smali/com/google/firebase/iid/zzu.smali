.class public final Lcom/google/firebase/iid/zzu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"


# static fields
.field private static zza:Lcom/google/firebase/iid/zzu;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MessengerIpcClient.class"
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzd:Lcom/google/firebase/iid/zzv;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zze:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/google/firebase/iid/zzv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/zzv;-><init>(Lcom/google/firebase/iid/zzu;Lcom/google/firebase/iid/zzw;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzu;->zzd:Lcom/google/firebase/iid/zzv;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/firebase/iid/zzu;->zze:I

    .line 9
    iput-object p2, p0, Lcom/google/firebase/iid/zzu;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzu;->zzb:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized zza()I
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/zzu;->zze:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/iid/zzu;->zze:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzu;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/firebase/iid/zzu;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method private final declared-synchronized zza(Lcom/google/firebase/iid/zzae;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessengerIpcClient"

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queueing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzu;->zzd:Lcom/google/firebase/iid/zzv;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzae;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/google/firebase/iid/zzv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/zzv;-><init>(Lcom/google/firebase/iid/zzu;Lcom/google/firebase/iid/zzw;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzu;->zzd:Lcom/google/firebase/iid/zzv;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzae;)Z

    .line 20
    :cond_1
    iget-object p1, p1, Lcom/google/firebase/iid/zzae;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized zza(Landroid/content/Context;)Lcom/google/firebase/iid/zzu;
    .locals 6

    const-class v0, Lcom/google/firebase/iid/zzu;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/zzu;->zza:Lcom/google/firebase/iid/zzu;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/firebase/iid/zzu;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_messaging/zza;->zza()Lcom/google/android/gms/internal/firebase_messaging/zzb;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v5, "MessengerIpcClient"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/google/android/gms/internal/firebase_messaging/zzf;->zza:I

    .line 4
    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/zzu;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/firebase/iid/zzu;->zza:Lcom/google/firebase/iid/zzu;

    .line 5
    :cond_0
    sget-object p0, Lcom/google/firebase/iid/zzu;->zza:Lcom/google/firebase/iid/zzu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/zzu;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/firebase/iid/zzu;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 12
    new-instance p1, Lcom/google/firebase/iid/zzab;

    invoke-direct {p0}, Lcom/google/firebase/iid/zzu;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/iid/zzab;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzu;->zza(Lcom/google/firebase/iid/zzae;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 13
    new-instance p1, Lcom/google/firebase/iid/zzag;

    invoke-direct {p0}, Lcom/google/firebase/iid/zzu;->zza()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/iid/zzag;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzu;->zza(Lcom/google/firebase/iid/zzae;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
