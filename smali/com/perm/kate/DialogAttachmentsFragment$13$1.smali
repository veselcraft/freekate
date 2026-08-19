.class Lcom/perm/kate/DialogAttachmentsFragment$13$1;
.super Lcom/perm/kate/session/Callback;
.source "DialogAttachmentsFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

.field final synthetic val$new_important:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment$13;Landroid/app/Activity;Z)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iput-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->val$new_important:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 627
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object p1, p1, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object p1, p1, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object p1, p1, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment$13$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 645
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-wide v2, p1, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v5, p1, Lcom/perm/kate/DialogAttachmentsFragment;->account_id:J

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->setMessageImportant(JZJJ)J

    :cond_1
    :goto_0
    return-void
.end method
