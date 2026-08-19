.class public interface abstract Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# virtual methods
.method public abstract closeSession([B)V
.end method

.method public abstract createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
.end method

.method public abstract getExoMediaCryptoType()Ljava/lang/Class;
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
.end method

.method public abstract getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
.end method

.method public abstract provideKeyResponse([B[B)[B
.end method

.method public abstract provideProvisionResponse([B)V
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
.end method

.method public abstract release()V
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
.end method
