.class Lcom/perm/kate/MessageThreadFragment$11$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$11;

.field final synthetic val$new_important:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$11;Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MessageThreadFragment$11;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iput-boolean p3, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->val$new_important:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$11$1$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$11$1$1;-><init>(Lcom/perm/kate/MessageThreadFragment$11$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 807
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-wide v1, v1, Lcom/perm/kate/MessageThreadFragment$11;->val$long_mid:J

    iget-boolean v3, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->val$new_important:Z

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v4, v4, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v4, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$11$1;->this$1:Lcom/perm/kate/MessageThreadFragment$11;

    iget-object v6, v6, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v6, v6, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->setMessageImportant(JZJJ)J

    goto :goto_0
.end method
