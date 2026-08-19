.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSession;
.super Ljava/lang/Object;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    }
.end annotation


# virtual methods
.method public abstract acquire(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
.end method

.method public abstract getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
.end method

.method public abstract getSchemeUuid()Ljava/util/UUID;
.end method

.method public abstract getState()I
.end method

.method public abstract playClearSamplesWithoutKeys()Z
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
.end method

.method public abstract release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
.end method
