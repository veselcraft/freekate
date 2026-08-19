.class Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoisyAudioStreamReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method private constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V
    .locals 0

    .line 1078
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;-><init>(Lcom/perm/kate/PlaybackService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1081
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Kate.PlaybackService"

    const-string p2, "ACTION_AUDIO_BECOMING_NOISY"

    .line 1082
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_0

    .line 1084
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$1100(Lcom/perm/kate/PlaybackService;)V

    .line 1085
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$1000(Lcom/perm/kate/PlaybackService;)V

    :cond_0
    return-void
.end method
