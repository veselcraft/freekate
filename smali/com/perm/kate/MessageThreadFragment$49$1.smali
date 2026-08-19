.class Lcom/perm/kate/MessageThreadFragment$49$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$49;

.field final synthetic val$conversations:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$hD0V12QNBmp74-g2j-UJ9jJ-N8U(Lcom/perm/kate/MessageThreadFragment$49$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment$49$1;->lambda$run$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$49;Ljava/util/ArrayList;)V
    .locals 0

    .line 2591
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/view/View;)V
    .locals 0

    .line 2634
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$5400(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2594
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v0, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz v0, :cond_0

    .line 2595
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    iget-object v2, v2, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    invoke-static {v0, v2}, Lcom/perm/kate/MessageThreadFragment;->access$5002(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotKeyboard;)Lcom/perm/kate/api/BotKeyboard;

    .line 2596
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/perm/kate/MessageThreadFragment;->access$5200(Lcom/perm/kate/MessageThreadFragment;Z)V

    .line 2597
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2599
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v0, v0, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 2601
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2602
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    return-void

    .line 2605
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Message;

    iget-object v3, v3, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    iget-wide v3, v3, Lcom/perm/kate/api/Message;->mid:J

    iput-wide v3, v0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    .line 2606
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$5300(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v3, v3, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v3, v3, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    invoke-static {v0, v3, v4}, Lcom/perm/utils/HiddenPinnedMessages;->isHidden(Ljava/lang/Long;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2607
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2609
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2611
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 2613
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090275

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->val$conversations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->pinned_message:Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$49$1$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$49$1$1;-><init>(Lcom/perm/kate/MessageThreadFragment$49$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2634
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$49$1;->this$1:Lcom/perm/kate/MessageThreadFragment$49;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$49;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$49$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$49$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MessageThreadFragment$49$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
