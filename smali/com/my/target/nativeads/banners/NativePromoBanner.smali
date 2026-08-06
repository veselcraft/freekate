.class public interface abstract Lcom/my/target/nativeads/banners/NativePromoBanner;
.super Ljava/lang/Object;
.source "NativePromoBanner.java"


# virtual methods
.method public abstract getAdvertisingLabel()Ljava/lang/String;
.end method

.method public abstract getAgeRestrictions()Ljava/lang/String;
.end method

.method public abstract getCards()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getCtaText()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisclaimer()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getIcon()Lcom/my/target/nativeads/models/ImageData;
.end method

.method public abstract getImage()Lcom/my/target/nativeads/models/ImageData;
.end method

.method public abstract getNavigationType()Ljava/lang/String;
.end method

.method public abstract getRating()F
.end method

.method public abstract getSubcategory()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVotes()I
.end method

.method public abstract hasVideo()Z
.end method
