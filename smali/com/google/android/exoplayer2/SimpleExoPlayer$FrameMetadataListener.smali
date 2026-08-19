.class final Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .locals 0

    .line 2412
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2436
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_0

    .line 2433
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 2430
    :cond_2
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    :goto_0
    return-void
.end method
