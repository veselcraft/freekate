.class public interface abstract Lcom/my/target/ads/instream/InstreamAudioAdPlayer;
.super Ljava/lang/Object;
.source "InstreamAudioAdPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAdAudioDuration()F
.end method

.method public abstract getAdAudioTimeElapsed()F
.end method

.method public abstract getAdPlayerListener()Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;
.end method

.method public abstract getCurrentContext()Landroid/content/Context;
.end method

.method public abstract pauseAdAudio()V
.end method

.method public abstract playAdAudio(Landroid/net/Uri;)V
.end method

.method public abstract resumeAdAudio()V
.end method

.method public abstract setAdPlayerListener(Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stopAdAudio()V
.end method
