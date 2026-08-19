.class Lcom/perm/kate/PollActivity$8;
.super Ljava/lang/Thread;
.source "PollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->deleteVoteInThread(J)V
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

    .line 281
    iput-object p1, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    iput-wide p2, p0, Lcom/perm/kate/PollActivity$8;->val$answer_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 284
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v1}, Lcom/perm/kate/PollActivity;->access$600(Lcom/perm/kate/PollActivity;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/PollActivity$8;->val$answer_id:J

    iget-object v5, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v5}, Lcom/perm/kate/PollActivity;->access$700(Lcom/perm/kate/PollActivity;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v7}, Lcom/perm/kate/PollActivity;->access$800(Lcom/perm/kate/PollActivity;)Z

    move-result v7

    iget-object v9, p0, Lcom/perm/kate/PollActivity$8;->this$0:Lcom/perm/kate/PollActivity;

    iget-object v8, v9, Lcom/perm/kate/PollActivity;->callback2:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->deletePollVote(JJJZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
