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

    .line 70
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 93
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 94
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$800(Lcom/perm/kate/NewGroupTopicActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 73
    check-cast p1, Ljava/lang/Long;

    .line 74
    new-instance v0, Lcom/perm/kate/api/GroupTopic;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupTopic;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    .line 76
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$500(Lcom/perm/kate/NewGroupTopicActivity;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->gid:J

    .line 77
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    const/4 p1, 0x0

    .line 78
    iput p1, v0, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    .line 79
    iput p1, v0, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    const/4 v1, 0x1

    .line 80
    iput v1, v0, Lcom/perm/kate/api/GroupTopic;->comments:I

    .line 81
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->created_by:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->created:J

    .line 83
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->updated:J

    .line 85
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createGroupTopic(Lcom/perm/kate/api/GroupTopic;)J

    .line 86
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$2;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-static {p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$700(Lcom/perm/kate/NewGroupTopicActivity;)V

    return-void
.end method
