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

    .line 115
    iput-object p1, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 127
    iget-object p1, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    check-cast p1, Lcom/perm/kate/api/VkPoll;

    iput-object p1, v0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    .line 119
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$100(Lcom/perm/kate/PollActivity;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/perm/kate/db/DataHelper;->updatePoll(Lcom/perm/kate/api/VkPoll;J)Z

    .line 120
    iget-object p1, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {p1}, Lcom/perm/kate/PollActivity;->access$200(Lcom/perm/kate/PollActivity;)V

    .line 121
    iget-object p1, p0, Lcom/perm/kate/PollActivity$2;->this$0:Lcom/perm/kate/PollActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
