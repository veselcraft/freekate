.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"


# instance fields
.field private exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

.field private final keyRequestParameters:Ljava/util/HashMap;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private multiSession:Z

.field private playClearSamplesWithoutKeys:Z

.field private sessionKeepaliveMs:J

.field private useDrmSessionsForClearContentTrackTypes:[I

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    .line 100
    sget-object v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 102
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    const-wide/32 v0, 0x493e0

    .line 103
    iput-wide v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 13

    .line 224
    new-instance v12, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->multiSession:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    const/4 v11, 0x0

    move-object v0, v12

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    return-object v12
.end method

.method public setMultiSession(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->multiSession:Z

    return-object p0
.end method

.method public setPlayClearSamplesWithoutKeys(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    return-object p0
.end method

.method public varargs setUseDrmSessionsForClearContent([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;
    .locals 6

    .line 169
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 170
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    return-object p0
.end method

.method public setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;
    .locals 0

    .line 133
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    .line 134
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    return-object p0
.end method
