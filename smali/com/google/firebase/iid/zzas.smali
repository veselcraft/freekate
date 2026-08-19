.class final Lcom/google/firebase/iid/zzas;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:J

.field private final zzb:Landroid/os/PowerManager$WakeLock;

.field private final zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzd:Lcom/google/firebase/iid/zzau;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzaf;Lcom/google/firebase/iid/zzau;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/iid/zzas;->zzd:Lcom/google/firebase/iid/zzau;

    .line 4
    iput-wide p4, p0, Lcom/google/firebase/iid/zzas;->zza:J

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private final zzc()Z
    .locals 8

    const-string v0, "FirebaseInstanceId"

    .line 39
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb()Lcom/google/firebase/iid/zzap;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzap;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 42
    :try_start_0
    iget-object v4, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v1, "Token retrieval failed: null"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v5, 0x3

    .line 46
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Token successfully retrieved"

    .line 47
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    .line 48
    iget-object v1, v1, Lcom/google/firebase/iid/zzap;->zza:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    const-string v1, "[DEFAULT]"

    .line 50
    iget-object v6, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Invoking onNewToken for app: "

    .line 52
    iget-object v5, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "token"

    .line 54
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.firebase.MESSAGING_EVENT"

    .line 57
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-direct {v6, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "wrapped_intent"

    .line 59
    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v3

    :catch_0
    const-string v1, "Token retrieval failed with SecurityException. Will retry token retrieval"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_1
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 65
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INTERNAL_SERVER_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 68
    :cond_7
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 69
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Will retry token retrieval"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 71
    :cond_8
    throw v1

    :cond_9
    :goto_1
    const-string v1, "Token retrieval failed without exception message. Will retry token retrieval"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzan;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    .line 12
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzf()Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzan;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    .line 17
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzan;->zzb(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zzb()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    new-instance v1, Lcom/google/firebase/iid/zzar;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzar;-><init>(Lcom/google/firebase/iid/zzas;)V

    .line 20
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzar;->zza()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzan;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    return-void

    .line 24
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/google/firebase/iid/zzas;->zzc()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzd:Lcom/google/firebase/iid/zzau;

    iget-object v2, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzau;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    goto :goto_0

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v2, p0, Lcom/google/firebase/iid/zzas;->zza:J

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_0
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzan;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "FirebaseInstanceId"

    .line 31
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Won\'t retry the operation."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzan;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    return-void

    .line 36
    :goto_1
    invoke-static {}, Lcom/google/firebase/iid/zzan;->zza()Lcom/google/firebase/iid/zzan;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzan;->zza(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    iget-object v1, p0, Lcom/google/firebase/iid/zzas;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    throw v0
.end method

.method final zza()Landroid/content/Context;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/iid/zzas;->zzc:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzas;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
