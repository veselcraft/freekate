.class public final Lcom/google/firebase/iid/zzd$zza;
.super Ljava/lang/ClassLoader;
.source "com.google.firebase:firebase-iid@@19.0.1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    const-string v0, "com.google.android.gms.iid.MessengerCompat"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Using renamed FirebaseIidMessengerCompat class"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    const-class p1, Lcom/google/firebase/iid/zzd;

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
