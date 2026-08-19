.class Lcom/perm/kate/MessagesFragment$8;
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

    .line 291
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 328
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 329
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 295
    check-cast p1, Ljava/util/ArrayList;

    .line 296
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    .line 299
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessagesFragment;->allMessagesBroken(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    .line 301
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    const v0, 0x7f0f046b

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void

    .line 306
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 307
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessagesFragment;->account_id:J

    const/4 v4, 0x1

    iget-wide v5, v1, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {}, Lcom/perm/utils/FixedChats;->get()Ljava/util/ArrayList;

    move-result-object v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateDialogs(Ljava/util/ArrayList;JZJLjava/util/Collection;)V

    const-string v0, "mf_createOrUpdateDialogs1"

    .line 308
    invoke-static {v8, v9, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 310
    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 311
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessagesFragment;->access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 312
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$600(Lcom/perm/kate/MessagesFragment;)V

    .line 314
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessagesFragment$8$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessagesFragment$8$1;-><init>(Lcom/perm/kate/MessagesFragment$8;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
