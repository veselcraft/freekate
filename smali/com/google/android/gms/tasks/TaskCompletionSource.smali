.class public Lcom/google/android/gms/tasks/TaskCompletionSource;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/zzu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzu;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzu;

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    return-void
.end method
