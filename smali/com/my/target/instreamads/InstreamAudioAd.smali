.class public final Lcom/my/target/instreamads/InstreamAudioAd;
.super Lcom/my/target/common/BaseAd;
.source "InstreamAudioAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;
    }
.end annotation


# instance fields
.field private audioDuration:F

.field private final context:Landroid/content/Context;

.field private engine:Lcom/my/target/ar;

.field private listener:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

.field private final loadOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loadingTimeoutSeconds:I

.field private midpoints:[F

.field private player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

.field private section:Lcom/my/target/cx;

.field private userMidpoints:[F

.field private volume:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "instreamaudioads"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/my/target/common/BaseAd;-><init>(ILjava/lang/String;)V

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0xa

    .line 46
    iput p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadingTimeoutSeconds:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    iput p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->volume:F

    .line 55
    iput-object p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/my/target/common/BaseAd;->setTrackingEnvironmentEnabled(Z)V

    const-string p1, "InstreamAudioAd created. Version: 5.6.0"

    .line 57
    invoke-static {p1}, Lcom/my/target/ah;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/my/target/instreamads/InstreamAudioAd;->handleResult(Lcom/my/target/cx;Ljava/lang/String;)V

    return-void
.end method

.method private handleResult(Lcom/my/target/cx;Ljava/lang/String;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->listener:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    .line 308
    invoke-virtual {p1}, Lcom/my/target/cx;->bP()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->section:Lcom/my/target/cx;

    .line 315
    iget-object p2, p0, Lcom/my/target/common/BaseAd;->adConfig:Lcom/my/target/a;

    invoke-static {p0, p1, p2}, Lcom/my/target/ar;->a(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/cx;Lcom/my/target/a;)Lcom/my/target/ar;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    .line 316
    iget p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadingTimeoutSeconds:I

    invoke-virtual {p1, p2}, Lcom/my/target/ar;->e(I)V

    .line 317
    iget-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    iget p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->volume:F

    invoke-virtual {p1, p2}, Lcom/my/target/ar;->setVolume(F)V

    .line 318
    iget-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz p1, :cond_1

    .line 320
    iget-object p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    invoke-virtual {p2, p1}, Lcom/my/target/ar;->setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V

    .line 322
    :cond_1
    iget p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->audioDuration:F

    iget-object p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->userMidpoints:[F

    invoke-virtual {p0, p1, p2}, Lcom/my/target/instreamads/InstreamAudioAd;->configureMidpoints(F[F)V

    .line 323
    iget-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->listener:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    invoke-interface {p1, p0}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onLoad(Lcom/my/target/instreamads/InstreamAudioAd;)V

    goto :goto_1

    .line 310
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->listener:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    if-nez p2, :cond_3

    const-string p2, "no ad"

    :cond_3
    invoke-interface {p1, p2, p0}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private start(Ljava/lang/String;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    if-nez v0, :cond_0

    const-string p1, "Unable to start ad: not loaded yet"

    .line 332
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/my/target/ar;->getPlayer()Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Unable to start ad: player has not set"

    .line 337
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    invoke-virtual {v0, p1}, Lcom/my/target/ar;->start(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configureMidpoints(F[F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const-string p1, "midpoints are not configured, duration is not set or <= zero"

    .line 166
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->midpoints:[F

    if-eqz v0, :cond_1

    const-string p1, "midpoints already configured"

    .line 171
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_1
    iput-object p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->userMidpoints:[F

    .line 175
    iput p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->audioDuration:F

    .line 176
    iget-object p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->section:Lcom/my/target/cx;

    if-eqz p2, :cond_2

    const-string v0, "midroll"

    .line 178
    invoke-virtual {p2, v0}, Lcom/my/target/cx;->y(Ljava/lang/String;)Lcom/my/target/da;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 181
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->userMidpoints:[F

    invoke-static {p2, v0, p1}, Lcom/my/target/io;->a(Lcom/my/target/da;[FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->midpoints:[F

    .line 182
    iget-object p2, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    if-eqz p2, :cond_2

    .line 184
    invoke-virtual {p2, p1}, Lcom/my/target/ar;->a([F)V

    :cond_2
    return-void
.end method

.method public getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->listener:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    return-object v0
.end method

.method public load()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadOnce:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " instance just loaded once, don\'t call load() more than one time per instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->b(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/my/target/common/BaseAd;->adConfig:Lcom/my/target/a;

    iget v1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadingTimeoutSeconds:I

    invoke-static {v0, v1}, Lcom/my/target/i;->a(Lcom/my/target/a;I)Lcom/my/target/b;

    move-result-object v0

    new-instance v1, Lcom/my/target/instreamads/InstreamAudioAd$1;

    invoke-direct {v1, p0}, Lcom/my/target/instreamads/InstreamAudioAd$1;-><init>(Lcom/my/target/instreamads/InstreamAudioAd;)V

    invoke-virtual {v0, v1}, Lcom/my/target/b;->a(Lcom/my/target/b$b;)Lcom/my/target/b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->context:Landroid/content/Context;

    .line 154
    invoke-virtual {v0, v1}, Lcom/my/target/b;->a(Landroid/content/Context;)Lcom/my/target/b;

    return-void
.end method

.method public setListener(Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->listener:Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    return-void
.end method

.method public setLoadingTimeout(I)V
    .locals 2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const-string p1, "unable to set ad loading timeout < 5, set to 5 seconds"

    .line 79
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 80
    iput v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadingTimeoutSeconds:I

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad loading timeout set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 85
    iput p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadingTimeoutSeconds:I

    .line 87
    :goto_0
    iget-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    if-eqz p1, :cond_1

    .line 89
    iget v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->loadingTimeoutSeconds:I

    invoke-virtual {p1, v0}, Lcom/my/target/ar;->e(I)V

    :cond_1
    return-void
.end method

.method public setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/my/target/instreamads/InstreamAudioAd;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    .line 101
    iget-object v0, p0, Lcom/my/target/instreamads/InstreamAudioAd;->engine:Lcom/my/target/ar;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/my/target/ar;->setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V

    :cond_0
    return-void
.end method

.method public startPreroll()V
    .locals 1

    const-string v0, "preroll"

    .line 251
    invoke-direct {p0, v0}, Lcom/my/target/instreamads/InstreamAudioAd;->start(Ljava/lang/String;)V

    return-void
.end method
