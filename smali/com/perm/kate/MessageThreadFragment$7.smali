.class Lcom/perm/kate/MessageThreadFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 497
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->showProgressBar(Z)V

    .line 498
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 499
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 461
    move-object v10, p1

    check-cast v10, Ljava/util/ArrayList;

    .line 462
    .local v10, "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v6, v0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v8, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteMessageThread(JJJJ)V

    .line 464
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 465
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/Message;

    .line 466
    .local v13, "m":Lcom/perm/kate/api/Message;
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v13, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    goto :goto_0

    .line 469
    .end local v13    # "m":Lcom/perm/kate/api/Message;
    :cond_0
    const/4 v11, 0x0

    .line 470
    .local v11, "first_unread":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v0, v0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v0, v0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_1

    .line 474
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/Message;

    .line 475
    .restart local v13    # "m":Lcom/perm/kate/api/Message;
    iget-boolean v0, v13, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v0, :cond_3

    iget-boolean v0, v13, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 481
    .end local v12    # "i":I
    .end local v13    # "m":Lcom/perm/kate/api/Message;
    :cond_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 482
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 485
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JJ)Z

    .line 486
    invoke-static {v10}, Lcom/perm/kate/MessageThreadFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 487
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 491
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, v11}, Lcom/perm/kate/MessageThreadFragment;->access$1400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;)V

    .line 492
    return-void

    .line 473
    .restart local v12    # "i":I
    .restart local v13    # "m":Lcom/perm/kate/api/Message;
    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 490
    .end local v12    # "i":I
    .end local v13    # "m":Lcom/perm/kate/api/Message;
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$1302(Lcom/perm/kate/MessageThreadFragment;I)I

    goto :goto_2
.end method
