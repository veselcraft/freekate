.class Lcom/perm/kate/PollCreateActivity$2;
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
    .param p1, "this$0"    # Lcom/perm/kate/PollCreateActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 121
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PollCreateActivity;->showProgressBar(Z)V

    .line 122
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v0}, Lcom/perm/kate/PollCreateActivity;->access$1400(Lcom/perm/kate/PollCreateActivity;)V

    .line 123
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    move-object v1, p1

    check-cast v1, Lcom/perm/kate/api/VkPoll;

    .line 108
    .local v1, "vkPoll":Lcom/perm/kate/api/VkPoll;
    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "poll_id"

    iget-wide v4, v1, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 111
    const-string v2, "owner_id"

    iget-wide v4, v1, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/perm/kate/PollCreateActivity;->setResult(ILandroid/content/Intent;)V

    .line 114
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/PollCreateActivity;->showProgressBar(Z)V

    .line 115
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$2;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$1300(Lcom/perm/kate/PollCreateActivity;)V

    .line 116
    return-void
.end method
