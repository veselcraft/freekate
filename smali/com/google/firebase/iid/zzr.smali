.class final Lcom/google/firebase/iid/zzr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@19.0.1"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/iid/zzr;->zza:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/firebase/iid/zzr;->zzb:J

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzr;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/firebase/iid/zzr;->zzb:J

    return-wide v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 7
    instance-of v0, p1, Lcom/google/firebase/iid/zzr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    check-cast p1, Lcom/google/firebase/iid/zzr;

    .line 10
    iget-wide v2, p0, Lcom/google/firebase/iid/zzr;->zzb:J

    iget-wide v4, p1, Lcom/google/firebase/iid/zzr;->zzb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/zzr;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/iid/zzr;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/google/firebase/iid/zzr;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/firebase/iid/zzr;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final zza()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/iid/zzr;->zza:Ljava/lang/String;

    return-object v0
.end method
