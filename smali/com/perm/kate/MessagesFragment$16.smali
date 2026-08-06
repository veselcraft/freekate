.class Lcom/perm/kate/MessagesFragment$16;
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
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 688
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 689
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    .line 690
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V

    .line 691
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 666
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 667
    .local v1, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    .line 668
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-object v5, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v5, v5, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateDialogs(Ljava/util/ArrayList;JZJ)V

    .line 669
    invoke-static {v1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 670
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/MessagesFragment;->access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 671
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$300(Lcom/perm/kate/MessagesFragment;)V

    .line 673
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/perm/kate/MessagesFragment$16$1;

    invoke-direct {v2, p0, v1}, Lcom/perm/kate/MessagesFragment$16$1;-><init>(Lcom/perm/kate/MessagesFragment$16;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$16;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0, v4}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V

    .line 684
    return-void
.end method
