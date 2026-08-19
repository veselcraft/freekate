.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;


# instance fields
.field private drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

.field private drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private final lock:Ljava/lang/Object;

.field private manager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method private createManager(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 100
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    .line 102
    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 108
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    sget-object v3, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 112
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->setMultiSession(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 113
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->setPlayClearSamplesWithoutKeys(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    .line 114
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->setUseDrmSessionsForClearContent([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->build(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 2

    .line 78
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz p1, :cond_2

    .line 81
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->createManager(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->manager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->manager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 82
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-object p1
.end method
