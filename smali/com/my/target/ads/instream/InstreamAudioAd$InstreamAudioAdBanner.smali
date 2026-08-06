.class public interface abstract Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdBanner;
.super Ljava/lang/Object;
.source "InstreamAudioAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAudioAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstreamAudioAdBanner"
.end annotation


# virtual methods
.method public abstract getAdText()Ljava/lang/String;
.end method

.method public abstract getDuration()F
.end method

.method public abstract getInstreamAdCompanionBanners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/ads/instream/models/InstreamAdCompanionBanner;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAllowSeek()Z
.end method

.method public abstract isAllowSkip()Z
.end method

.method public abstract isAllowTrackChange()Z
.end method
