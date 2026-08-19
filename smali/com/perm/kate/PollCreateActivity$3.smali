.class Lcom/perm/kate/PollCreateActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "PollCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;Landroid/app/Activity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 179
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 180
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$1800(Lcom/perm/kate/PollCreateActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 163
    check-cast p1, Lcom/perm/kate/api/VkPoll;

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v0}, Lcom/perm/kate/PollCreateActivity;->access$1900(Lcom/perm/kate/PollCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->createPoll(Lcom/perm/kate/api/VkPoll;J)J

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    iget-wide v1, p1, Lcom/perm/kate/api/VkPoll;->id:J

    const-string v3, "poll_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    iget-wide v1, p1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    const-string p1, "owner_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 173
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity$3;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {p1}, Lcom/perm/kate/PollCreateActivity;->access$1700(Lcom/perm/kate/PollCreateActivity;)V

    return-void
.end method
