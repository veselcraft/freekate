.class Lcom/perm/kate/NewsFragment$20;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/NewsFragment$20;->val$ad_data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 939
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 943
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    .line 944
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 945
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v6, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v6, v6, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteNewsFromOwnerId(JJ)V

    const-string v0, "af_deleteNewsFromOwnerId"

    .line 946
    invoke-static {v4, v5, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 951
    iget-object v3, p0, Lcom/perm/kate/NewsFragment$20;->val$uid:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 952
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/NewsFragment$20;->val$gid:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 954
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/NewsFragment$20;->val$ad_data:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 956
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v3}, Lcom/perm/kate/NewsFragment;->access$1400(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/session/Session;->addBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 958
    :cond_3
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$20;->val$ad_data:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v3}, Lcom/perm/kate/NewsFragment;->access$1400(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$20;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/perm/kate/session/Session;->ignoreAd(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method
