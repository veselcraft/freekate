.class final synthetic Lcom/google/firebase/messaging/zzd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@19.0.1"

# interfaces
.implements Lcom/google/firebase/iid/zzav;


# instance fields
.field private final zza:Lcom/google/firebase/messaging/zze;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/zzd;->zza:Lcom/google/firebase/messaging/zze;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzd;->zza:Lcom/google/firebase/messaging/zze;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/zze;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
