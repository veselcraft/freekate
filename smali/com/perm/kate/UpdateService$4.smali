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

    .line 275
    iput-object p1, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 279
    check-cast p1, Ljava/util/ArrayList;

    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Messages received count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.UpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    iget-wide v2, v1, Lcom/perm/kate/UpdateService;->account_id:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    invoke-virtual {v1, p1}, Lcom/perm/kate/UpdateService;->firstUnread(Ljava/util/ArrayList;)Lcom/perm/kate/api/Message;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 285
    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 286
    iget-object p1, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {p1}, Lcom/perm/kate/UpdateService;->access$200(Lcom/perm/kate/UpdateService;)V

    .line 287
    iget-object p1, p0, Lcom/perm/kate/UpdateService$4;->this$0:Lcom/perm/kate/UpdateService;

    iget-boolean v0, p1, Lcom/perm/kate/UpdateService;->widget_refresh:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 289
    iget-object v0, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v2, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v1, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-static {p1, v0, v2, v1}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_1
    return-void
.end method
