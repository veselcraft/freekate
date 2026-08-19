.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$zza;
    }
.end annotation


# static fields
.field private static final zza:J

.field private static zzb:Lcom/google/firebase/iid/zzaq;

.field private static zzc:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "FirebaseInstanceId.class"
    .end annotation
.end field


# instance fields
.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/firebase/FirebaseApp;

.field private final zzf:Lcom/google/firebase/iid/zzaf;

.field private final zzg:Lcom/google/firebase/iid/zzk;

.field private final zzh:Lcom/google/firebase/iid/zzak;

.field private final zzi:Lcom/google/firebase/iid/zzau;

.field private zzj:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 147
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zza:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V
    .locals 7

    .line 3
    new-instance v2, Lcom/google/firebase/iid/zzaf;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/zzaf;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/iid/zzc;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/zzc;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzaf;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzaf;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z

    .line 11
    invoke-static {p1}, Lcom/google/firebase/iid/zzaf;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/google/firebase/iid/zzaq;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/zzaq;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    .line 18
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzaf;

    .line 19
    new-instance v0, Lcom/google/firebase/iid/zzk;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/google/firebase/iid/zzk;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzaf;Ljava/util/concurrent/Executor;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzk;

    .line 20
    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd:Ljava/util/concurrent/Executor;

    .line 21
    new-instance p1, Lcom/google/firebase/iid/zzau;

    sget-object p2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    invoke-direct {p1, p2}, Lcom/google/firebase/iid/zzau;-><init>(Lcom/google/firebase/iid/zzaq;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzau;

    .line 22
    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    .line 23
    new-instance p2, Lcom/google/firebase/iid/zzak;

    invoke-direct {p2, p3}, Lcom/google/firebase/iid/zzak;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh:Lcom/google/firebase/iid/zzak;

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 54
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/zzg;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/iid/zzg;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x7530

    .line 75
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 86
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 78
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zze()V

    .line 81
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 82
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 83
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 84
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zza(Ljava/lang/Runnable;J)V
    .locals 5

    .line 44
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v4, "FirebaseInstanceId"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    :cond_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzap;
    .locals 2

    .line 73
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()V

    return-void
.end method

.method private static zzd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "*"

    return-object p0
.end method

.method static zzd()Z
    .locals 4

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzi()V
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzap;

    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzau;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzau;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()V

    :cond_1
    return-void
.end method

.method private final declared-synchronized zzj()V
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzk()Ljava/lang/String;
    .locals 2

    .line 51
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zzb(Ljava/lang/String;)Lcom/google/firebase/iid/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzr;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 89
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzk;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/firebase/iid/zzk;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzaq;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzaf;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 134
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Ljava/lang/String;

    move-result-object p3

    .line 135
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzap;

    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance p1, Lcom/google/firebase/iid/zzt;

    iget-object p2, v0, Lcom/google/firebase/iid/zzap;->zza:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh:Lcom/google/firebase/iid/zzak;

    new-instance v1, Lcom/google/firebase/iid/zzi;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/firebase/iid/zzi;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/firebase/iid/zzak;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/zzam;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/zzk;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/zzh;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/google/firebase/iid/zzh;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 141
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzaf;

    .line 142
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaf;->zzb()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance p1, Lcom/google/firebase/iid/zzt;

    invoke-direct {p1, p3, p4}, Lcom/google/firebase/iid/zzt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zza()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method final declared-synchronized zza(J)V
    .locals 11

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    .line 39
    :try_start_0
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->zza:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 40
    new-instance v0, Lcom/google/firebase/iid/zzas;

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzaf;

    iget-object v8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi:Lcom/google/firebase/iid/zzau;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/iid/zzas;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzaf;Lcom/google/firebase/iid/zzau;J)V

    .line 41
    invoke-static {v0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/Runnable;J)V

    .line 42
    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(Z)V
    .locals 0

    monitor-enter p0

    .line 34
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zza(Lcom/google/firebase/iid/zzap;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzaf;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaf;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/zzap;->zzb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final zzb()Lcom/google/firebase/iid/zzap;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzaf;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzap;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzap;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v0, v0, Lcom/google/firebase/iid/zzap;->zza:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzk;

    invoke-virtual {v2, v1, v0, p1}, Lcom/google/firebase/iid/zzk;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzc()Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zze:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzaf;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Ljava/lang/String;)V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzap;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg:Lcom/google/firebase/iid/zzk;

    iget-object v0, v0, Lcom/google/firebase/iid/zzap;->zza:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/google/firebase/iid/zzk;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final declared-synchronized zze()V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaq;->zzb()V

    .line 117
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzf()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf:Lcom/google/firebase/iid/zzaf;

    .line 122
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaf;->zza()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzg()V
    .locals 2

    .line 124
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb:Lcom/google/firebase/iid/zzaq;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaq;->zzc(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()V

    return-void
.end method
