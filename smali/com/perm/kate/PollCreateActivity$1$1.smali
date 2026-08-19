.class Lcom/perm/kate/PollCreateActivity$1$1;
.super Ljava/lang/Thread;
.source "PollCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollCreateActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PollCreateActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity$1;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 133
    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1000(Lcom/perm/kate/PollCreateActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1100(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/api/VkPoll;

    move-result-object v1

    iget-wide v3, v1, Lcom/perm/kate/api/VkPoll;->id:J

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1200(Lcom/perm/kate/PollCreateActivity;)J

    move-result-wide v5

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1300(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/Long;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$600(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$700(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1400(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1500(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v13, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual/range {v2 .. v13}, Lcom/perm/kate/session/Session;->editPoll(JJLjava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object v14, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$200(Lcom/perm/kate/PollCreateActivity;)Z

    move-result v16

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$400(Lcom/perm/kate/PollCreateActivity;)Z

    move-result v17

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1300(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/Long;

    move-result-object v18

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1200(Lcom/perm/kate/PollCreateActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$600(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v20

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1600(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v21

    iget-object v1, v0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    move-object/from16 v22, v1

    invoke-virtual/range {v14 .. v22}, Lcom/perm/kate/session/Session;->createPoll(Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
