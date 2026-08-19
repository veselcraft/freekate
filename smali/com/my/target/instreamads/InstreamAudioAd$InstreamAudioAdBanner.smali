.class public final Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"


# instance fields
.field public final companionBanners:Ljava/util/List;


# direct methods
.method private constructor <init>(ZZZFLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p8, p0, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;->companionBanners:Ljava/util/List;

    return-void
.end method

.method public static newBanner(Lcom/my/target/co;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;
    .locals 10

    .line 424
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-virtual {p0}, Lcom/my/target/co;->getCompanionBanners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/ci;

    .line 427
    invoke-static {v1}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAdCompanionBanner;->newBanner(Lcom/my/target/ci;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAdCompanionBanner;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_0
    new-instance v9, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;

    invoke-virtual {p0}, Lcom/my/target/co;->isAllowSeek()Z

    move-result v1

    .line 431
    invoke-virtual {p0}, Lcom/my/target/co;->isAllowSkip()Z

    move-result v2

    .line 432
    invoke-virtual {p0}, Lcom/my/target/co;->isAllowTrackChange()Z

    move-result v3

    .line 433
    invoke-virtual {p0}, Lcom/my/target/ch;->getDuration()F

    move-result v4

    .line 434
    invoke-virtual {p0}, Lcom/my/target/co;->getAdText()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-virtual {p0}, Lcom/my/target/co;->isAllowPause()Z

    move-result v6

    .line 436
    invoke-virtual {p0}, Lcom/my/target/co;->getShareButtonDatas()Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdBanner;-><init>(ZZZFLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/List;)V

    return-object v9
.end method
