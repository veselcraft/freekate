.class Lcom/perm/kate/MessageThreadFragment$61;
.super Landroid/content/BroadcastReceiver;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3308
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "Kate.MessageThreadFragm"

    const-string v0, "bot buttons broadcast received"

    .line 3311
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "user_id"

    const-wide/16 v0, -0x1

    .line 3314
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string p1, "chat_id"

    const-wide/16 v4, 0x0

    .line 3315
    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    .line 3316
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v4

    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    :cond_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "keyboard"

    .line 3319
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/BotKeyboard;

    if-eqz p1, :cond_4

    .line 3321
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/MessageThreadFragment;->access$5002(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotKeyboard;)Lcom/perm/kate/api/BotKeyboard;

    .line 3322
    iget-object p1, p1, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 3323
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5100(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 3325
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$7100(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 3327
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$61;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$7200(Lcom/perm/kate/MessageThreadFragment;)V

    :cond_5
    :goto_0
    return-void
.end method
