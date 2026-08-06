.class Lcom/perm/kate/UpdateService$4;
.super Lcom/perm/kate/session/Callback;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UpdateService;


# direct methods
.method constructor <init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/UpdateService;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 264
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 265
    .local v1, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    const-string v0, "Kate.UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Messages received count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    iget-wide v2, v2, Lcom/perm/kate/UpdateService;->account_id:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    move-result v7

    .line 268
    .local v7, "created":Z
    iget-object v0, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    invoke-virtual {v0, v1}, Lcom/perm/kate/UpdateService;->firstUnread(Ljava/util/ArrayList;)Lcom/perm/kate/api/Message;

    move-result-object v8

    .line 269
    .local v8, "last_unread":Lcom/perm/kate/api/Message;
    if-eqz v7, :cond_1

    .line 270
    invoke-static {v1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 271
    iget-object v0, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {v0}, Lcom/perm/kate/UpdateService;->access$200(Lcom/perm/kate/UpdateService;)V

    .line 272
    iget-object v0, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    iget-boolean v0, v0, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    if-nez v0, :cond_1

    .line 273
    if-eqz v8, :cond_1

    .line 274
    iget-object v0, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    iget-object v2, v8, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v4, v8, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v8, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-static {v0, v2, v3, v4}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 276
    :cond_1
    return-void
.end method
