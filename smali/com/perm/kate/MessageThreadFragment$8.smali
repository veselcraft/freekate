.class Lcom/perm/kate/MessageThreadFragment$8;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$scroll_to:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$8;->val$scroll_to:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v12, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v2}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v4, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v6, v6, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v7, v7, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static/range {v0 .. v8}, Lcom/perm/kate/MessageThreadFragment;->getMessagesFromDb(JJJZJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v12, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    .line 541
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    .line 547
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v10, "states":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/perm/kate/api/Message;Lcom/perm/kate/MessageSendQueue$MessageData$State;>;"
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v0, v0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/MessageSendQueue$MessageData;

    .line 549
    .local v9, "m":Lcom/perm/kate/MessageSendQueue$MessageData;
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v1, v1, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v1, :cond_3

    .line 550
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    iget-object v2, v9, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :goto_2
    iget-object v1, v9, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    iget-object v2, v9, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 565
    .end local v9    # "m":Lcom/perm/kate/MessageSendQueue$MessageData;
    .end local v10    # "states":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/perm/kate/api/Message;Lcom/perm/kate/MessageSendQueue$MessageData$State;>;"
    :catch_0
    move-exception v11

    .line 566
    .local v11, "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 567
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 552
    .end local v11    # "th":Ljava/lang/Throwable;
    .restart local v9    # "m":Lcom/perm/kate/MessageSendQueue$MessageData;
    .restart local v10    # "states":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/perm/kate/api/Message;Lcom/perm/kate/MessageSendQueue$MessageData$State;>;"
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 555
    .end local v9    # "m":Lcom/perm/kate/MessageSendQueue$MessageData;
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iput-object v10, v0, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    .line 556
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 557
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->val$scroll_to:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->val$scroll_to:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 559
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v0, v0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$8;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$8;->val$scroll_to:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/perm/kate/PlayerActivity;->smoothScrollToPositionWithReflection(Landroid/widget/ListView;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
