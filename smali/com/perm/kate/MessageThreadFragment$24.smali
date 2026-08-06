.class Lcom/perm/kate/MessageThreadFragment$24;
.super Landroid/content/BroadcastReceiver;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    .line 1220
    const-string v6, "Kate.MessageThreadFragment"

    const-string v7, "Typing broadcast received"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v6}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v6}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    const-string v6, "chat_id"

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1224
    .local v2, "typing_chat_id":J
    const-string v6, "user_id"

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1225
    .local v4, "typing_user_id":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v6}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 1228
    :cond_2
    cmp-long v6, v2, v8

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v6}, Lcom/perm/kate/MessageThreadFragment;->access$1100(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 1231
    :cond_3
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 1232
    .local v1, "typing_user":Lcom/perm/kate/api/User;
    const-string v0, ""

    .line 1233
    .local v0, "text":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v8, 0x7f07042f

    invoke-virtual {v7, v8}, Lcom/perm/kate/MessageThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v6}, Lcom/perm/kate/MessageThreadFragment;->access$2800(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v6}, Lcom/perm/kate/MessageThreadFragment;->access$2800(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v6, v6, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v7, v7, Lcom/perm/kate/MessageThreadFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1239
    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v6, v6, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment$24;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v7, v7, Lcom/perm/kate/MessageThreadFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1770

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
