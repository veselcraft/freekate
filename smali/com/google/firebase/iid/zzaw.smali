.class final synthetic Lcom/google/firebase/iid/zzaw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzax;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaw;->zza:Lcom/google/firebase/iid/zzax;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/firebase/iid/zzaw;->zza:Lcom/google/firebase/iid/zzax;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/iid/zzax;->zza()V

    return-void
.end method
