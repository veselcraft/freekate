.class Lcom/perm/kate/MessagesFragment$13$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment$13;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessagesFragment$13;

.field final synthetic val$chat_id:J

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$message_uid:J

.field final synthetic val$thread_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$13;Ljava/util/ArrayList;JJJ)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$message_uid:J

    iput-wide p5, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$chat_id:J

    iput-wide p7, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 581
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 611
    :pswitch_0
    iget-wide p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-static {p1, p2}, Lcom/perm/utils/FixedChats;->remove(J)V

    .line 612
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$1600(Lcom/perm/kate/MessagesFragment;)V

    goto/16 :goto_0

    .line 607
    :pswitch_1
    iget-wide p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-static {p1, p2}, Lcom/perm/utils/FixedChats;->add(J)V

    .line 608
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$1600(Lcom/perm/kate/MessagesFragment;)V

    goto :goto_0

    .line 603
    :pswitch_2
    iget-wide p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-static {p1, p2}, Lcom/perm/kate/HiddenChats;->remove(J)V

    .line 604
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    const p2, 0x7f0f00c9

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    goto :goto_0

    .line 597
    :pswitch_3
    invoke-static {}, Lcom/perm/kate/HiddenChats;->getPin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/MessagesFragment;->access$1400(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/MessagesFragment;->access$1500(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0

    .line 594
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$message_uid:J

    iget-wide v3, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$chat_id:J

    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v5, p1, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static/range {v0 .. v6}, Lcom/perm/utils/ShortcutHelper;->createShortcutIcon(Landroid/app/Activity;JJJ)V

    goto :goto_0

    .line 583
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-boolean p2, p1, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    if-eqz p2, :cond_1

    .line 584
    new-instance v6, Lcom/perm/kate/MessagesFragment$13$1$1;

    invoke-direct {v6, p0}, Lcom/perm/kate/MessagesFragment$13$1$1;-><init>(Lcom/perm/kate/MessagesFragment$13$1;)V

    .line 589
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$message_uid:J

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$chat_id:J

    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v4, p1, Lcom/perm/kate/MessagesFragment;->account_id:J

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v8, p1, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/MessagesFragment;->deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V

    goto :goto_0

    .line 591
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment$13$1;->val$thread_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/MessagesFragment;->access$1100(Lcom/perm/kate/MessagesFragment;J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
