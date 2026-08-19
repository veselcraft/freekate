.class Lcom/perm/kate/LongPoll$RequestServerThread;
.super Ljava/lang/Thread;
.source "LongPoll.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field public shouldStop:Z

.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method public constructor <init>(Lcom/perm/kate/LongPoll;)V
    .locals 1

    .line 139
    iput-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    const-string p1, "Kate.RequestServerThread"

    .line 140
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    .line 157
    new-instance p1, Lcom/perm/kate/LongPoll$RequestServerThread$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/perm/kate/LongPoll$RequestServerThread$1;-><init>(Lcom/perm/kate/LongPoll$RequestServerThread;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/LongPoll;->account_id:J

    .line 149
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v0, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->callback:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getLongPollServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v1, v1, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v0, v1}, Lcom/perm/kate/LongPoll;->access$002(Lcom/perm/kate/LongPoll;Lcom/perm/kate/LongPoll$PollState;)Lcom/perm/kate/LongPoll$PollState;

    :goto_0
    return-void
.end method
