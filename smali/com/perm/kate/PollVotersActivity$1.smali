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

    .line 71
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$000(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v1}, Lcom/perm/kate/PollVotersActivity;->access$100(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v3}, Lcom/perm/kate/PollVotersActivity;->access$200(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v3

    iget-object v6, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v6}, Lcom/perm/kate/PollVotersActivity;->access$300(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v8}, Lcom/perm/kate/PollVotersActivity;->access$400(Lcom/perm/kate/PollVotersActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v9}, Lcom/perm/kate/PollVotersActivity;->access$500(Lcom/perm/kate/PollVotersActivity;)Z

    move-result v9

    iget-object v10, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v10}, Lcom/perm/kate/PollVotersActivity;->access$600(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v10

    iget-object v11, p0, Lcom/perm/kate/PollVotersActivity$1;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual/range {v0 .. v11}, Lcom/perm/kate/session/Session;->getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
