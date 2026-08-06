.class Lcom/perm/kate/DialogAttachmentsFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "DialogAttachmentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DialogAttachmentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 332
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1302(Lcom/perm/kate/DialogAttachmentsFragment;I)I

    .line 333
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/DialogAttachmentsFragment;->showProgressBar(Z)V

    .line 334
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 276
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 278
    .local v1, "messages_tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 284
    .local v0, "m":Lcom/perm/kate/api/Message;
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    goto :goto_0

    .line 285
    .end local v0    # "m":Lcom/perm/kate/api/Message;
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 287
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2, v6}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1302(Lcom/perm/kate/DialogAttachmentsFragment;I)I

    .line 292
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 293
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/DialogAttachmentsFragment$6$1;

    invoke-direct {v3, p0, v1}, Lcom/perm/kate/DialogAttachmentsFragment$6$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment$6;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 322
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v2, v6}, Lcom/perm/kate/DialogAttachmentsFragment;->showProgressBar(Z)V

    .line 325
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1200(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$900(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)V

    .line 327
    :cond_5
    return-void

    .line 289
    :cond_6
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1302(Lcom/perm/kate/DialogAttachmentsFragment;I)I

    goto :goto_1
.end method
