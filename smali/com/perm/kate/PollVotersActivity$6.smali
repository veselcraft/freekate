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
    .param p1, "this$0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 192
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$700(Lcom/perm/kate/PollVotersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 195
    .local v16, "offset":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v8, "answer_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$000(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$100(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$200(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$300(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$400(Lcom/perm/kate/PollVotersActivity;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$500(Lcom/perm/kate/PollVotersActivity;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$1200(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/PollVotersActivity$6;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual/range {v3 .. v15}, Lcom/perm/kate/session/Session;->getPollVoters(JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
