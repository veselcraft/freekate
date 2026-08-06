.class Lcom/perm/kate/PlaybackService$3;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
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
    .line 802
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    .line 829
    const-string v1, "Kate.PlaybackService"

    const-string v2, "onCompletion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v1, v1, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-interface {v1}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;->onAdAudioCompleted()V

    .line 846
    :goto_0
    return-void

    .line 835
    :cond_0
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 836
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 837
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onCompletion()V

    goto :goto_1

    .line 839
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_2
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 840
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v1}, Lcom/perm/utils/LastFmHelper;->sendBroadcastComplete(Lcom/perm/kate/api/Audio;)V

    .line 842
    const/4 v1, 0x1

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 843
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v1}, Lcom/perm/kate/PlaybackService;->access$900(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0

    .line 845
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v1}, Lcom/perm/kate/PlaybackService;->access$700(Lcom/perm/kate/PlaybackService;)V

    goto :goto_0
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 850
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v1, v1, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

    const-string v2, "Some error"

    invoke-interface {v1, v2}, Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;->onAdAudioError(Ljava/lang/String;)V

    .line 862
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v1}, Lcom/perm/kate/PlaybackService;->access$1000(Lcom/perm/kate/PlaybackService;)V

    .line 855
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 856
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 857
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onError()V

    goto :goto_1

    .line 860
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_2
    const/4 v1, 0x0

    sput v1, Lcom/perm/kate/PlaybackService;->position:I

    .line 861
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-virtual {v1}, Lcom/perm/kate/PlaybackService;->giveUpAudioFocus()V

    goto :goto_0
.end method

.method public onNextEpisode()V
    .locals 0

    .prologue
    .line 873
    return-void
.end method

.method public onPrepared()V
    .locals 6

    .prologue
    .line 807
    :try_start_0
    sget-boolean v2, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v2, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    const-string v2, "Kate.PlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared:position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/perm/kate/PlaybackService;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/Player;->setVolume(FF)V

    .line 811
    sget v2, Lcom/perm/kate/PlaybackService;->position:I

    if-eqz v2, :cond_2

    .line 812
    const-string v2, "Kate.PlaybackService"

    const-string v3, "seeking"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    sget v3, Lcom/perm/kate/PlaybackService;->position:I

    invoke-virtual {v2, v3}, Lcom/perm/kate/Player;->seek(I)V

    .line 814
    const/4 v2, 0x0

    sput v2, Lcom/perm/kate/PlaybackService;->position:I

    .line 817
    :cond_2
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->getDuration()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/perm/kate/api/Audio;->duration:J

    .line 818
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$800()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 819
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 820
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v2}, Lcom/perm/kate/Player$PlayerCallback;->onPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 821
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :catch_0
    move-exception v1

    .line 822
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 823
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartBuffering()V
    .locals 3

    .prologue
    .line 866
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 867
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 868
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStartBuffering()V

    goto :goto_0

    .line 869
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_1
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$1100(Lcom/perm/kate/PlaybackService;)V

    .line 878
    return-void
.end method
