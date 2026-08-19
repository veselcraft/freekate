.class final Lcom/google/firebase/iid/zzt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"

# interfaces
.implements Lcom/google/firebase/iid/InstanceIdResult;


# instance fields
.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/firebase/iid/zzt;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/iid/zzt;->zzb:Ljava/lang/String;

    return-object v0
.end method
