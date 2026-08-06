.class public interface abstract Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;
.super Ljava/lang/Object;
.source "NativeAppwallAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/NativeAppwallAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppwallAdListener"
.end annotation


# virtual methods
.method public abstract onClick(Lcom/my/target/nativeads/banners/NativeAppwallBanner;Lcom/my/target/nativeads/NativeAppwallAd;)V
.end method

.method public abstract onDismissDialog(Lcom/my/target/nativeads/NativeAppwallAd;)V
.end method

.method public abstract onLoad(Lcom/my/target/nativeads/NativeAppwallAd;)V
.end method

.method public abstract onNoAd(Ljava/lang/String;Lcom/my/target/nativeads/NativeAppwallAd;)V
.end method
