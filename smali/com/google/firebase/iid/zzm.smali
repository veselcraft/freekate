.class final synthetic Lcom/google/firebase/iid/zzm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzk;

.field private final zzb:Landroid/os/Bundle;

.field private final zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzk;Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzm;->zza:Lcom/google/firebase/iid/zzk;

    iput-object p2, p0, Lcom/google/firebase/iid/zzm;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/firebase/iid/zzm;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzm;->zza:Lcom/google/firebase/iid/zzk;

    iget-object v1, p0, Lcom/google/firebase/iid/zzm;->zzb:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/firebase/iid/zzm;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/zzk;->zza(Landroid/os/Bundle;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
