.class public interface abstract Lcom/my/target/nativeads/views/AppwallAdView$BannerVisibilityListener;
.super Ljava/lang/Object;
.source "AppwallAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/AppwallAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BannerVisibilityListener"
.end annotation


# virtual methods
.method public abstract onBannersShown(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativeAppwallBanner;",
            ">;)V"
        }
    .end annotation
.end method
