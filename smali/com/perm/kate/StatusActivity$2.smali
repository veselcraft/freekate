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

    .line 73
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object p1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 76
    check-cast p1, Lcom/perm/kate/api/VkStatus;

    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 79
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->updateGroupStatus(JLjava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$100(Lcom/perm/kate/StatusActivity;)J

    move-result-wide v1

    iget-object v3, p1, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->updateStatus(JLjava/lang/String;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$2;->this$0:Lcom/perm/kate/StatusActivity;

    new-instance v1, Lcom/perm/kate/StatusActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/StatusActivity$2$1;-><init>(Lcom/perm/kate/StatusActivity$2;Lcom/perm/kate/api/VkStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
