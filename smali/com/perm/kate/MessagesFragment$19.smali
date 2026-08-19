.class Lcom/perm/kate/MessagesFragment$19;
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

    .line 849
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "Kate.MessagesFragment"

    const-string v0, "Typing broadcast received"

    .line 852
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "chat_id"

    const-wide/16 v0, -0x1

    .line 855
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p1, "user_id"

    .line 856
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 857
    new-instance v0, Lcom/perm/kate/MessagesFragment$TypingInfo;

    invoke-direct {v0}, Lcom/perm/kate/MessagesFragment$TypingInfo;-><init>()V

    .line 858
    iput-wide v2, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    .line 859
    iput-wide p1, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->user_id:J

    .line 860
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 862
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    .line 863
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p2, p1, Lcom/perm/kate/MessagesFragment;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 864
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$19;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p2, p1, Lcom/perm/kate/MessagesFragment;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1770

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
