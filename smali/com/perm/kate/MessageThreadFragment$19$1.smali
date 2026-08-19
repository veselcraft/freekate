.class Lcom/perm/kate/MessageThreadFragment$19$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$19;

.field final synthetic val$new_important:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$19;Landroid/app/Activity;Z)V
    .locals 0

    .line 1360
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iput-boolean p3, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->val$new_important:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 1363
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1365
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/MessageThreadFragment$19$1$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$19$1$1;-><init>(Lcom/perm/kate/MessageThreadFragment$19$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1375
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->this$1:Lcom/perm/kate/MessageThreadFragment$19;

    iget-wide v2, p1, Lcom/perm/kate/MessageThreadFragment$19;->val$long_mid:J

    iget-boolean v4, p0, Lcom/perm/kate/MessageThreadFragment$19$1;->val$new_important:Z

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v5, p1, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v7, p1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->setMessageImportant(JZJJ)J

    :cond_1
    :goto_0
    return-void
.end method
