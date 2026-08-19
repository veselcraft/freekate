.class Lcom/perm/kate/MessageSender$1;
.super Ljava/lang/Thread;
.source "MessageSender.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSender;

.field final synthetic val$session:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender;Lcom/perm/kate/session/Session;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iput-object p2, p0, Lcom/perm/kate/MessageSender$1;->val$session:Lcom/perm/kate/session/Session;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 73
    iget-object v5, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v5, v5, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v1, v1, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    invoke-static {v3}, Lcom/perm/kate/Helper;->extractLocationFromAttachments(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    sget-object v7, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    move-object v12, v3

    .line 87
    iget-object v5, v0, Lcom/perm/kate/MessageSender$1;->val$session:Lcom/perm/kate/session/Session;

    iget-object v3, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v3}, Lcom/perm/kate/MessageSender;->access$000(Lcom/perm/kate/MessageSender;)Ljava/lang/Long;

    move-result-object v6

    iget-object v3, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v3}, Lcom/perm/kate/MessageSender;->access$100(Lcom/perm/kate/MessageSender;)J

    move-result-wide v7

    iget-object v3, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v9, v3, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3}, Lcom/perm/kate/MessageSender;->access$200(Lcom/perm/kate/MessageSender;)Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v3}, Lcom/perm/kate/MessageSender;->access$300(Lcom/perm/kate/MessageSender;)Ljava/util/ArrayList;

    move-result-object v13

    aget-object v14, v1, v2

    aget-object v15, v1, v4

    iget-object v1, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v2, v1, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/perm/kate/MessageSender;->payload:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/MessageSender;->access$400(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/session/Callback;

    move-result-object v18

    iget-object v1, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v1}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v5 .. v19}, Lcom/perm/kate/session/Session;->sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 88
    iget-object v1, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-wide v1, v1, Lcom/perm/kate/MessageSender;->group_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 89
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->setOffline()V

    :cond_2
    return-void
.end method
