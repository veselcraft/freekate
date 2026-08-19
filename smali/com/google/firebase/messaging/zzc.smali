.class public final Lcom/google/firebase/messaging/zzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@19.0.1"


# instance fields
.field public final zza:Landroidx/core/app/NotificationCompat$Builder;

.field public final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/messaging/zzc;->zza:Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/messaging/zzc;->zzb:Ljava/lang/String;

    return-void
.end method
