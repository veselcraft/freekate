.class final Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;


# direct methods
.method public static synthetic $r8$lambda$gbvsk3ezeqRi-ugOdxQIIjQLC1k(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->lambda$onReceive$0(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;Lcom/google/android/exoplayer2/StreamVolumeManager$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .locals 0

    .line 214
    invoke-static {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->access$200(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->access$100(Lcom/google/android/exoplayer2/StreamVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    new-instance v0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
