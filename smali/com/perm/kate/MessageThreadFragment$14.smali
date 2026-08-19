.class Lcom/perm/kate/MessageThreadFragment$14;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1145
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$mid:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$is_from_queue:Z

    iput p5, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$index_in_queue:I

    iput-wide p6, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$long_mid:J

    iput-object p8, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$urls:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$text:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$message:Lcom/perm/kate/api/Message;

    iput p11, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1148
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_2

    const/16 p2, 0x65

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 1167
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$message:Lcom/perm/kate/api/Message;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->getTextToCopy(Ljava/lang/String;Lcom/perm/kate/api/Message;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->showTextDialogForCopy(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1185
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->access$502(Lcom/perm/kate/MessageThreadFragment;Z)Z

    goto/16 :goto_0

    .line 1205
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$3500(Lcom/perm/kate/MessageThreadFragment;)V

    goto/16 :goto_1

    .line 1202
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$message:Lcom/perm/kate/api/Message;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->access$3400(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;)V

    goto/16 :goto_1

    .line 1199
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$long_mid:J

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$message:Lcom/perm/kate/api/Message;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/perm/kate/MessageThreadFragment;->access$3300(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/String;Lcom/perm/kate/api/Message;)V

    goto/16 :goto_1

    .line 1170
    :pswitch_5
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1174
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$long_mid:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    sget-object p2, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$700(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1181
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->showKeyboard()V

    goto :goto_1

    .line 1191
    :pswitch_6
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    invoke-virtual {p1}, Lcom/perm/kate/MessageSendQueue;->start()V

    .line 1192
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_1

    .line 1196
    :pswitch_7
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$long_mid:J

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$message:Lcom/perm/kate/api/Message;

    iget-object p2, p2, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    iget v2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$position:I

    invoke-static {p1, v0, v1, p2, v2}, Lcom/perm/kate/MessageThreadFragment;->access$3200(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V

    goto :goto_1

    .line 1164
    :pswitch_8
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$message:Lcom/perm/kate/api/Message;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->getTextToCopy(Ljava/lang/String;Lcom/perm/kate/api/Message;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 1161
    :pswitch_9
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$urls:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_1

    .line 1153
    :pswitch_a
    iget-boolean p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$is_from_queue:Z

    if-eqz p1, :cond_0

    .line 1154
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$index_in_queue:I

    invoke-virtual {p1, p2}, Lcom/perm/kate/MessageSendQueue;->remove(I)V

    .line 1155
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)V

    goto :goto_1

    .line 1158
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$long_mid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$2900(Lcom/perm/kate/MessageThreadFragment;J)V

    goto :goto_1

    .line 1188
    :cond_1
    :goto_0
    :pswitch_b
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$long_mid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$2800(Lcom/perm/kate/MessageThreadFragment;J)V

    goto :goto_1

    .line 1150
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$14;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$14;->val$mid:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perm/kate/MessageThreadFragment;->access$3100(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
