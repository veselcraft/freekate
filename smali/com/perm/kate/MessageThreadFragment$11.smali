.class Lcom/perm/kate/MessageThreadFragment$11;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 849
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 850
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 851
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14

    .line 817
    check-cast p1, Ljava/util/ArrayList;

    .line 821
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 823
    iget-boolean v0, v0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_0
    if-ltz v0, :cond_1

    .line 825
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 826
    iget-boolean v3, v1, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v3, :cond_0

    iget-boolean v1, v1, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v1, :cond_0

    .line 827
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v10

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 832
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 833
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    move-object v11, v2

    .line 835
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$2100(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    .line 836
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 837
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v6, v1, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v8, v1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/db/DataHelper;->recreateMessages(Ljava/util/ArrayList;JJJJ)V

    const-string v0, "mtf_recreateMessages"

    .line 838
    invoke-static {v12, v13, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 839
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 840
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 841
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    goto :goto_2

    .line 843
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 844
    :goto_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, v11, v10}, Lcom/perm/kate/MessageThreadFragment;->access$2400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;Z)V

    return-void
.end method
