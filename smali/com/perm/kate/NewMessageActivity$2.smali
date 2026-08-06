.class Lcom/perm/kate/NewMessageActivity$2;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget-object v3, v3, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 231
    new-instance v2, Lcom/perm/kate/MessageSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v6}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v6}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v6}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v10}, Lcom/perm/kate/NewMessageActivity;->access$500(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v10}, Lcom/perm/kate/NewMessageActivity;->access$600(Lcom/perm/kate/NewMessageActivity;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v9

    sget-object v10, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    sget-object v11, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    sget-object v12, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/perm/kate/MessageSender;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/MessageSender$MessageSenderCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 232
    invoke-virtual {v2, v3}, Lcom/perm/kate/MessageSender;->sendMessage(Lcom/perm/kate/session/Session;)V

    .line 259
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .local v8, "attachments_copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v9, "attachments_objects_copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v13, Ljava/util/ArrayList;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v13, "forward_messages_copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget-object v3, v3, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 243
    .local v4, "user":J
    neg-long v6, v4

    const-wide/16 v10, 0x0

    invoke-static {v6, v7, v10, v11}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v2

    .line 245
    .local v2, "queue":Lcom/perm/kate/MessageSendQueue;
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v3, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v3}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;)V

    goto :goto_1

    .line 249
    .end local v2    # "queue":Lcom/perm/kate/MessageSendQueue;
    .end local v4    # "user":J
    :cond_1
    const-string v3, ""

    invoke-static {v3}, Lcom/perm/kate/NewMessageActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    const-string v3, ""

    invoke-static {v3}, Lcom/perm/kate/NewMessageActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v3}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v3}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 252
    .local v16, "uid":J
    :goto_2
    invoke-static/range {v16 .. v17}, Lcom/perm/utils/TempMessages;->clear(J)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/perm/kate/NewMessageActivity;->setResult(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v3}, Lcom/perm/kate/NewMessageActivity;->finish()V

    .line 255
    sget-object v3, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 256
    sget-object v3, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 257
    sget-object v3, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 251
    .end local v16    # "uid":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v3}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v16

    goto :goto_2
.end method
