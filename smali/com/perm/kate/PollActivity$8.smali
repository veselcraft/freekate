.class Lcom/perm/kate/PollActivity$8;
.super Ljava/lang/Thread;
.source "PollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->addVoteInThread(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;

.field final synthetic val$answer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    iput-wide p2, p0, Lcom/perm/kate/PollActivity$8;->val$answer_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 230
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$600(Lcom/perm/kate/PollActivity;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/PollActivity$8;->val$answer_id:J

    iget-object v0, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$700(Lcom/perm/kate/PollActivity;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$800(Lcom/perm/kate/PollActivity;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    iget-object v10, v0, Lcom/perm/kate/PollActivity;->callback2:Lcom/perm/kate/session/Callback;

    iget-object v11, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->addPollVote(JJJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 231
    return-void
.end method
