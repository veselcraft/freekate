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

    .line 238
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 241
    iget-object v2, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    iget-object v1, v2, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-nez v1, :cond_0

    .line 243
    new-instance v15, Lcom/perm/kate/MessageSender;

    invoke-static {v2}, Lcom/perm/kate/NewMessageActivity;->access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v5

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$500(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMessageActivity;->access$600(Lcom/perm/kate/NewMessageActivity;)Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-result-object v8

    sget-object v9, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    sget-object v10, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    sget-object v11, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/perm/kate/MessageSender;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/MessageSender$MessageSenderCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/lang/String;)V

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 244
    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageSender;->sendMessage(Lcom/perm/kate/session/Session;)V

    move-object/from16 v4, p0

    goto :goto_1

    .line 245
    :cond_0
    iget-object v0, v2, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-nez v0, :cond_2

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    new-instance v3, Lcom/perm/kate/NewMessageActivity$2$1;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/perm/kate/NewMessageActivity$2$1;-><init>(Lcom/perm/kate/NewMessageActivity$2;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 284
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-string v0, ""

    .line 287
    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v0, v4, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    iget-object v0, v4, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v0

    .line 290
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/TempMessages;->clear(J)V

    .line 291
    iget-object v0, v4, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 292
    iget-object v0, v4, Lcom/perm/kate/NewMessageActivity$2;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 293
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 295
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    .line 297
    new-instance v0, Lcom/perm/kate/NewMessageActivity$2$2;

    invoke-direct {v0, v4}, Lcom/perm/kate/NewMessageActivity$2$2;-><init>(Lcom/perm/kate/NewMessageActivity$2;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method
