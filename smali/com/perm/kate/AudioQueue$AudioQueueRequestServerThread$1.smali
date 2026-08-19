.class Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;
.super Lcom/perm/kate/session/Callback;
.source "AudioQueue.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;Landroid/app/Activity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-boolean v0, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->shouldStop:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get audio queue params. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.AudioQueue"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    sget-object v0, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    invoke-static {p1, v0}, Lcom/perm/kate/AudioQueue;->access$102(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$PollState;)Lcom/perm/kate/AudioQueue$PollState;

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-boolean v1, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->shouldStop:Z

    if-eqz v1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/AudioQueue;->access$202(Lcom/perm/kate/AudioQueue;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Api AudioSubscribeToQueue Response url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v0}, Lcom/perm/kate/AudioQueue;->access$200(Lcom/perm/kate/AudioQueue;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.AudioQueue"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {p1}, Lcom/perm/kate/AudioQueue;->access$300(Lcom/perm/kate/AudioQueue;)V

    .line 113
    iget-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    new-instance v0, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    iget-object v1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-direct {v0, v1}, Lcom/perm/kate/AudioQueue$AudioQueuePollThread;-><init>(Lcom/perm/kate/AudioQueue;)V

    invoke-static {p1, v0}, Lcom/perm/kate/AudioQueue;->access$402(Lcom/perm/kate/AudioQueue;Lcom/perm/kate/AudioQueue$AudioQueuePollThread;)Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    .line 114
    iget-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {p1}, Lcom/perm/kate/AudioQueue;->access$400(Lcom/perm/kate/AudioQueue;)Lcom/perm/kate/AudioQueue$AudioQueuePollThread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 116
    iget-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {p1}, Lcom/perm/kate/AudioQueue;->access$600(Lcom/perm/kate/AudioQueue;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v0}, Lcom/perm/kate/AudioQueue;->access$500(Lcom/perm/kate/AudioQueue;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object p1, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {p1}, Lcom/perm/kate/AudioQueue;->access$600(Lcom/perm/kate/AudioQueue;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread$1;->this$1:Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/AudioQueue$AudioQueueRequestServerThread;->this$0:Lcom/perm/kate/AudioQueue;

    invoke-static {v0}, Lcom/perm/kate/AudioQueue;->access$500(Lcom/perm/kate/AudioQueue;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
