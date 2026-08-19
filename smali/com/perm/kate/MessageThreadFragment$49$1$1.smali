.class Lcom/perm/kate/MessageThreadFragment$49$1$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/MessageThreadFragment$49$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$49$1;)V
    .locals 0

    .line 2614
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 2619
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Message;

    iget-object p1, p1, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    iget-wide v1, p1, Lcom/perm/kate/api/Message;->mid:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    .line 2620
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2621
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    const-string v3, "chat_id"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2622
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    const-string v3, "user_id"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2623
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v0, v0, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    iget-wide v0, v0, Lcom/perm/kate/api/Message;->mid:J

    const-string v2, "message_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2624
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2626
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v1, v1, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2627
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2628
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v2, v2, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v0, v0, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "messages"

    .line 2629
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2630
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$49$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
