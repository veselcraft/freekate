.class Lcom/perm/kate/MessageThreadFragment$12;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$mark_as_read:Z

.field final synthetic val$scroll_to:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;Z)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$12;->val$scroll_to:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/perm/kate/MessageThreadFragment$12;->val$mark_as_read:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v3}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v6, v5, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-boolean v8, v5, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    iget-wide v9, v5, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-wide v5, v6

    move v7, v8

    move-wide v8, v9

    invoke-static/range {v1 .. v9}, Lcom/perm/kate/MessageThreadFragment;->getMessagesFromDb(JJJZJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    .line 894
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    .line 900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 901
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MessageSendQueue$MessageData;

    .line 902
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v4, v3, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v4, :cond_2

    .line 903
    iget-object v3, v3, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 905
    :cond_2
    iget-object v3, v3, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 906
    :goto_1
    iget-object v3, v2, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    iget-object v2, v2, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 908
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iput-object v0, v1, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    .line 910
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 911
    sget-object v2, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    iget-object v2, v2, Lcom/perm/kate/LongPoll;->inline_bot_buttons:Landroid/util/LruCache;

    iget-wide v3, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/BotKeyboard;

    if-eqz v2, :cond_5

    .line 913
    iput-object v2, v1, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    .line 915
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v2, v2, Lcom/perm/kate/MessageThreadFragment;->inline_bot_buttons:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 916
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v2, v2, Lcom/perm/kate/MessageThreadFragment;->inline_bot_buttons:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/BotKeyboard;

    iput-object v2, v1, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    goto :goto_2

    .line 918
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 919
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->val$scroll_to:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 920
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$12;->val$scroll_to:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 921
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    if-eqz v1, :cond_7

    .line 924
    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$12;->val$scroll_to:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 927
    :cond_7
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->val$mark_as_read:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2700(Lcom/perm/kate/MessageThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 928
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$12;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 930
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 931
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method
