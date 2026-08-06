.class Lcom/perm/kate/DialogAttachmentsFragment$13$1;
.super Lcom/perm/kate/session/Callback;
.source "DialogAttachmentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

.field final synthetic val$new_important:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment$13;Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/DialogAttachmentsFragment$13;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iput-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->val$new_important:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment$13$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 543
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-wide v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v4, v4, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v4, v4, Lcom/perm/kate/DialogAttachmentsFragment;->account_id:J

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->setMessageImportant(JZJJ)J

    goto :goto_0
.end method
