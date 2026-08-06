.class Lcom/perm/kate/MessagesFragment$7;
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
    .line 230
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 266
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    .line 267
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 234
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 235
    .local v1, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/perm/kate/MessagesFragment;->offset:J

    .line 238
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessagesFragment;->allMessagesBroken(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    .line 240
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    const v2, 0x7f0703e1

    invoke-virtual {v0, v2}, Lcom/perm/kate/MessagesFragment;->displayToast(I)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment;->account_id:J

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v5, v5, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateDialogs(Ljava/util/ArrayList;JZJ)V

    .line 247
    invoke-static {v1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 248
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/MessagesFragment;->access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 249
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$300(Lcom/perm/kate/MessagesFragment;)V

    .line 251
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/perm/kate/MessagesFragment$7$1;

    invoke-direct {v2, p0, v1}, Lcom/perm/kate/MessagesFragment$7$1;-><init>(Lcom/perm/kate/MessagesFragment$7;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
