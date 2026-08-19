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

    .line 894
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    :try_start_0
    const-string v0, "Kate.PlaybackService"

    const-string v1, "onCompletion"

    .line 924
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;

    invoke-interface {v0}, Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;->onAdAudioCompleted()V

    return-void

    .line 930
    :cond_0
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStop()V

    .line 931
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 932
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 933
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onCompletion()V

    goto :goto_0

    .line 935
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 936
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/LastFmHelper;->sendBroadcastComplete(Lcom/perm/kate/api/Audio;)V

    .line 937
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 938
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 939
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    return-void

    .line 943
    :cond_4
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 944
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$800(Lcom/perm/kate/PlaybackService;)V

    goto :goto_2

    .line 946
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$600(Lcom/perm/kate/PlaybackService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 948
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 949
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onError()V
    .locals 3

    .line 955
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->adPlayerListener:Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;

    const-string v1, "Some error"

    invoke-interface {v0, v1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;->onAdAudioError(Ljava/lang/String;)V

    return-void

    .line 959
    :cond_0
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStop()V

    .line 960
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$900(Lcom/perm/kate/PlaybackService;)V

    .line 961
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 962
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 963
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onError()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 966
    sput v0, Lcom/perm/kate/PlaybackService;->position:I

    .line 967
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-virtual {v0}, Lcom/perm/kate/PlaybackService;->giveUpAudioFocus()V

    return-void
.end method

.method public onNextEpisode()V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 3

    const-string v0, "Kate.PlaybackService"

    .line 899
    :try_start_0
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v1, :cond_0

    return-void

    .line 901
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared:position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/kate/PlaybackService;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lcom/perm/kate/Player;->setVolume(FF)V

    .line 903
    sget v1, Lcom/perm/kate/PlaybackService;->position:I

    if-eqz v1, :cond_1

    const-string v1, "seeking"

    .line 904
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    sget v1, Lcom/perm/kate/PlaybackService;->position:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->seek(I)V

    const/4 v0, 0x0

    .line 906
    sput v0, Lcom/perm/kate/PlaybackService;->position:I

    .line 910
    :cond_1
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 911
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 912
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onPrepared()V

    goto :goto_0

    .line 913
    :cond_3
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 914
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 917
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onStartBuffering()V
    .locals 3

    .line 972
    invoke-static {}, Lcom/perm/kate/PlaybackService;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 973
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 974
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStartBuffering()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$3;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$1000(Lcom/perm/kate/PlaybackService;)V

    return-void
.end method
