.class Lcom/perm/kate/MessageSender$2;
.super Lcom/perm/kate/session/Callback;
.source "MessageSender.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSender;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this sticker is not available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$900(Lcom/perm/kate/MessageSender;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v2, v1, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    iget-object v3, v1, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v2, v3, v1}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$800(Lcom/perm/kate/MessageSender;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 12

    .line 97
    check-cast p1, Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->ready()V

    .line 101
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageSender;->access$700(Lcom/perm/kate/MessageSender;Ljava/lang/String;)Lcom/perm/kate/api/Message;

    move-result-object v2

    .line 107
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-wide v6, p1, Lcom/perm/kate/MessageSender;->group_id:J

    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$100(Lcom/perm/kate/MessageSender;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$000(Lcom/perm/kate/MessageSender;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-wide v10, p1, Lcom/perm/kate/MessageSender;->group_id:J

    move-wide v4, v8

    move-wide v7, v10

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->setUnreadCountInChat(JJIJ)V

    .line 116
    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->refreshed()V

    .line 118
    :cond_1
    invoke-static {}, Lcom/perm/kate/MessageSender;->sendMessagesBroadcast()V

    .line 119
    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/perm/kate/BaseActivity;

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {p1}, Lcom/perm/kate/MessageSender;->access$800(Lcom/perm/kate/MessageSender;)V

    return-void
.end method
