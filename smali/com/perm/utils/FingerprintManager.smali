.class public Lcom/perm/utils/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/FingerprintManager$Callback;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/perm/utils/FingerprintManager$Callback;

.field private cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/perm/utils/FingerprintManager$Callback;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/perm/utils/FingerprintManager;->activity:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/perm/utils/FingerprintManager;->callback:Lcom/perm/utils/FingerprintManager$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/FingerprintManager;)Lcom/perm/utils/FingerprintManager$Callback;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/perm/utils/FingerprintManager;->callback:Lcom/perm/utils/FingerprintManager$Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/utils/FingerprintManager;)Landroid/app/Activity;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/perm/utils/FingerprintManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static hasEnrolledFingerprints(Landroid/app/Activity;)Z
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "fingerprint"

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 41
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    return p0
.end method

.method public static isHardwareDetected(Landroid/app/Activity;)Z
    .locals 3

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "fingerprint"

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_1

    return v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancelIdentify()V
    .locals 2

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/perm/utils/FingerprintManager;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1
    return-void
.end method

.method public startAuth()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/FingerprintManager;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 49
    new-instance v5, Lcom/perm/utils/FingerprintManager$1;

    invoke-direct {v5, p0}, Lcom/perm/utils/FingerprintManager$1;-><init>(Lcom/perm/utils/FingerprintManager;)V

    .line 72
    iget-object v0, p0, Lcom/perm/utils/FingerprintManager;->activity:Landroid/app/Activity;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/perm/utils/FingerprintManager;->cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method
