.class Lcom/perm/kate/MessagesFragment$18;
.super Lcom/perm/kate/session/Callback;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 826
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 827
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    .line 828
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 802
    check-cast p1, Ljava/util/ArrayList;

    .line 803
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v1, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    .line 804
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 805
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v5, v1, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {}, Lcom/perm/utils/FixedChats;->get()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateDialogs(Ljava/util/ArrayList;JZJLjava/util/Collection;)V

    const-string v0, "mf_createOrUpdateDialogs2"

    .line 806
    invoke-static {v8, v9, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 807
    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 808
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessagesFragment;->access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 809
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$600(Lcom/perm/kate/MessagesFragment;)V

    .line 811
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessagesFragment$18$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessagesFragment$18$1;-><init>(Lcom/perm/kate/MessagesFragment$18;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 821
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$18;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
