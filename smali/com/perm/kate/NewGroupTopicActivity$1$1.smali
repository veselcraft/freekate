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

    .line 61
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v1, v1, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v1}, Lcom/perm/kate/NewGroupTopicActivity;->access$500(Lcom/perm/kate/NewGroupTopicActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v3, v3, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v3}, Lcom/perm/kate/NewGroupTopicActivity;->access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v4, v4, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v4}, Lcom/perm/kate/NewGroupTopicActivity;->access$000(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v5, v5, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v5}, Lcom/perm/kate/NewGroupTopicActivity;->access$600(Lcom/perm/kate/NewGroupTopicActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/perm/kate/NewGroupTopicActivity$1$1;->this$1:Lcom/perm/kate/NewGroupTopicActivity$1;

    iget-object v7, v6, Lcom/perm/kate/NewGroupTopicActivity$1;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    iget-object v6, v7, Lcom/perm/kate/NewGroupTopicActivity;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
