.class Lcom/perm/kate/NewMessageActivity$2$1;
.super Ljava/lang/Thread;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewMessageActivity$2;

.field final synthetic val$attachments_copy:Ljava/util/ArrayList;

.field final synthetic val$attachments_objects_copy:Ljava/util/ArrayList;

.field final synthetic val$forward_messages_copy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity$2;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$2$1;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$2$1;->val$attachments_copy:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NewMessageActivity$2$1;->val$attachments_objects_copy:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/perm/kate/NewMessageActivity$2$1;->val$forward_messages_copy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 260
    :try_start_0
    iget-object v0, v1, Lcom/perm/kate/NewMessageActivity$2$1;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 261
    invoke-static {v3, v4, v5, v6}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v7

    .line 266
    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v9

    .line 267
    invoke-static {v3, v4}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v11

    .line 268
    iget-object v0, v1, Lcom/perm/kate/NewMessageActivity$2$1;->this$1:Lcom/perm/kate/NewMessageActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v13, v1, Lcom/perm/kate/NewMessageActivity$2$1;->val$attachments_copy:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/perm/kate/NewMessageActivity$2$1;->val$attachments_objects_copy:Ljava/util/ArrayList;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    iget-object v0, v1, Lcom/perm/kate/NewMessageActivity$2$1;->val$forward_messages_copy:Ljava/util/ArrayList;

    const/16 v19, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v7 .. v19}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x1f4

    .line 274
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 276
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
