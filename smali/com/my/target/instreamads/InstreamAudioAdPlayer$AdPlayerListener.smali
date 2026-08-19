.class public interface abstract Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;
.super Ljava/lang/Object;
.source "InstreamAudioAdPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/instreamads/InstreamAudioAdPlayer;
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

.method public abstract onAdAudioStarted()V
.end method
