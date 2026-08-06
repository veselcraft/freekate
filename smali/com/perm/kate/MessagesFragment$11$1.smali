.class Lcom/perm/kate/MessagesFragment$11$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment$11;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessagesFragment$11;

.field final synthetic val$chat_id:J

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$message_uid:J

.field final synthetic val$thread_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$11;Ljava/util/ArrayList;JJJ)V
    .locals 1
    .param p1, "this$1"    # Lcom/perm/kate/MessagesFragment$11;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment$11$1;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/MessagesFragment$11$1;->val$message_uid:J

    iput-wide p5, p0, Lcom/perm/kate/MessagesFragment$11$1;->val$chat_id:J

    iput-wide p7, p0, Lcom/perm/kate/MessagesFragment$11$1;->val$thread_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$menuItems:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MenuItemDetails;

    iget v2, v2, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v2, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 461
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-boolean v2, v2, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    if-eqz v2, :cond_0

    .line 462
    new-instance v8, Lcom/perm/kate/MessagesFragment$11$1$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/perm/kate/MessagesFragment$11$1$1;-><init>(Lcom/perm/kate/MessagesFragment$11$1;)V

    .line 467
    .local v8, "callback":Lcom/perm/kate/MessagesFragment$DeleteCallback;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$message_uid:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$chat_id:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v6, v6, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v6, v6, Lcom/perm/kate/MessagesFragment;->account_id:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v9, v9, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v9}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v10, v10, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v10, v10, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static/range {v2 .. v11}, Lcom/perm/kate/MessagesFragment;->deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V

    goto :goto_0

    .line 469
    .end local v8    # "callback":Lcom/perm/kate/MessagesFragment$DeleteCallback;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$thread_id:J

    invoke-static {v2, v4, v5}, Lcom/perm/kate/MessagesFragment;->access$1000(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0

    .line 472
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v2}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$message_uid:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$chat_id:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v14, v2, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static/range {v9 .. v15}, Lcom/perm/utils/ShortcutHelper;->createShortcutIcon(Landroid/app/Activity;JJJ)V

    goto :goto_0

    .line 475
    :pswitch_2
    invoke-static {}, Lcom/perm/kate/HiddenChats;->getPin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$thread_id:J

    invoke-static {v2, v4, v5}, Lcom/perm/kate/MessagesFragment;->access$1300(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0

    .line 478
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$thread_id:J

    invoke-static {v2, v4, v5}, Lcom/perm/kate/MessagesFragment;->access$1400(Lcom/perm/kate/MessagesFragment;J)V

    goto/16 :goto_0

    .line 481
    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->val$thread_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/HiddenChats;->remove(J)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v2, v2, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Lcom/perm/kate/MessagesFragment;->displayToast(I)V

    goto/16 :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
