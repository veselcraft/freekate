.class Lcom/perm/kate/DialogAttachmentsFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "DialogAttachmentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 374
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 375
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1402(Lcom/perm/kate/DialogAttachmentsFragment;I)I

    .line 376
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 315
    check-cast p1, Ljava/util/ArrayList;

    .line 317
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 320
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1402(Lcom/perm/kate/DialogAttachmentsFragment;I)I

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1402(Lcom/perm/kate/DialogAttachmentsFragment;I)I

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/perm/kate/DialogAttachmentsFragment$6$1;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/DialogAttachmentsFragment$6$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment$6;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 367
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1300(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 369
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1700(Lcom/perm/kate/DialogAttachmentsFragment;)V

    :cond_5
    return-void
.end method
