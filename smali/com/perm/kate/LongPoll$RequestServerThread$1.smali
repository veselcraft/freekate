.class Lcom/perm/kate/LongPoll$RequestServerThread$1;
.super Lcom/perm/kate/session/Callback;
.source "LongPoll.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LongPoll$RequestServerThread;


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll$RequestServerThread;Landroid/app/Activity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-boolean v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get long poll server, will retry later. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.LongPoll"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v1, v0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    instance-of p1, p1, Lcom/perm/kate/api/KException;

    if-eqz p1, :cond_1

    const-wide/32 v0, 0x1d4c0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xea60

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v2, p1, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-boolean v1, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    if-eqz v1, :cond_0

    return-void

    .line 163
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    .line 164
    iget-object v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/LongPoll;->key:Ljava/lang/String;

    const/4 v1, 0x1

    .line 165
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/LongPoll;->server:Ljava/lang/String;

    const/4 v1, 0x2

    .line 166
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, v0, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v0, v0, Lcom/perm/kate/LongPoll;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v1, v1, Lcom/perm/kate/LongPoll;->server:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v0, v0, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.LongPoll"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {p1}, Lcom/perm/kate/LongPoll;->access$100(Lcom/perm/kate/LongPoll;)V

    .line 169
    iget-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    new-instance v0, Lcom/perm/kate/LongPoll$PollThread;

    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-direct {v0, v1}, Lcom/perm/kate/LongPoll$PollThread;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v0, p1, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    .line 170
    iget-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object p1, p1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object p1, p1, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
