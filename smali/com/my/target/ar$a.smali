.class Lcom/my/target/ar$a;
.super Ljava/lang/Object;
.source "InstreamAudioAdEngine.java"

# interfaces
.implements Lcom/my/target/aj$b;


# instance fields
.field final synthetic aR:Lcom/my/target/ar;


# direct methods
.method private constructor <init>(Lcom/my/target/ar;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/my/target/ar;Lcom/my/target/ar$1;)V
    .locals 0

    .line 496
    invoke-direct {p0, p1}, Lcom/my/target/ar$a;-><init>(Lcom/my/target/ar;)V

    return-void
.end method


# virtual methods
.method public a(FFLcom/my/target/co;)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->a(Lcom/my/target/ar;)Lcom/my/target/da;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->b(Lcom/my/target/ar;)Lcom/my/target/co;

    move-result-object v0

    if-ne v0, p3, :cond_1

    iget-object p3, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p3}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    iget-object p3, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p3}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object p3

    invoke-virtual {p3}, Lcom/my/target/instreamads/InstreamAudioAd;->getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 566
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onBannerTimeLeftChange(FFLcom/my/target/instreamads/InstreamAudioAd;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/my/target/co;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->a(Lcom/my/target/ar;)Lcom/my/target/da;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->b(Lcom/my/target/ar;)Lcom/my/target/co;

    move-result-object v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object p2, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p2}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/my/target/instreamads/InstreamAudioAd;->getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 580
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onError(Ljava/lang/String;Lcom/my/target/instreamads/InstreamAudioAd;)V

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->g(Lcom/my/target/ar;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/my/target/co;)V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->a(Lcom/my/target/ar;)Lcom/my/target/da;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->b(Lcom/my/target/ar;)Lcom/my/target/co;

    move-result-object v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->d(Lcom/my/target/ar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/ar;->a(Lcom/my/target/ar;Z)Z

    .line 508
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->e(Lcom/my/target/ar;)Lcom/my/target/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "can\'t send stat: context is null"

    .line 511
    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v1}, Lcom/my/target/ar;->a(Lcom/my/target/ar;)Lcom/my/target/da;

    move-result-object v1

    const-string v2, "impression"

    invoke-virtual {v1, v2}, Lcom/my/target/cv;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/my/target/it;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 519
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad shown, banner Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/my/target/instreamads/InstreamAudioAd;->getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 523
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v1}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onBannerStart(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lcom/my/target/co;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->a(Lcom/my/target/ar;)Lcom/my/target/da;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->b(Lcom/my/target/ar;)Lcom/my/target/co;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/my/target/instreamads/InstreamAudioAd;->getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v1}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onBannerComplete(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/my/target/co;)V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->a(Lcom/my/target/ar;)Lcom/my/target/da;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->b(Lcom/my/target/ar;)Lcom/my/target/co;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/my/target/instreamads/InstreamAudioAd;->getListener()Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v0}, Lcom/my/target/ar;->f(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {v1}, Lcom/my/target/ar;->c(Lcom/my/target/ar;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;->onBannerComplete(Lcom/my/target/instreamads/InstreamAudioAd;Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;)V

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/my/target/ar$a;->aR:Lcom/my/target/ar;

    invoke-static {p1}, Lcom/my/target/ar;->g(Lcom/my/target/ar;)V

    :cond_2
    :goto_0
    return-void
.end method
