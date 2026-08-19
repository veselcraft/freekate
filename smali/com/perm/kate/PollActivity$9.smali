.class Lcom/perm/kate/PollActivity$9;
.super Ljava/lang/Thread;
.source "PollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->addVoteInThread(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;

.field final synthetic val$answer_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    iput-object p2, p0, Lcom/perm/kate/PollActivity$9;->val$answer_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 294
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v1}, Lcom/perm/kate/PollActivity;->access$600(Lcom/perm/kate/PollActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/PollActivity$9;->val$answer_ids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v4}, Lcom/perm/kate/PollActivity;->access$700(Lcom/perm/kate/PollActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v6}, Lcom/perm/kate/PollActivity;->access$800(Lcom/perm/kate/PollActivity;)Z

    move-result v6

    iget-object v8, p0, Lcom/perm/kate/PollActivity$9;->this$0:Lcom/perm/kate/PollActivity;

    iget-object v7, v8, Lcom/perm/kate/PollActivity;->callback2:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->addPollVote(JLjava/util/ArrayList;JZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
