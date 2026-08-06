.class Lcom/perm/kate/StatusActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatusActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StatusActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/StatusActivity;->showProgressBar(Z)V

    .line 98
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 76
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/VkStatus;

    .line 77
    .local v0, "vk_status":Lcom/perm/kate/api/VkStatus;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 79
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v2}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->updateGroupStatus(JLjava/lang/String;)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    new-instance v2, Lcom/perm/kate/StatusActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/StatusActivity$2$1;-><init>(Lcom/perm/kate/StatusActivity$2;Lcom/perm/kate/api/VkStatus;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/StatusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void

    .line 81
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v2}, Lcom/perm/kate/StatusActivity;->access$100(Lcom/perm/kate/StatusActivity;)J

    move-result-wide v2

    iget-object v4, v0, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->updateStatus(JLjava/lang/String;)V

    goto :goto_0
.end method
