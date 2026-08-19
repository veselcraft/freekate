.class Lcom/perm/kate/DialogAttachmentsFragment$6$1;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

.field final synthetic val$messages_tmp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment$6;Ljava/util/ArrayList;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iput-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1300(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    .line 349
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-boolean v2, v1, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    if-eqz v2, :cond_3

    .line 350
    iget-object v0, v1, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$600(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 351
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 353
    :cond_3
    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 356
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1500(Lcom/perm/kate/DialogAttachmentsFragment;)V

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 360
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    :cond_5
    :goto_3
    return-void
.end method
