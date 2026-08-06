.class Lcom/perm/kate/PollVotersActivity$1;
.super Ljava/lang/Thread;
.source "PollVotersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollVotersActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollVotersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollVotersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v6, "answer_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$000(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$100(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$200(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$300(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$400(Lcom/perm/kate/PollVotersActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$500(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v10

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$600(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v13, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/session/Session;->getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 77
    return-void
.end method
