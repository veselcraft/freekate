.class Lcom/perm/kate/PollActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "PollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 116
    iget-object v0, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PollActivity;->showProgressBar(Z)V

    .line 117
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    check-cast p1, Lcom/perm/kate/api/VkPoll;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    .line 108
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    iget-object v1, v1, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v2, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v2}, Lcom/perm/kate/PollActivity;->access$100(Lcom/perm/kate/PollActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->updatePoll(Lcom/perm/kate/api/VkPoll;J)Z

    .line 109
    iget-object v0, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$200(Lcom/perm/kate/PollActivity;)V

    .line 110
    iget-object v0, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PollActivity;->showProgressBar(Z)V

    .line 111
    return-void
.end method
