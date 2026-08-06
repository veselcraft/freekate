.class public interface abstract Lcom/my/target/ads/instream/InstreamAdPlayer$AdPlayerListener;
.super Ljava/lang/Object;
.source "InstreamAdPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAdPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdPlayerListener"
.end annotation


# virtual methods
.method public abstract onAdVideoCompleted()V
.end method

.method public abstract onAdVideoError(Ljava/lang/String;)V
.end method

.method public abstract onAdVideoPaused()V
.end method

.method public abstract onAdVideoResumed()V
.end method

.method public abstract onAdVideoStarted()V
.end method

.method public abstract onAdVideoStopped()V
.end method

.method public abstract onVolumeChanged(F)V
.end method
