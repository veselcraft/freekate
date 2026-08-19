.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SimpleExoPlayer.java"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private audioSessionId:I

.field private audioVolume:F

.field private final componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private final constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

.field private final deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private ownedSurface:Landroid/view/Surface;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field protected final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private skipSilenceEnabled:Z

.field private final streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceWidth:I

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private final wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

.field private final wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V
    .locals 33

    move-object/from16 v15, p0

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 669
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 671
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->applicationContext:Landroid/content/Context;

    .line 672
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v7

    iput-object v7, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 673
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 674
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 675
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I

    move-result v2

    iput v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 676
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v2

    iput-boolean v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    .line 677
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->detachSurfaceTimeoutMs:J

    .line 678
    new-instance v14, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    const/4 v6, 0x0

    invoke-direct {v14, v15, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v14, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 679
    new-instance v5, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v5, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 680
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 681
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 682
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 683
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 684
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 685
    new-instance v4, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 687
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object v8

    move-object v9, v4

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 695
    iput v3, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 696
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v8, 0x15

    const/4 v13, 0x0

    if-ge v3, v8, :cond_0

    .line 697
    invoke-direct {v15, v13}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->initializeKeepSessionIdAudioTrack(I)I

    move-result v1

    iput v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    goto :goto_0

    .line 699
    :cond_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/C;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 701
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v11, 0x1

    .line 702
    iput-boolean v11, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->throwsWhenUsingWrongThread:Z

    .line 705
    new-instance v1, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/16 v9, 0xf

    aput v9, v3, v13

    const/16 v9, 0x10

    aput v9, v3, v11

    const/16 v9, 0x11

    const/4 v12, 0x2

    aput v9, v3, v12

    const/16 v9, 0x12

    const/4 v10, 0x3

    aput v9, v3, v10

    const/16 v9, 0x13

    const/4 v8, 0x4

    aput v9, v3, v8

    const/4 v9, 0x5

    const/16 v17, 0x14

    aput v17, v3, v9

    const/4 v9, 0x6

    const/16 v16, 0x15

    aput v16, v3, v9

    const/16 v16, 0x16

    move-object/from16 v18, v0

    const/4 v0, 0x7

    aput v16, v3, v0

    .line 707
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v17

    .line 717
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 720
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v16

    .line 721
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v19

    .line 722
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object v20

    .line 723
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v21

    .line 725
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v22

    .line 726
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object v23

    .line 727
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    move-result-object v24

    .line 728
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v25

    .line 729
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v27

    .line 730
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/Clock;

    move-result-object v28

    .line 731
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/os/Looper;

    move-result-object v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v3

    move-object v0, v3

    move-object/from16 v3, v16

    move-object/from16 v30, v4

    move-object/from16 v4, v19

    move-object/from16 v31, v5

    move-object/from16 v5, v20

    move-object/from16 v19, v6

    move-object/from16 v6, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-wide/from16 v11, v25

    const/16 v20, 0x0

    move/from16 v13, v27

    move-object/from16 v32, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v16, p0

    :try_start_1
    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    move-object/from16 v2, v32

    .line 734
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 735
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    .line 736
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 737
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 740
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 741
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, v30

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 742
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 743
    new-instance v0, Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 744
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    goto :goto_1

    :cond_2
    move-object/from16 v6, v19

    :goto_1
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 745
    new-instance v0, Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 746
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 747
    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    .line 748
    new-instance v2, Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    .line 749
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 750
    new-instance v2, Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    .line 751
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 752
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    .line 753
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 755
    iget v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x66

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 756
    iget v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 757
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 758
    iget v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    const/16 v0, 0x65

    .line 759
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    move-object/from16 v0, v31

    const/4 v2, 0x6

    .line 760
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v3, 0x7

    .line 762
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 765
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 766
    throw v0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->notifySkipSilenceEnabledChanged()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolderSurfaceIsVideoOutput:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$4400(ZI)I
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZII)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/StreamVolumeManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/device/DeviceInfo;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updateWakeAndWifiLock()V

    return-void
.end method

.method private static createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 3

    .line 2091
    new-instance v0, Lcom/google/android/exoplayer2/device/DeviceInfo;

    .line 2093
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v1

    .line 2094
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/device/DeviceInfo;-><init>(III)V

    return-object v0
.end method

.method private static getPlayWhenReadyChangeReason(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private initializeKeepSessionIdAudioTrack(I)I
    .locals 9

    .line 2067
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2068
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 2070
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 2077
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2087
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 2

    .line 1972
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHeight:I

    if-eq p2, v0, :cond_1

    .line 1973
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceWidth:I

    .line 1974
    iput p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHeight:I

    .line 1975
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onSurfaceSizeChanged(II)V

    .line 1976
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoListener;

    .line 1977
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener;->onSurfaceSizeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifySkipSilenceEnabledChanged()V
    .locals 3

    .line 1989
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onSkipSilenceEnabledChanged(Z)V

    .line 1990
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 1991
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioListener;->onSkipSilenceEnabledChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 1888
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1889
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1890
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1894
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 1896
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1897
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1898
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .locals 5

    .line 2049
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2050
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2051
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 3

    .line 1983
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float v0, v0, v1

    .line 1984
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1903
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1904
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1905
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 8

    .line 1911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1913
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1914
    iget-object v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1916
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    const/4 v6, 0x1

    .line 1917
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 1918
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 1919
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 1914
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1922
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 1926
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1927
    iget-wide v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->detachSurfaceTimeoutMs:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1933
    :catch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    new-instance v1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    .line 1935
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 1933
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_2

    .line 1930
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1938
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_3

    .line 1940
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 1941
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    .line 1944
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 2005
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(ZII)V

    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 5

    .line 2009
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2024
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2013
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->experimentalIsSleepingForOffload()Z

    move-result v0

    .line 2014
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2016
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    goto :goto_2

    .line 2020
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2021
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    :goto_2
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 4

    .line 2031
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 2032
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2039
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 2034
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_1

    .line 2043
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2044
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    .line 2041
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 970
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDeviceListener(Lcom/google/android/exoplayer2/device/DeviceListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1808
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1312
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1298
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V

    .line 1300
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 1301
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 1302
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    .line 1303
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addDeviceListener(Lcom/google/android/exoplayer2/device/DeviceListener;)V

    .line 1305
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public addMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1268
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1247
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1184
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 1

    .line 777
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v0

    return v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1711
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1712
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1741
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1742
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1729
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1730
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1735
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1736
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1687
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1688
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1705
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1706
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 1681
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1682
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1693
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1694
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1699
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1700
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1512
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1513
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1530
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1531
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1548
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1549
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1717
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1718
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1723
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1724
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public prepare()V
    .locals 3

    .line 1372
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1373
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 1375
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 1377
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result v2

    .line 1376
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    .line 1378
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1606
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1607
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1609
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1612
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->release()V

    .line 1613
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 1614
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    .line 1615
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->release()V

    .line 1616
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->release()V

    .line 1617
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->release()V

    .line 1618
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 1619
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 1620
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1621
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    .line 1623
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    if-nez v0, :cond_2

    .line 1627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    return-void

    .line 1624
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v1
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 1560
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1561
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 1562
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1

    .line 1405
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1406
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 1503
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1505
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 1507
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result v1

    .line 1506
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1054
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1055
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1056
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1059
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 1060
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendVolumeToRenderers()V

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVolumeChanged(F)V

    .line 1062
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 1063
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioListener;->onVolumeChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1598
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1599
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    .line 1600
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(Z)V

    .line 1601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    return-void
.end method
