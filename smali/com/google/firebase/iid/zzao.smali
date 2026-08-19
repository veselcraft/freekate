.class final Lcom/google/firebase/iid/zzao;
.super Lcom/google/android/gms/internal/firebase_messaging/zze;
.source "com.google.firebase:firebase-iid@@19.0.1"


# instance fields
.field private final synthetic zza:Lcom/google/firebase/iid/zzal;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzal;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/zzao;->zza:Lcom/google/firebase/iid/zzal;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_messaging/zze;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/iid/zzao;->zza:Lcom/google/firebase/iid/zzal;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzal;Landroid/os/Message;)V

    return-void
.end method
