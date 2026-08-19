.class Lcom/perm/kate/MessageThreadFragment$36;
.super Landroid/content/BroadcastReceiver;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2035
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p1, "Kate.MessageThreadFragm"

    const-string v0, "Typing broadcast received"

    .line 2038
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 2042
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, p1, Lcom/perm/kate/MessageThreadFragment;->blind:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2043
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->isBlind()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/MessageThreadFragment;->blind:Ljava/lang/Boolean;

    .line 2044
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment;->blind:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "chat_id"

    const-wide/16 v0, -0x1

    .line 2046
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p1, "user_id"

    .line 2047
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string p1, "audiomessage"

    const/4 v6, 0x0

    .line 2048
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    cmp-long p2, v2, v0

    if-eqz p2, :cond_3

    .line 2049
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v7

    cmp-long p2, v2, v7

    if-eqz p2, :cond_3

    return-void

    :cond_3
    cmp-long p2, v2, v0

    if-nez p2, :cond_4

    .line 2052
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    cmp-long p2, v4, v0

    if-eqz p2, :cond_4

    return-void

    .line 2055
    :cond_4
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_5

    .line 2058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v0, 0x7f0f0583

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const v0, 0x7f0f04c2

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2060
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$4400(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2061
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4400(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2062
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p2, p1, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2063
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$36;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p2, p1, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1770

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return-void
.end method
