.class Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;
.super Ljava/lang/Thread;
.source "AudioQueue.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field public shouldStop:Z

.field final synthetic this$0:Lcom/perm/kate/AudioQueue;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AudioQueue;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    const-string p1, "Kate.AudioQueueRequestServerThread"

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->shouldStop:Z

    .line 105
    new-instance p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;-><init>(Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->shouldStop:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->callback:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->audioSubscribeToQueue(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    sget-object v1, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    invoke-static {v0, v1}, Lcom/perm/kate/AudioQueue;->access$102(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$PollState;)Lcom/perm/kate/AudioQueue$PollState;

    :goto_0
    return-void
.end method
