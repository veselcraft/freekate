.class final Lcom/google/android/gms/tasks/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/zzq;


# instance fields
.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/tasks/Continuation;

.field private final zzf:Lcom/google/android/gms/tasks/zzu;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzc;->zzd:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzc;->zze:Lcom/google/android/gms/tasks/Continuation;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/tasks/zzc;->zzf:Lcom/google/android/gms/tasks/zzu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->zzf:Lcom/google/android/gms/tasks/zzu;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/Continuation;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->zze:Lcom/google/android/gms/tasks/Continuation;

    return-object p0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzc;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzd;-><init>(Lcom/google/android/gms/tasks/zzc;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
