.class Lcom/perm/kate/NewGroupTopicActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "NewGroupTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewGroupTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupTopicActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupTopicActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupTopicActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewGroupTopicActivity;->showProgressBar(Z)V

    .line 94
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v0}, Lcom/perm/kate/NewGroupTopicActivity;->access$800(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 95
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 74
    .local v0, "tid":Ljava/lang/Long;
    new-instance v1, Lcom/perm/kate/api/GroupTopic;

    invoke-direct {v1}, Lcom/perm/kate/api/GroupTopic;-><init>()V

    .line 75
    .local v1, "topic":Lcom/perm/kate/api/GroupTopic;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/GroupTopic;->tid:J

    .line 76
    iget-object v2, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v2}, Lcom/perm/kate/NewGroupTopicActivity;->access$500(Lcom/perm/kate/NewGroupTopicActivity;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/GroupTopic;->gid:J

    .line 77
    iget-object v2, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v2}, Lcom/perm/kate/NewGroupTopicActivity;->access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    .line 78
    iput v4, v1, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    .line 79
    iput v4, v1, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    .line 80
    const/4 v2, 0x1

    iput v2, v1, Lcom/perm/kate/api/GroupTopic;->comments:I

    .line 81
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/GroupTopic;->created_by:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/perm/kate/api/GroupTopic;->created:J

    .line 83
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/perm/kate/api/GroupTopic;->updated:J

    .line 85
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J

    .line 86
    iget-object v2, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v2, v4}, Lcom/perm/kate/NewGroupTopicActivity;->showProgressBar(Z)V

    .line 87
    iget-object v2, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {v2}, Lcom/perm/kate/NewGroupTopicActivity;->access$700(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 88
    return-void
.end method
