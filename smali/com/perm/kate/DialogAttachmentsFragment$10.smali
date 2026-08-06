.class Lcom/perm/kate/DialogAttachmentsFragment$10;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment;->CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 443
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
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$position:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2000(Lcom/perm/kate/DialogAttachmentsFragment;JZI)V

    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 455
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 458
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1800(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    goto :goto_0

    .line 461
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$10;->val$long_mid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2100(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
