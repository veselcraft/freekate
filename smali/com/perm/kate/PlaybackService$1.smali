.class Lcom/perm/kate/PlaybackService$1;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/my/target/instreamads/InstreamAudioAdPlayer;


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

    .line 220
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdAudioDuration()F
    .locals 1

    .line 228
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->getDuration()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getAdAudioPosition()F
    .locals 1

    .line 235
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    return-object v0
.end method

.method public playAdAudio(Landroid/net/Uri;)V
    .locals 1

    .line 253
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object p1, p1, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-interface {p1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;->onAdAudioStarted()V

    return-void
.end method

.method public setAdPlayerListener(Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iput-object p1, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;

    .line 248
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/PlaybackService$1;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-virtual {p1, v0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    return-void
.end method

.method public stopAdAudio()V
    .locals 0

    return-void
.end method
