.class Lcom/perm/kate/MessageThreadFragment$35;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1991
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 2016
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 2017
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 2018
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 1995
    check-cast p1, Ljava/util/ArrayList;

    .line 1996
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->access$2100(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    .line 1997
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1998
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v4, v1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JJ)Z

    const-string v0, "mtf_createOrUpdateMessages"

    .line 1999
    invoke-static {v6, v7, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 2000
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 2001
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    goto :goto_0

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/MessageThreadFragment;->access$2302(Lcom/perm/kate/MessageThreadFragment;I)I

    .line 2005
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v2, v0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v2, :cond_1

    .line 2007
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/MessageThreadFragment;->access$2400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;Z)V

    goto :goto_1

    .line 2009
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2011
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
