.class Lcom/perm/kate/MessageSender$2;
.super Lcom/perm/kate/session/Callback;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSender;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSender;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this sticker is not available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$900(Lcom/perm/kate/MessageSender;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v1, v1, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v2, v2, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v3, v3, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$800(Lcom/perm/kate/MessageSender;)V

    .line 130
    return-void

    .line 126
    :cond_1
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 15
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 93
    move-object/from16 v13, p1

    check-cast v13, Ljava/lang/String;

    .line 94
    .local v13, "message_id":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->ready()V

    .line 97
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 102
    .local v2, "account_id":J
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0, v13}, Lcom/perm/kate/MessageSender;->access$700(Lcom/perm/kate/MessageSender;Ljava/lang/String;)Lcom/perm/kate/api/Message;

    move-result-object v1

    .line 103
    .local v1, "m":Lcom/perm/kate/api/Message;
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-wide v5, v5, Lcom/perm/kate/MessageSender;->group_id:J

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "m":Lcom/perm/kate/api/Message;
    :goto_0
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$100(Lcom/perm/kate/MessageSender;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v4, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v4}, Lcom/perm/kate/MessageSender;->access$000(Lcom/perm/kate/MessageSender;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v6

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    iget-wide v11, v0, Lcom/perm/kate/MessageSender;->group_id:J

    move-wide v8, v2

    invoke-virtual/range {v5 .. v12}, Lcom/perm/kate/db/DataHelper;->setUnreadCountInChat(JJIJ)V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->refreshed()V

    .line 114
    :cond_1
    invoke-static {}, Lcom/perm/kate/MessageSender;->sendMessagesBroadcast()V

    .line 115
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageSender$2;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v0}, Lcom/perm/kate/MessageSender;->access$800(Lcom/perm/kate/MessageSender;)V

    .line 118
    return-void

    .line 104
    :catch_0
    move-exception v14

    .line 105
    .local v14, "th":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    invoke-static {v14}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
