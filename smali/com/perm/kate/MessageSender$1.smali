.class Lcom/perm/kate/MessageSender$1;
.super Ljava/lang/Thread;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageSender;->sendMessage(Lcom/perm/kate/session/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSender;

.field final synthetic val$session:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender;Lcom/perm/kate/session/Session;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iput-object p2, p0, Lcom/perm/kate/MessageSender$1;->val$session:Lcom/perm/kate/session/Session;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 69
    const/4 v9, 0x0

    .line 70
    .local v9, "att":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v17, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v17, v2

    .line 71
    .local v17, "location":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v2, v2, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "att":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v2, v2, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .restart local v9    # "att":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/perm/kate/Helper;->extractLocationFromAttachments(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v17

    .line 77
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 78
    .local v16, "attachment":Ljava/lang/String;
    sget-object v3, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    .end local v16    # "attachment":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageSender$1;->val$session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v3}, Lcom/perm/kate/MessageSender;->access$000(Lcom/perm/kate/MessageSender;)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v4}, Lcom/perm/kate/MessageSender;->access$100(Lcom/perm/kate/MessageSender;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v6, v6, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v8}, Lcom/perm/kate/MessageSender;->access$200(Lcom/perm/kate/MessageSender;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v10}, Lcom/perm/kate/MessageSender;->access$300(Lcom/perm/kate/MessageSender;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v17, v11

    const/4 v12, 0x1

    aget-object v12, v17, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    iget-object v13, v13, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v14}, Lcom/perm/kate/MessageSender;->access$400(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/session/Callback;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/MessageSender$1;->this$0:Lcom/perm/kate/MessageSender;

    invoke-static {v15}, Lcom/perm/kate/MessageSender;->access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual/range {v2 .. v15}, Lcom/perm/kate/session/Session;->sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 86
    return-void
.end method
