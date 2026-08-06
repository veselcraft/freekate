.class Lcom/perm/kate/LongPoll$RequestServerThread$1;
.super Lcom/perm/kate/session/Callback;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LongPoll$RequestServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LongPoll$RequestServerThread;


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll$RequestServerThread;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/LongPoll$RequestServerThread;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-boolean v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "Kate.LongPoll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get long poll server, will retry later. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v0, v0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v1, v1, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v0, v0, Lcom/perm/kate/LongPoll;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v1, v1, Lcom/perm/kate/LongPoll;->requestServerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-boolean v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    if-eqz v1, :cond_0

    .line 150
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 142
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 143
    .local v0, "res":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v2, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/perm/kate/LongPoll;->key:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v2, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/perm/kate/LongPoll;->server:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v2, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v2, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    .line 146
    const-string v1, "Kate.LongPoll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v3, v3, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v3, v3, Lcom/perm/kate/LongPoll;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v3, v3, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v3, v3, Lcom/perm/kate/LongPoll;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v3, v3, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v3, v3, Lcom/perm/kate/LongPoll;->ts:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v1}, Lcom/perm/kate/LongPoll;->access$000(Lcom/perm/kate/LongPoll;)V

    .line 148
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    new-instance v2, Lcom/perm/kate/LongPoll$PollThread;

    iget-object v3, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v3, v3, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    invoke-direct {v2, v3}, Lcom/perm/kate/LongPoll$PollThread;-><init>(Lcom/perm/kate/LongPoll;)V

    iput-object v2, v1, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    .line 149
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread$1;->this$1:Lcom/perm/kate/LongPoll$RequestServerThread;

    iget-object v1, v1, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-object v1, v1, Lcom/perm/kate/LongPoll;->pollThread:Lcom/perm/kate/LongPoll$PollThread;

    invoke-virtual {v1}, Lcom/perm/kate/LongPoll$PollThread;->start()V

    goto :goto_0
.end method
