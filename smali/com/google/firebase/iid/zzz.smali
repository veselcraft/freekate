.class final synthetic Lcom/google/firebase/iid/zzz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/firebase/iid/zzv;

.field private final zzb:Lcom/google/firebase/iid/zzae;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzv;Lcom/google/firebase/iid/zzae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzz;->zza:Lcom/google/firebase/iid/zzv;

    iput-object p2, p0, Lcom/google/firebase/iid/zzz;->zzb:Lcom/google/firebase/iid/zzae;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzz;->zza:Lcom/google/firebase/iid/zzv;

    iget-object v1, p0, Lcom/google/firebase/iid/zzz;->zzb:Lcom/google/firebase/iid/zzae;

    .line 2
    iget v1, v1, Lcom/google/firebase/iid/zzae;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzv;->zza(I)V

    return-void
.end method
