.class Lcom/perm/kate/MessageThreadFragment$10;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$index_in_queue:I

.field final synthetic val$is_from_queue:Z

.field final synthetic val$long_mid:J

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$message:Lcom/perm/kate/api/Message;

.field final synthetic val$mid:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Ljava/lang/String;ZIJLjava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/Message;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$mid:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$is_from_queue:Z

    iput p5, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$index_in_queue:I

    iput-wide p6, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$long_mid:J

    iput-object p8, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$urls:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$text:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iput p11, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 773
    :goto_0
    return-void

    .line 742
    :sswitch_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$mid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$2000(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :sswitch_1
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$is_from_queue:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget v1, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$index_in_queue:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageSendQueue;->remove(I)V

    .line 747
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2100(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$long_mid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/MessageThreadFragment;->access$1800(Lcom/perm/kate/MessageThreadFragment;J)V

    goto :goto_0

    .line 753
    :sswitch_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 756
    :sswitch_3
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 759
    :sswitch_4
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$202(Lcom/perm/kate/MessageThreadFragment;Z)Z

    .line 762
    :sswitch_5
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$long_mid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/MessageThreadFragment;->access$1700(Lcom/perm/kate/MessageThreadFragment;J)V

    goto :goto_0

    .line 765
    :sswitch_6
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    invoke-virtual {v0}, Lcom/perm/kate/MessageSendQueue;->start()V

    .line 766
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$2100(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_0

    .line 770
    :sswitch_7
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$long_mid:J

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$message:Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    iget v4, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$position:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V

    goto :goto_0

    .line 740
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x65 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_4
    .end sparse-switch
.end method
