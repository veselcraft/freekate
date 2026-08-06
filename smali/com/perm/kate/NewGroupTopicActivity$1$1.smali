.class Lcom/perm/kate/NewGroupTopicActivity$1$1;
.super Ljava/lang/Thread;
.source "NewGroupTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewGroupTopicActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewGroupTopicActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupTopicActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewGroupTopicActivity$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 64
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$500(Lcom/perm/kate/NewGroupTopicActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$000(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$600(Lcom/perm/kate/NewGroupTopicActivity;)Z

    move-result v6

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    iget-object v7, v0, Lcom/perm/kate/NewGroupTopicActivity;->callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v8, v0, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 65
    return-void
.end method
