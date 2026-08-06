.class Lcom/perm/kate/MessagesFragment$17;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

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

    .line 714
    const-string v1, "Kate.MessagesFragment"

    const-string v6, "Typing broadcast received"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    const-string v1, "chat_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 718
    .local v2, "typing_chat_id":J
    const-string v1, "user_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 719
    .local v4, "typing_user_id":J
    new-instance v0, Lcom/perm/kate/MessagesFragment$TypingInfo;

    invoke-direct {v0}, Lcom/perm/kate/MessagesFragment$TypingInfo;-><init>()V

    .line 720
    .local v0, "info":Lcom/perm/kate/MessagesFragment$TypingInfo;
    iput-wide v2, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    .line 721
    iput-wide v4, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->user_id:J

    .line 722
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v1}, Lcom/perm/kate/MessagesFragment;->access$800(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    .line 724
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v6, v6, Lcom/perm/kate/MessagesFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 725
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/perm/kate/MessagesFragment$17;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v6, v6, Lcom/perm/kate/MessagesFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1770

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
