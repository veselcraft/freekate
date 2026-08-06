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
.field final synthetic this$0:Lcom/perm/kate/MessageNotificationService;

.field final synthetic val$arg0:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageNotificationService;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageNotificationService;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/perm/kate/MessageNotificationService$1;->this$0:Lcom/perm/kate/MessageNotificationService;

    iput-object p3, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    const-wide/16 v6, -0x1

    .line 64
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 67
    iget-object v3, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    const-string v4, "from_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 69
    .local v1, "from_id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/MessageNotificationService$1;->val$arg0:Landroid/content/Intent;

    const-string v4, "chat_id"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 72
    .local v0, "chat_id":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 74
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 76
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 78
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 43
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 48
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "Kate.MessageNotifServ"

    const-string v4, "message not found"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Message;

    .line 53
    .local v7, "message":Lcom/perm/kate/api/Message;
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v7, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v8, v7, Lcom/perm/kate/api/Message;->uid:J

    .line 54
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v7, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 53
    invoke-static {v0, v4, v5, v6}, Lcom/perm/kate/notifications/MessagesNotification;->display(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 55
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v7, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v8, v7, Lcom/perm/kate/api/Message;->uid:J

    .line 56
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v7, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 55
    invoke-static {v0, v4, v5, v6}, Lcom/perm/kate/PopupActivity;->startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 59
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 60
    .local v2, "account_id":J
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    goto :goto_0
.end method
