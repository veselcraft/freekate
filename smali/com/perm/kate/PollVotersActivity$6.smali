.class Lcom/perm/kate/PollVotersActivity$6;
.super Ljava/lang/Thread;
.source "PollVotersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollVotersActivity;->loadMore()V
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

    .line 189
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 192
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$000(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v3}, Lcom/perm/kate/PollVotersActivity;->access$100(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v5}, Lcom/perm/kate/PollVotersActivity;->access$200(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v5

    iget-object v8, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v8}, Lcom/perm/kate/PollVotersActivity;->access$300(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$400(Lcom/perm/kate/PollVotersActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$500(Lcom/perm/kate/PollVotersActivity;)Z

    move-result v11

    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$1200(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v13, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual/range {v2 .. v13}, Lcom/perm/kate/session/Session;->getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
