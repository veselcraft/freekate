.class Lcom/perm/kate/LongPoll$RequestServerThread;
.super Ljava/lang/Thread;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LongPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestServerThread"
.end annotation


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field public shouldStop:Z

.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method public constructor <init>(Lcom/perm/kate/LongPoll;)V
    .locals 2
    .param p1, "this$0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    .line 125
    const-string v0, "Kate.RequestServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    .line 136
    new-instance v0, Lcom/perm/kate/LongPoll$RequestServerThread$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/LongPoll$RequestServerThread$1;-><init>(Lcom/perm/kate/LongPoll$RequestServerThread;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->callback:Lcom/perm/kate/session/Callback;

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->shouldStop:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/LongPoll;->account_id:J

    .line 133
    iget-object v0, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v0, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/LongPoll$RequestServerThread;->callback:Lcom/perm/kate/session/Callback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getLongPollServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
