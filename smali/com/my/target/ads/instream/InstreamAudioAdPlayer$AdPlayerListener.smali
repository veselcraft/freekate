.class public interface abstract Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;
.super Ljava/lang/Object;
.source "InstreamAudioAdPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/instream/InstreamAudioAdPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdPlayerListener"
.end annotation


# virtual methods
.method public abstract onAdAudioCompleted()V
.end method

.method public abstract onAdAudioError(Ljava/lang/String;)V
.end method

.method public abstract onAdAudioPaused()V
.end method

.method public abstract onAdAudioResumed()V
.end method

.method public abstract onAdAudioStarted()V
.end method

.method public abstract onAdAudioStopped()V
.end method

.method public abstract onVolumeChanged(F)V
.end method
