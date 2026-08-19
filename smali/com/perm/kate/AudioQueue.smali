.class public Lcom/perm/kate/AudioQueue;
.super Ljava/lang/Object;
.source "AudioQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/AudioQueue$PollState;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private long_poll_url:Ljava/lang/String;

.field private pollThread:Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

.field private requestServerRunnable:Ljava/lang/Runnable;

.field private requestServerThread:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

.field private state:Lcom/perm/kate/AudioQueue$PollState;

.field private ts:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    iput-object v0, p0, Lcom/perm/kate/AudioQueue;->state:Lcom/perm/kate/AudioQueue$PollState;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioQueue;->handler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/perm/kate/AudioQueue$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioQueue$1;-><init>(Lcom/perm/kate/AudioQueue;)V

    iput-object v0, p0, Lcom/perm/kate/AudioQueue;->requestServerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioQueue;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->requestServer()V

    return-void
.end method

.method static synthetic access$102(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$PollState;)Lcom/perm/kate/AudioQueue$PollState;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/AudioQueue;->state:Lcom/perm/kate/AudioQueue$PollState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioQueue;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/AudioQueue;->long_poll_url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/AudioQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/AudioQueue;->long_poll_url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioQueue;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->stopPollThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioQueue;)Lcom/perm/kate/AudioQueue$AudioQueuePollThread;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/AudioQueue;->pollThread:Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$AudioQueuePollThread;)Lcom/perm/kate/AudioQueue$AudioQueuePollThread;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/AudioQueue;->pollThread:Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioQueue;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/AudioQueue;->requestServerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioQueue;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/AudioQueue;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/AudioQueue;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/AudioQueue;->ts:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioQueue;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->updateURLbyTS()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioQueue;Lorg/json/JSONObject;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioQueue;->parseEvents(Lorg/json/JSONObject;)V

    return-void
.end method

.method private parseEvents(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "events"

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 252
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "entity_type"

    .line 254
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio"

    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data"

    .line 256
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "uuid"

    .line 257
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "type"

    .line 261
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_name"

    .line 262
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "start"

    .line 263
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-direct {p0, v1}, Lcom/perm/kate/AudioQueue;->sendStartAudioSomewhereBroadcast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 269
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private requestServer()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->stopRequestServerThread()V

    .line 52
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/AudioQueue;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    new-instance v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;-><init>(Lcom/perm/kate/AudioQueue;)V

    iput-object v0, p0, Lcom/perm/kate/AudioQueue;->requestServerThread:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendStartAudioSomewhereBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.start_audio_somewhere"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "null"

    .line 290
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "device_name"

    .line 291
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private stopPollThread()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->pollThread:Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->pollThread:Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;->shouldStop:Z

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private stopRequestServerThread()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->requestServerThread:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->requestServerThread:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->shouldStop:Z

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/AudioQueue;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateURLbyTS()V
    .locals 7

    .line 278
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->ts:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 279
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->long_poll_url:Ljava/lang/String;

    const-string v1, "ts="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 280
    aget-object v3, v0, v2

    const-string v4, "&wait="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->ts:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioQueue;->long_poll_url:Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated LongPoll URL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/AudioQueue;->long_poll_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.AudioQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public sendStartEvent(Ljava/lang/String;)V
    .locals 2

    .line 296
    invoke-static {}, Lcom/perm/kate/Helper;->installation_id()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/perm/kate/AudioQueue$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/perm/kate/AudioQueue$2;-><init>(Lcom/perm/kate/AudioQueue;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 37
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioQueue;->state:Lcom/perm/kate/AudioQueue$PollState;

    sget-object v1, Lcom/perm/kate/AudioQueue$PollState;->Started:Lcom/perm/kate/AudioQueue$PollState;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "Kate.AudioQueue"

    const-string v2, "Starting AudioQueue"

    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object v1, p0, Lcom/perm/kate/AudioQueue;->state:Lcom/perm/kate/AudioQueue$PollState;

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->requestServer()V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "Kate.AudioQueue"

    const-string v1, "Stopping AudioQueue"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->stopPollThread()V

    .line 73
    invoke-direct {p0}, Lcom/perm/kate/AudioQueue;->stopRequestServerThread()V

    .line 74
    sget-object v0, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    iput-object v0, p0, Lcom/perm/kate/AudioQueue;->state:Lcom/perm/kate/AudioQueue$PollState;

    return-void
.end method
