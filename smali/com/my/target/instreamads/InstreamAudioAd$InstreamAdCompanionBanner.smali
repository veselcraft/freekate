.class public final Lcom/my/target/instreamads/InstreamAudioAd$InstreamAdCompanionBanner;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"


# direct methods
.method private constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBanner(Lcom/my/target/ci;)Lcom/my/target/instreamads/InstreamAudioAd$InstreamAdCompanionBanner;
    .locals 14

    .line 365
    new-instance v13, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAdCompanionBanner;

    invoke-virtual {p0}, Lcom/my/target/ch;->getWidth()I

    move-result v1

    .line 366
    invoke-virtual {p0}, Lcom/my/target/ch;->getHeight()I

    move-result v2

    .line 367
    invoke-virtual {p0}, Lcom/my/target/ci;->getAssetWidth()I

    move-result v3

    .line 368
    invoke-virtual {p0}, Lcom/my/target/ci;->getAssetHeight()I

    move-result v4

    .line 369
    invoke-virtual {p0}, Lcom/my/target/ci;->getExpandedWidth()I

    move-result v5

    .line 370
    invoke-virtual {p0}, Lcom/my/target/ci;->getExpandedHeight()I

    move-result v6

    .line 371
    invoke-virtual {p0}, Lcom/my/target/ci;->getStaticResource()Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual {p0}, Lcom/my/target/ci;->getIframeResource()Ljava/lang/String;

    move-result-object v8

    .line 373
    invoke-virtual {p0}, Lcom/my/target/ci;->getHtmlResource()Ljava/lang/String;

    move-result-object v9

    .line 374
    invoke-virtual {p0}, Lcom/my/target/ci;->getApiFramework()Ljava/lang/String;

    move-result-object v10

    .line 375
    invoke-virtual {p0}, Lcom/my/target/ci;->getAdSlotID()Ljava/lang/String;

    move-result-object v11

    .line 376
    invoke-virtual {p0}, Lcom/my/target/ci;->getRequired()Ljava/lang/String;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/my/target/instreamads/InstreamAudioAd$InstreamAdCompanionBanner;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method
