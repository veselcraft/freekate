.class Lcom/perm/kate/MessageNotificationService$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageNotificationService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$arg0:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageNotificationService;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 41
    iput-object p3, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 8

    .line 68
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 71
    iget-object p1, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    const-string v1, "from_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    move-object v0, v1

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    const-string v5, "chat_id"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 78
    :goto_0
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 80
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 44
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Kate.MessageNotifServ"

    const-string v0, "message not found"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 53
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 54
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v4, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 54
    invoke-static {v2, v3, v4, v5}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 56
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v4, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 56
    invoke-static {v2, v3, v4, v5}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 60
    iput-boolean p1, v0, Lcom/perm/kate/api/Message;->read_state:Z

    .line 63
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    return-void
.end method
