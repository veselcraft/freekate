.class Lcom/perm/kate/MessageThreadFragment$7$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$7;Landroid/app/Activity;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$7$1;->this$1:Lcom/perm/kate/MessageThreadFragment$7;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 496
    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 499
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/ChatMember;

    .line 502
    iget-object v3, v2, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    if-eqz v3, :cond_1

    .line 503
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_1
    iget-object v2, v2, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/User;

    .line 510
    iget-wide v3, v3, Lcom/perm/kate/api/User;->uid:J

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment$7$1;->this$1:Lcom/perm/kate/MessageThreadFragment$7;

    iget-object v5, v5, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v5, v5, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 511
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    const-wide/16 v4, -0x1

    .line 513
    iget-wide v6, v3, Lcom/perm/kate/api/Group;->gid:J

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 514
    :cond_5
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 515
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroups(Ljava/util/ArrayList;)V

    .line 516
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 517
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$7$1;->this$1:Lcom/perm/kate/MessageThreadFragment$7;

    iget-object v3, v3, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v3}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/perm/kate/db/DataHelper;->recreateChatMembers(Ljava/lang/Long;Ljava/util/ArrayList;)V

    const-string p1, "mtf_recreateChatMembers"

    .line 518
    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    return-void
.end method
