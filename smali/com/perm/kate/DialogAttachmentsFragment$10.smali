.class Lcom/perm/kate/DialogAttachmentsFragment$10;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$long_mid:J

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$message:Lcom/perm/kate/api/Message;

.field final synthetic val$position:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;Ljava/util/ArrayList;JLcom/perm/kate/api/Message;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    iput-object p5, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iput p6, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$position:I

    iput-object p7, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$urls:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 541
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iget-object p2, p2, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    const-string v0, "chat_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 561
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iget-wide v0, p2, Lcom/perm/kate/api/Message;->uid:J

    const-string p2, "user_id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 562
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iget-wide v0, p2, Lcom/perm/kate/api/Message;->mid:J

    const-string p2, "message_id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 563
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 556
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2200(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    goto :goto_0

    .line 553
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1900(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    goto :goto_0

    .line 550
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->getTextToCopy(Ljava/lang/String;Lcom/perm/kate/api/Message;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 547
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$urls:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 544
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iget-object p2, p2, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$position:I

    invoke-static {p1, v0, v1, p2, v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2100(Lcom/perm/kate/DialogAttachmentsFragment;JZI)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
