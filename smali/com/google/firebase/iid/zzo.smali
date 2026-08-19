.class final Lcom/google/firebase/iid/zzo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/iid/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/zzo;->zza:Lcom/google/firebase/iid/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 3
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 4
    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->zza:Lcom/google/firebase/iid/zzk;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzk;->zza(Lcom/google/firebase/iid/zzk;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
