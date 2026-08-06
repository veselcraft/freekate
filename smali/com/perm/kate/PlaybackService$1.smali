.class Lcom/perm/kate/PlaybackService$1;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/my/target/ads/instream/InstreamAudioAdPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PlaybackService;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public getAdAudioDuration()F
    .locals 2

    .prologue
    .line 218
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1}, Lcom/perm/kate/Player;->getDuration()I

    move-result v1

    int-to-float v0, v1

    .line 220
    .local v0, "dur":F
    return v0
.end method

.method public getAdAudioTimeElapsed()F
    .locals 2

    .prologue
    .line 225
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v1

    int-to-float v0, v1

    .line 227
    .local v0, "dur":F
    return v0
.end method

.method public getAdPlayerListener()Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    return-object v0
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    return-object v0
.end method

.method public pauseAdAudio()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public playAdAudio(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 243
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-interface {v0}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;->onAdAudioStarted()V

    .line 245
    return-void
.end method

.method public resumeAdAudio()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public setAdPlayerListener(Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;)V
    .locals 2
    .param p1, "adPlayerListener"    # Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iput-object p1, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    .line 238
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v1, v1, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-virtual {v0, v1}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 270
    return-void
.end method

.method public stopAdAudio()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
