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

    .prologue
    .line 969
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/perm/kate/PlaybackService;
    .param p2, "x1"    # Lcom/perm/kate/PlaybackService$1;

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;-><init>(Lcom/perm/kate/PlaybackService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 972
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const-string v0, "Kate.PlaybackService"

    const-string v1, "ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$1200(Lcom/perm/kate/PlaybackService;)V

    .line 976
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$1100(Lcom/perm/kate/PlaybackService;)V

    .line 979
    :cond_0
    return-void
.end method
