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
    .param p1, "this$1"    # Lcom/perm/kate/PollCreateActivity$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 98
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v2, v2, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$600(Lcom/perm/kate/PollCreateActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v3, v3, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v3}, Lcom/perm/kate/PollCreateActivity;->access$1100(Lcom/perm/kate/PollCreateActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v4, v4, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v4}, Lcom/perm/kate/PollCreateActivity;->access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v5, v5, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v5}, Lcom/perm/kate/PollCreateActivity;->access$1200(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/PollCreateActivity$1$1;->this$1:Lcom/perm/kate/PollCreateActivity$1;

    iget-object v6, v6, Lcom/perm/kate/PollCreateActivity$1;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->createPoll(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 99
    return-void
.end method
