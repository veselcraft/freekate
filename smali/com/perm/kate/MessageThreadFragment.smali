.class public Lcom/perm/kate/MessageThreadFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MessageThreadFragment$MultiUploader;,
        Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;
    }
.end annotation


# static fields
.field static attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static attachments_objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field account_id:J

.field private addAttachmentClick:Landroid/view/View$OnClickListener;

.field callbackLastActivity:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field callback_messages:Lcom/perm/kate/session/Callback;

.field private chat_id:J

.field private et_new_message:Landroid/widget/EditText;

.field first_page_size:I

.field group_id:J

.field handler:Landroid/os/Handler;

.field hideTypingRunnable:Ljava/lang/Runnable;

.field private image_background:Landroid/widget/ImageView;

.field private last_activity:J

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_message_thread:Landroid/widget/ListView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private message_uid:J

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation
.end field

.field messages_in_db:I

.field private newMessageClick:Landroid/view/View$OnClickListener;

.field private onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field onKeyListener:Landroid/view/View$OnKeyListener;

.field page_size:I

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field queue:Lcom/perm/kate/MessageSendQueue;

.field private read:Z

.field private receivers_registered:Z

.field reverse_sort_order:Z

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field scroll_to_unread:Z

.field private selectedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private selected_mode:Z

.field private selected_mode_for_delete:Z

.field private selected_mode_for_reply:Z

.field sendButton:Landroid/view/View;

.field public showBubbles:Z

.field private state:I

.field stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

.field private stickerHintsView:Landroid/view/View;

.field private stickerHintsWindow:Landroid/widget/PopupWindow;

.field private thread_list_adapter:Lcom/perm/kate/MessageAdapter;

.field private tv_attachments_count:Landroid/widget/TextView;

.field private final typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private typingTextView:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field user:Lcom/perm/kate/api/User;

.field private users_chat_background:Z

.field voiceButton:Landroid/widget/ImageView;

.field private voiceClick:Landroid/view/View$OnClickListener;

.field protected voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 110
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    .line 111
    const/16 v0, 0x1e

    iput v0, p0, Lcom/perm/kate/MessageThreadFragment;->page_size:I

    .line 114
    const/16 v0, 0x14

    iput v0, p0, Lcom/perm/kate/MessageThreadFragment;->first_page_size:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    .line 116
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    .line 119
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    .line 120
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    .line 121
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    .line 122
    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    .line 123
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    .line 153
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isScrollToUnread()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    .line 332
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$5;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 457
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageThreadFragment$7;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    .line 530
    iput v2, p0, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    .line 650
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$9;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1016
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$16;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1034
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$17;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->newMessageClick:Landroid/view/View$OnClickListener;

    .line 1041
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$18;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->voiceClick:Landroid/view/View$OnClickListener;

    .line 1068
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$19;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1110
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z

    .line 1137
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$20;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->addAttachmentClick:Landroid/view/View$OnClickListener;

    .line 1144
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$21;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1183
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$23;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageThreadFragment$23;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 1215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    .line 1217
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$24;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1243
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$25;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    .line 1253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->last_activity:J

    .line 1390
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$27;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$27;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    .line 1523
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$28;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    .line 1538
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$29;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1612
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$31;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageThreadFragment$31;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callbackLastActivity:Lcom/perm/kate/session/Callback;

    .line 1741
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$33;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1766
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$34;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    return-void
.end method

.method private CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 21
    .param p1, "message_uid"    # J
    .param p3, "user_name"    # Ljava/lang/String;
    .param p4, "mid"    # Ljava/lang/String;
    .param p5, "read_state"    # Ljava/lang/Boolean;
    .param p6, "is_out"    # Ljava/lang/Boolean;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "position"    # I
    .param p9, "message"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 686
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v4, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p8

    if-le v0, v2, :cond_a

    const/4 v6, 0x1

    .line 691
    .local v6, "is_from_queue":Z
    :goto_0
    const/16 v17, 0x0

    .line 692
    .local v17, "state_in_queue":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    sub-int v7, p8, v2

    .line 693
    .local v7, "index_in_queue":I
    :goto_1
    if-eqz v6, :cond_0

    .line 694
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v2, v2, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v2, v2, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/perm/kate/MessageSendQueue$MessageData;

    .line 696
    .local v16, "md":Lcom/perm/kate/MessageSendQueue$MessageData;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v17, v0

    .line 701
    .end local v16    # "md":Lcom/perm/kate/MessageSendQueue$MessageData;
    :cond_0
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 702
    :cond_1
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0703c5

    const/16 v5, 0x68

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 707
    .local v8, "long_mid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_3

    .line 708
    if-nez v6, :cond_3

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 710
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07015d

    const/16 v5, 0x67

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_4

    .line 716
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070244

    const/16 v5, 0x69

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 718
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 719
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0702d1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_6

    .line 723
    if-nez v6, :cond_6

    .line 724
    if-eqz p9, :cond_f

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 725
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0702cf

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_6
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 730
    .local v10, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 731
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0702bd

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_7
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07007e

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    if-eqz v6, :cond_8

    if-eqz v6, :cond_9

    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_8

    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 734
    :cond_8
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070084

    const/4 v5, 0x4

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_9
    new-instance v19, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v20

    new-instance v2, Lcom/perm/kate/MessageThreadFragment$10;

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move/from16 v13, p8

    invoke-direct/range {v2 .. v13}, Lcom/perm/kate/MessageThreadFragment$10;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Ljava/lang/String;ZIJLjava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/Message;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v18

    .line 774
    .local v18, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 775
    .local v14, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 776
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 782
    .end local v4    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v6    # "is_from_queue":Z
    .end local v7    # "index_in_queue":I
    .end local v8    # "long_mid":J
    .end local v10    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v17    # "state_in_queue":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    .end local v18    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_4
    return-void

    .line 688
    .restart local v4    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v2, v2, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p8

    if-ge v0, v2, :cond_c

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 692
    .restart local v6    # "is_from_queue":Z
    .restart local v17    # "state_in_queue":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v2, v2, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v7, v2, p8

    goto/16 :goto_1

    .line 712
    .restart local v7    # "index_in_queue":I
    .restart local v8    # "long_mid":J
    :cond_e
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701a6

    const/16 v5, 0x65

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 777
    .end local v4    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v6    # "is_from_queue":Z
    .end local v7    # "index_in_queue":I
    .end local v8    # "long_mid":J
    .end local v17    # "state_in_queue":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    :catch_0
    move-exception v15

    .line 778
    .local v15, "ex":Ljava/lang/OutOfMemoryError;
    invoke-static {v15}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 779
    invoke-virtual {v15}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 780
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_4

    .line 727
    .end local v15    # "ex":Ljava/lang/OutOfMemoryError;
    .restart local v4    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v6    # "is_from_queue":Z
    .restart local v7    # "index_in_queue":I
    .restart local v8    # "long_mid":J
    .restart local v17    # "state_in_queue":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    :cond_f
    :try_start_1
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0702ce

    const/4 v5, 0x7

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private UpdateAttachmentsCount()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1851
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1854
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2, v1, v1}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    .line 1856
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->setVoiceButtonVisibility()V

    .line 1857
    return-void

    .line 1853
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private UpdateAttachmentsCountOnUiThread()V
    .locals 2

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1868
    :goto_0
    return-void

    .line 1862
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$36;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$36;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->setMessageActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->checkStickerHints(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/MessageThreadFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->refresh(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/MessageThreadFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/MessageThreadFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/MessageThreadFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget v0, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    return v0
.end method

.method static synthetic access$1302(Lcom/perm/kate/MessageThreadFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    return p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/MessageThreadFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # J

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->selectMessage(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/MessageThreadFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # J

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->selectMessageForDelete(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/Boolean;
    .param p6, "x5"    # Ljava/lang/Boolean;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 94
    invoke-direct/range {p0 .. p9}, Lcom/perm/kate/MessageThreadFragment;->CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->setAsRead(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/perm/kate/MessageThreadFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Boolean;
    .param p4, "x3"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/MessageThreadFragment;->markAsImportant(JLjava/lang/Boolean;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->sendClicked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showRecordActivity()V

    return-void
.end method

.method static synthetic access$2500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/perm/kate/MessageThreadFragment;->reportMessageAttachment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCountOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MessageThreadFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->showNewMessagesAcivity(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayLastSeen()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getLocationWithCheck()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showDocsActivity()V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showAttachments()V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->photoAttachmentsUploaded(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showAudioActivity()V

    return-void
.end method

.method static synthetic access$4100(Lcom/perm/kate/MessageThreadFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->attachVideo()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/MessageThreadFragment;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showGallery()V

    return-void
.end method

.method static synthetic access$4500(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->clearBackground()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->forwardSelectedMessages()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    return v0
.end method

.method static synthetic access$700(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideStickerHints()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    return-object v0
.end method

.method private attachVideo()V
    .locals 4

    .prologue
    .line 1953
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1954
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1955
    const-string v1, "com.perm.kate.user_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1956
    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1957
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1958
    return-void
.end method

.method private checkChatBackground()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 352
    :try_start_0
    iget-wide v10, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 353
    .local v6, "uid":J
    :goto_0
    invoke-static {v6, v7}, Lcom/perm/utils/MessageThreadBgHelper;->take(J)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "chat_background":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    iput-boolean v9, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    .line 355
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 356
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "key_use_chat_background"

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 357
    .local v5, "use_chat_background":Z
    if-nez v5, :cond_1

    iget-boolean v9, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-eqz v9, :cond_4

    .line 358
    :cond_1
    iget-boolean v9, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-nez v9, :cond_2

    .line 359
    const-string v9, "key_chat_background"

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 361
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 362
    .local v2, "chat_bg":Landroid/net/Uri;
    iget-boolean v9, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-eqz v9, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-static {v2, v8}, Lcom/perm/kate/MessageThreadBackground;->get(Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 364
    iget-object v8, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v8, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "chat_background":Ljava/lang/String;
    .end local v2    # "chat_bg":Landroid/net/Uri;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "use_chat_background":Z
    .end local v6    # "uid":J
    :cond_4
    :goto_1
    return-void

    .line 352
    :cond_5
    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v4

    .line 370
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkDeleteMessages()V
    .locals 4

    .prologue
    const v3, 0x7f070084

    const/4 v1, 0x0

    .line 1445
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    .line 1448
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0115

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1449
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1447
    goto :goto_1

    .line 1448
    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 1449
    :cond_3
    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3
.end method

.method private checkForwardMessages()V
    .locals 6

    .prologue
    const v5, 0x7f0e0117

    const v4, 0x7f070244

    const v3, 0x7f0701a6

    const/4 v1, 0x0

    .line 1482
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    .line 1485
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    if-nez v0, :cond_1

    .line 1486
    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    .line 1487
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e0115

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    if-eqz v0, :cond_5

    .line 1489
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1484
    goto :goto_1

    .line 1487
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 1489
    :cond_4
    invoke-virtual {p0, v4}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    .line 1491
    :cond_5
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4
.end method

.method private checkStickerHints(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Lcom/perm/kate/StickerHints;->getShowStickerHints()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    sget-boolean v2, Lcom/perm/kate/KApplication;->isTablet:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-static {v2, v4, v5}, Lcom/perm/kate/StickerHints;->get(Ljava/lang/String;J)[I

    move-result-object v0

    .line 287
    .local v0, "hints":[I
    if-eqz v0, :cond_3

    array-length v2, v0

    if-eqz v2, :cond_3

    .line 288
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->showStickerHints([I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v0    # "hints":[I
    :catch_0
    move-exception v1

    .line 292
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 293
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "hints":[I
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideStickerHints()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private clearBackground()V
    .locals 6

    .prologue
    .line 2085
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 2086
    .local v0, "uid":J
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/MessageThreadBgHelper;->clear(J)V

    .line 2087
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 2088
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2089
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2091
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkChatBackground()V

    .line 2093
    return-void

    .line 2085
    .end local v0    # "uid":J
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    goto :goto_0
.end method

.method private clearNewMessageEditText()V
    .locals 6

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 1028
    .local v0, "uid":J
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/TempMessages;->clear(J)V

    .line 1029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    .line 1030
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    .line 1031
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    .line 1032
    return-void

    .line 1027
    .end local v0    # "uid":J
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    goto :goto_0
.end method

.method private closeUnreadEnabled()Z
    .locals 3

    .prologue
    .line 2063
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_close_unread"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private createAddAttachmentDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1660
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07003b

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_0
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070363

    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->internalGalleryEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    :goto_0
    invoke-direct {v4, v5, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070362

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070364

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07035c

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1669
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703a4

    const/16 v5, 0x6b

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    :cond_1
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070136

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07013a

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070138

    const/16 v5, 0x67

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070137

    const/16 v5, 0x68

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070409

    const/16 v5, 0x69

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1676
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$32;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/MessageThreadFragment$32;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1736
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1737
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1738
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1739
    return-void

    .line 1663
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private createAttachAudioDialog()V
    .locals 6

    .prologue
    .line 1875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1876
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1878
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1880
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$37;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/MessageThreadFragment$37;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1896
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1897
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1898
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1899
    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1926
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d6

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d5

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700b4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1931
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$38;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/MessageThreadFragment$38;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1947
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1948
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1949
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1950
    return-void
.end method

.method private createStickerHintsPopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030101

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    .line 343
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    const v2, 0x7f0e0166

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 344
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v1, Lcom/perm/kate/smile/StickerAdapter;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-array v4, v6, [I

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/smile/StickerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V

    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    .line 345
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    const/4 v3, -0x1

    const-wide v4, 0x4052c00000000000L    # 75.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    .line 348
    return-void
.end method

.method private deleteSelectedMessages()V
    .locals 10

    .prologue
    .line 955
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 956
    .local v8, "mid":Ljava/lang/Long;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->deleteMessage(JJJ)Z

    goto :goto_0

    .line 957
    .end local v8    # "mid":Ljava/lang/Long;
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 959
    .local v0, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$14;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MessageThreadFragment$14;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    .line 964
    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment$14;->start()V

    .line 965
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    .line 966
    return-void
.end method

.method private disableNotifications()V
    .locals 7

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v6

    .line 2138
    .local v6, "is_disabled":Z
    if-nez v6, :cond_0

    const/4 v6, 0x1

    .line 2139
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static/range {v1 .. v6}, Lcom/perm/utils/ChatNotificationsHelper;->setDisabledChat(Landroid/content/Context;JJZ)V

    .line 2140
    if-eqz v6, :cond_1

    const v0, 0x7f0704ab

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->displayToast(Ljava/lang/String;)V

    .line 2141
    return-void

    .line 2138
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 2140
    :cond_1
    const v0, 0x7f0704b1

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private displayDraft()V
    .locals 8

    .prologue
    .line 376
    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 377
    .local v2, "uid":J
    :goto_0
    invoke-static {v2, v3}, Lcom/perm/utils/TempMessages;->take(J)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "temp":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 381
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 382
    .local v1, "text":Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 385
    .end local v1    # "text":Landroid/text/Editable;
    :goto_1
    return-void

    .line 376
    .end local v0    # "temp":Ljava/lang/String;
    .end local v2    # "uid":J
    :cond_0
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    goto :goto_0

    .line 384
    .restart local v0    # "temp":Ljava/lang/String;
    .restart local v2    # "uid":J
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    goto :goto_1
.end method

.method private displayLastSeen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 1583
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1585
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    if-nez v2, :cond_1

    .line 1586
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1589
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 1590
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 1591
    .local v0, "is_male":Z
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-wide v4, v4, Lcom/perm/kate/api/User;->last_seen:J

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-object v6, v6, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v3, v4, v5, v0, v6}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "is_male":Z
    :cond_3
    move v0, v1

    .line 1590
    goto :goto_1

    .line 1594
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1760
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1762
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1763
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, p0, v0, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 1764
    return-void
.end method

.method private forwardSelectedMessages()V
    .locals 6

    .prologue
    .line 1469
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [J

    .line 1470
    .local v0, "forward_messages_array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1471
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 1470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1472
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1473
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1474
    const-string v3, "com.perm.kate.only_members"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1475
    const-string v3, "com.perm.kate.new_message"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1476
    const-string v3, "com.perm.kate.forward_messages"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1477
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1478
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    .line 1479
    return-void
.end method

.method public static getBgByTheme()I
    .locals 2

    .prologue
    const v0, 0x7f02022c

    .line 1635
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v1, :pswitch_data_0

    .line 1644
    :pswitch_0
    const v0, 0x7f0201e9

    :goto_0
    :pswitch_1
    return v0

    .line 1642
    :pswitch_2
    const v0, 0x7f02022d

    goto :goto_0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x7f0a00c3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getLocation()V
    .locals 3

    .prologue
    .line 1969
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 1970
    .local v0, "geo":Lcom/perm/utils/MyLocation;
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$39;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$39;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1979
    .local v1, "loc_res":Lcom/perm/utils/MyLocation$LocationResult;
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    .line 1980
    return-void
.end method

.method private getLocationWithCheck()V
    .locals 1

    .prologue
    .line 1962
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showGoogleMapsActivity()V

    .line 1966
    :goto_0
    return-void

    .line 1965
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getLocation()V

    goto :goto_0
.end method

.method public static getMessagesFromDb(JJJZJ)Ljava/util/ArrayList;
    .locals 36
    .param p0, "message_uid"    # J
    .param p2, "chat_id"    # J
    .param p4, "account_id"    # J
    .param p6, "reverse_sort_order"    # Z
    .param p7, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 592
    .local v30, "t1":J
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v29, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    const/16 v26, 0x0

    .line 595
    .local v26, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move-wide/from16 v11, p7

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/db/DataHelper;->fetchMessagesThread(JJJZJ)Landroid/database/Cursor;

    move-result-object v26

    .line 596
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 597
    .local v20, "columnIndexId":I
    const-string v2, "have_attachments"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 598
    .local v19, "columnIndexHasAttachments":I
    const-string v2, "is_out"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 599
    .local v22, "columnIndexIsOut":I
    const-string v2, "read_state"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 600
    .local v24, "columnIndexReadState":I
    const-string v2, "date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 601
    .local v18, "columnIndexDate":I
    const-string v2, "body"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 602
    .local v17, "columnIndexBody":I
    const-string v2, "chat_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 603
    .local v13, "chat_column_index":I
    const-string v2, "message_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 604
    .local v23, "columnIndexMessageId":I
    const-string v2, "uid"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 605
    .local v25, "columnIndexUid":I
    const-string v2, "important"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 606
    .local v21, "columnIndexImportant":I
    const-string v2, "action"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 607
    .local v14, "columnIndexAction":I
    const-string v2, "action_mid"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 608
    .local v15, "columnIndexActionMid":I
    const-string v2, "action_text"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 610
    .local v16, "columnIndexActionText":I
    :goto_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 611
    new-instance v28, Lcom/perm/kate/api/Message;

    invoke-direct/range {v28 .. v28}, Lcom/perm/kate/api/Message;-><init>()V

    .line 613
    .local v28, "message":Lcom/perm/kate/api/Message;
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 614
    .local v4, "_id":J
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    const/16 v27, 0x1

    .line 615
    .local v27, "have_attachments":Z
    :goto_1
    if-eqz v27, :cond_0

    .line 616
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v3, 0x2

    const/4 v8, 0x0

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    .line 618
    :cond_0
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/perm/kate/api/Message;->is_out:Z

    .line 619
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/perm/kate/api/Message;->read_state:Z

    .line 620
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v28

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->date:J

    .line 621
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 622
    const/4 v2, -0x1

    if-eq v13, v2, :cond_1

    .line 623
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 624
    :cond_1
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v28

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->mid:J

    .line 625
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v28

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 626
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 627
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 630
    :goto_5
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 631
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    .line 632
    :cond_2
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 633
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    .line 634
    :cond_3
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 635
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    .line 636
    :cond_4
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 638
    .end local v4    # "_id":J
    .end local v13    # "chat_column_index":I
    .end local v14    # "columnIndexAction":I
    .end local v15    # "columnIndexActionMid":I
    .end local v16    # "columnIndexActionText":I
    .end local v17    # "columnIndexBody":I
    .end local v18    # "columnIndexDate":I
    .end local v19    # "columnIndexHasAttachments":I
    .end local v20    # "columnIndexId":I
    .end local v21    # "columnIndexImportant":I
    .end local v22    # "columnIndexIsOut":I
    .end local v23    # "columnIndexMessageId":I
    .end local v24    # "columnIndexReadState":I
    .end local v25    # "columnIndexUid":I
    .end local v27    # "have_attachments":Z
    .end local v28    # "message":Lcom/perm/kate/api/Message;
    :catch_0
    move-exception v34

    .line 639
    .local v34, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    .line 640
    invoke-static/range {v34 .. v34}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    if-eqz v26, :cond_5

    .line 643
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 645
    .end local v34    # "th":Ljava/lang/Throwable;
    :cond_5
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    .line 646
    .local v32, "t2":J
    const-string v2, "Kate.MessageThreadFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMessagesFromDb took "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v6, v32, v30

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-object v29

    .line 614
    .end local v32    # "t2":J
    .restart local v4    # "_id":J
    .restart local v13    # "chat_column_index":I
    .restart local v14    # "columnIndexAction":I
    .restart local v15    # "columnIndexActionMid":I
    .restart local v16    # "columnIndexActionText":I
    .restart local v17    # "columnIndexBody":I
    .restart local v18    # "columnIndexDate":I
    .restart local v19    # "columnIndexHasAttachments":I
    .restart local v20    # "columnIndexId":I
    .restart local v21    # "columnIndexImportant":I
    .restart local v22    # "columnIndexIsOut":I
    .restart local v23    # "columnIndexMessageId":I
    .restart local v24    # "columnIndexReadState":I
    .restart local v25    # "columnIndexUid":I
    .restart local v28    # "message":Lcom/perm/kate/api/Message;
    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 618
    .restart local v27    # "have_attachments":Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 619
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 627
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 629
    :cond_a
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 642
    .end local v4    # "_id":J
    .end local v13    # "chat_column_index":I
    .end local v14    # "columnIndexAction":I
    .end local v15    # "columnIndexActionMid":I
    .end local v16    # "columnIndexActionText":I
    .end local v17    # "columnIndexBody":I
    .end local v18    # "columnIndexDate":I
    .end local v19    # "columnIndexHasAttachments":I
    .end local v20    # "columnIndexId":I
    .end local v21    # "columnIndexImportant":I
    .end local v22    # "columnIndexIsOut":I
    .end local v23    # "columnIndexMessageId":I
    .end local v24    # "columnIndexReadState":I
    .end local v25    # "columnIndexUid":I
    .end local v27    # "have_attachments":Z
    .end local v28    # "message":Lcom/perm/kate/api/Message;
    :catchall_0
    move-exception v2

    if-eqz v26, :cond_b

    .line 643
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 642
    .restart local v13    # "chat_column_index":I
    .restart local v14    # "columnIndexAction":I
    .restart local v15    # "columnIndexActionMid":I
    .restart local v16    # "columnIndexActionText":I
    .restart local v17    # "columnIndexBody":I
    .restart local v18    # "columnIndexDate":I
    .restart local v19    # "columnIndexHasAttachments":I
    .restart local v20    # "columnIndexId":I
    .restart local v21    # "columnIndexImportant":I
    .restart local v22    # "columnIndexIsOut":I
    .restart local v23    # "columnIndexMessageId":I
    .restart local v24    # "columnIndexReadState":I
    .restart local v25    # "columnIndexUid":I
    :cond_c
    if-eqz v26, :cond_5

    .line 643
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 505
    .local v3, "users_in_response":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 506
    .local v1, "groups_in_response":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 507
    .local v2, "message":Lcom/perm/kate/api/Message;
    iget-wide v6, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 508
    iget-wide v6, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    :goto_1
    iget-object v5, v2, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 513
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 514
    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v6, v6, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 515
    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v6, v6, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 510
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_2
    iget-wide v6, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .restart local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_3
    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v6, v6, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 519
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_4
    iget-object v5, v2, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 520
    iget-object v5, v2, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    .end local v2    # "message":Lcom/perm/kate/api/Message;
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 523
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 524
    return-void
.end method

.method private hideStickerHints()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 300
    :cond_0
    return-void
.end method

.method private initQueue()V
    .locals 6

    .prologue
    .line 415
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    neg-long v0, v2

    .line 416
    .local v0, "id":J
    :goto_0
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    .line 417
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    .line 419
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v4, v5}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/MessageSendQueue;->session:Lcom/perm/kate/session/Session;

    .line 420
    return-void

    .line 415
    .end local v0    # "id":J
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    goto :goto_0
.end method

.method static isBrokenSamsungDevice()Z
    .locals 2

    .prologue
    .line 943
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScrollToUnread()Z
    .locals 3

    .prologue
    .line 2144
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_messages_scroll_to_unread"

    const/4 v2, 0x1

    .line 2145
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2144
    return v0
.end method

.method static isVoiceButtonEnabled()Z
    .locals 3

    .prologue
    .line 2183
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voice_button"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private leaveConversation()V
    .locals 4

    .prologue
    .line 2027
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$40;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$40;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2046
    .local v0, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070079

    .line 2047
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701c4

    .line 2048
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 2049
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 2050
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 2051
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 2052
    return-void
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 1174
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$22;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1180
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment$22;->start()V

    .line 1181
    return-void
.end method

.method private makeSceenshot()V
    .locals 1

    .prologue
    .line 2023
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/ScreenshotHelper;->makeScreenshot(Landroid/app/Activity;)V

    .line 2024
    return-void
.end method

.method private markAsImportant(JLjava/lang/Boolean;I)V
    .locals 7
    .param p1, "long_mid"    # J
    .param p3, "important"    # Ljava/lang/Boolean;
    .param p4, "position"    # I

    .prologue
    .line 786
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$11;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/MessageThreadFragment$11;-><init>(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V

    .line 812
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment$11;->start()V

    .line 813
    return-void
.end method

.method private photoAttachmentsUploaded(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2, "display_toast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1774
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 1777
    .local v1, "uploaded_photo":Lcom/perm/kate/api/Photo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "attachment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1780
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/MessageThreadFragment$35;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/perm/kate/MessageThreadFragment$35;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private prepareHeader()V
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageThreadActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadActivity;->prepareHeader(Lcom/perm/kate/api/User;)V

    .line 432
    return-void
.end method

.method private refresh(I)V
    .locals 12
    .param p1, "unread_count"    # I

    .prologue
    const/4 v6, 0x0

    .line 445
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->showProgressBar(Z)V

    .line 446
    iget v7, p0, Lcom/perm/kate/MessageThreadFragment;->first_page_size:I

    .line 447
    .local v7, "count":I
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    if-eqz v0, :cond_1

    .line 448
    if-le p1, v7, :cond_0

    .line 449
    add-int/lit8 v7, p1, 0xa

    .line 450
    :cond_0
    const/16 v0, 0xc8

    if-le v7, v0, :cond_1

    .line 451
    const/16 v7, 0xc8

    .line 453
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    iget-object v10, p0, Lcom/perm/kate/MessageThreadFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->showProgressBar(Z)V

    .line 455
    return-void
.end method

.method private refreshInThread(I)V
    .locals 1
    .param p1, "unread_count"    # I

    .prologue
    .line 435
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    .line 436
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageThreadFragment$6;-><init>(Lcom/perm/kate/MessageThreadFragment;I)V

    .line 441
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment$6;->start()V

    .line 442
    return-void
.end method

.method private refreshOnlineStatusInThread()V
    .locals 2

    .prologue
    .line 1600
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v0, v1}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    :goto_0
    return-void

    .line 1602
    :cond_0
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$30;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1609
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment$30;->start()V

    goto :goto_0
.end method

.method private static reportMessageAttachment(Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 2155
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2156
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    const-string v1, "MESSAGE_ATTACHMENT"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/perm/kate/Helper;->reportEvent(Ljava/lang/String;Ljava/util/Map;I)V

    .line 2158
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;)V

    .line 528
    return-void
.end method

.method private requeryOnUiThread(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "scroll_to"    # Ljava/lang/Integer;

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessageThreadFragment$8;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private searchByUser()V
    .locals 8

    .prologue
    .line 2125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v4, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2126
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_messages"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2128
    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 2129
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 2132
    .local v2, "peer_id":J
    :goto_0
    const-string v1, "com.perm.kate.peer_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2133
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    .line 2134
    return-void

    .line 2131
    .end local v2    # "peer_id":J
    :cond_0
    const-wide/32 v4, 0x77359400

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    add-long v2, v4, v6

    .restart local v2    # "peer_id":J
    goto :goto_0
.end method

.method private selectMessage(J)V
    .locals 3
    .param p1, "mid"    # J

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1458
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V

    .line 1459
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkForwardMessages()V

    .line 1460
    return-void

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private selectMessageForDelete(J)V
    .locals 3
    .param p1, "mid"    # J

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1441
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V

    .line 1442
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkDeleteMessages()V

    .line 1443
    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendClicked()V
    .locals 11

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    sget-object v6, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    sget-object v7, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 1519
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->clearNewMessageEditText()V

    .line 1520
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 1521
    return-void
.end method

.method private sendOnEnterEnabled()Z
    .locals 3

    .prologue
    .line 1549
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_send_on_enter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setAsRead(Ljava/lang/String;)V
    .locals 4
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 970
    .local v0, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->setAsRead(Ljava/util/ArrayList;)V

    .line 972
    return-void
.end method

.method private setAsRead(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 975
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 997
    :goto_0
    return-void

    .line 977
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->setMessageReadState(Ljava/util/ArrayList;ZJJ)J

    .line 978
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 980
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageThreadFragment$15;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    .line 988
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment$15;->start()V

    .line 991
    sget-object v0, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Counter;->decrease(I)V

    .line 996
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->setUnreadCountInChat(JJIJ)V

    goto :goto_0
.end method

.method private setCutomBackground(Landroid/net/Uri;)V
    .locals 8
    .param p1, "content"    # Landroid/net/Uri;

    .prologue
    .line 2111
    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 2112
    .local v0, "uid":J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/perm/kate/MessageThreadBackground;->makeLocalCopy(Landroid/net/Uri;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    .line 2113
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/perm/utils/MessageThreadBgHelper;->put(JLjava/lang/String;)V

    .line 2114
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[message_thread_background]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/perm/utils/MemoryCache;->remove(Ljava/lang/String;)V

    .line 2115
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkChatBackground()V

    .line 2116
    return-void

    .line 2111
    .end local v0    # "uid":J
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    goto :goto_0
.end method

.method private setMessageActivity()V
    .locals 6

    .prologue
    .line 1255
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1258
    .local v0, "tick":J
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->last_activity:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1259
    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->last_activity:J

    .line 1260
    new-instance v2, Lcom/perm/kate/MessageThreadFragment$26;

    invoke-direct {v2, p0}, Lcom/perm/kate/MessageThreadFragment$26;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1268
    invoke-virtual {v2}, Lcom/perm/kate/MessageThreadFragment$26;->start()V

    goto :goto_0
.end method

.method private showAttachments()V
    .locals 3

    .prologue
    .line 2016
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2017
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AttachmentsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2018
    const-string v1, "com.perm.kate.is_thread_attachments"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2019
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    .line 2020
    return-void
.end method

.method private showAudioActivity()V
    .locals 4

    .prologue
    .line 1902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1903
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1904
    const-string v1, "com.perm.kate.owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1905
    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1906
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1907
    return-void
.end method

.method private showBackgroundDialog()V
    .locals 4

    .prologue
    .line 2067
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2068
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 2069
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f070255

    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2070
    const/4 v2, 0x1

    const v3, 0x7f070084

    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2071
    const v2, 0x7f07045e

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/MessageThreadFragment$41;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$41;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2072
    invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2081
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 2082
    return-void
.end method

.method private showDocsActivity()V
    .locals 4

    .prologue
    .line 2009
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2010
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2011
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2012
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2013
    return-void
.end method

.method private showGallery()V
    .locals 4

    .prologue
    .line 2101
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2102
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2103
    const/16 v2, 0x7d4

    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2104
    :catch_0
    move-exception v1

    .line 2105
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2106
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showGoogleMapsActivity()V
    .locals 3

    .prologue
    .line 2002
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2003
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2004
    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2005
    return-void
.end method

.method private showMessageDatePicker()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 908
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 909
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 910
    .local v3, "year":I
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 911
    .local v4, "month":I
    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 912
    .local v5, "day":I
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 914
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v7, 0x1030073

    invoke-direct {v1, v2, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 916
    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/perm/kate/MessageThreadFragment$13;

    invoke-direct {v2, p0}, Lcom/perm/kate/MessageThreadFragment$13;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 938
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 939
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 940
    return-void
.end method

.method private showNewMessagesAcivity(Z)V
    .locals 6
    .param p1, "reply"    # Z

    .prologue
    .line 1000
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1001
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1002
    const-string v3, "com.perm.kate.user_id"

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v3, "com.perm.kate.chat_id"

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1004
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1005
    const-string v3, "com.perm.kate.message_text"

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    :cond_0
    if-eqz p1, :cond_2

    .line 1007
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [J

    .line 1008
    .local v0, "forward_messages_array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1009
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    const-string v3, "com.perm.kate.forward_messages"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1012
    .end local v0    # "forward_messages_array":[J
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1013
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    .line 1014
    return-void
.end method

.method private showRecordActivity()V
    .locals 3

    .prologue
    .line 2149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2150
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/RecordEpisodeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2151
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2152
    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 4
    .param p1, "video"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1911
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1912
    if-eqz p1, :cond_0

    .line 1913
    const-string v1, "com.perm.kate.select_video"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1914
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1919
    :goto_0
    return-void

    .line 1916
    :cond_0
    const-string v1, "com.perm.kate.select_audio"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1917
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showStickerHints([I)V
    .locals 6
    .param p1, "hints"    # [I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createStickerHintsPopup()V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v2, 0x0

    const-wide v4, 0x405b800000000000L    # 110.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    iput-object p1, v0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    .line 329
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/smile/StickerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private showVideoUploadActivity(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2055
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2056
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2057
    const-string v1, "com.perm.kate.is_private"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2058
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2059
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2060
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1990
    move-object v1, p1

    .line 1991
    .local v1, "geo_location":Landroid/location/Location;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1993
    .local v0, "attachment":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 1997
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    .line 1999
    .end local v0    # "attachment":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lon"    # Ljava/lang/String;

    .prologue
    .line 1983
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1984
    .local v0, "l":Landroid/location/Location;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1985
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1986
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->updateLocation(Landroid/location/Location;)V

    .line 1987
    return-void
.end method


# virtual methods
.method addSmile(Ljava/lang/String;)V
    .locals 5
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 1423
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1425
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v0, v4}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 1426
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1427
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1428
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1429
    return-void
.end method

.method public clearSelectedMessages()V
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1464
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkForwardMessages()V

    .line 1465
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkDeleteMessages()V

    .line 1466
    return-void
.end method

.method public displayThread(JJ)V
    .locals 5
    .param p1, "message_uid2"    # J
    .param p3, "chat_id2"    # J

    .prologue
    .line 1570
    iput-wide p1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 1571
    iput-wide p3, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 1572
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayDraft()V

    .line 1573
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    .line 1574
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 1575
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayLastSeen()V

    .line 1576
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->initQueue()V

    .line 1577
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    .line 1578
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshOnlineStatusInThread()V

    .line 1580
    :cond_0
    return-void
.end method

.method editChat()V
    .locals 4

    .prologue
    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 949
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 950
    const-string v1, "com.perm.kate.chat_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 951
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    .line 952
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const-wide/16 v8, 0x0

    const v6, 0x7f0e039f

    const v5, 0x7f0e039e

    const/4 v4, 0x0

    .line 817
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 818
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0f0004

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 819
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 820
    const v2, 0x7f0e0395

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 821
    const v2, 0x7f0e039d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 823
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    if-nez v2, :cond_1

    .line 824
    const v2, 0x7f0e03a1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 825
    :cond_1
    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    if-nez v2, :cond_2

    .line 826
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 829
    :cond_2
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    .line 830
    const v2, 0x7f0e0396

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 831
    const v2, 0x7f0e0398

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 832
    const v2, 0x7f0e0399

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 833
    const v2, 0x7f0e039b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 834
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 835
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 837
    :cond_3
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v1

    .line 838
    .local v1, "is_disabled":Z
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v1, :cond_4

    const v2, 0x7f070196

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 839
    const/4 v2, 0x1

    return v2

    .line 838
    :cond_4
    const v2, 0x7f070189

    goto :goto_0
.end method

.method public isReverseOrder()Z
    .locals 4

    .prologue
    .line 1130
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1131
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_messages_reverse_1"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1133
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 1132
    :catch_0
    move-exception v1

    .line 1133
    .local v1, "th":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method markAllAsRead()V
    .locals 10

    .prologue
    .line 1059
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    if-nez v1, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v8, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->getUnreadMessages(JJJJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1063
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->setAsRead(Ljava/util/ArrayList;)V

    .line 1064
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1065
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Lcom/perm/kate/KateWidgetMessages;->displayNewData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 41
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1275
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/MessageThreadFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v7}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 1276
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->clearNewMessageEditText()V

    .line 1280
    :cond_0
    if-nez p1, :cond_3

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 1281
    const-string v4, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1282
    .local v32, "audios":Ljava/lang/String;
    if-eqz v32, :cond_1

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1283
    const-string v4, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1284
    .local v33, "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v7, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v29, v33, v4

    .line 1285
    .local v29, "attachment":Ljava/lang/String;
    sget-object v8, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    sget-object v8, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1289
    .end local v29    # "attachment":Ljava/lang/String;
    .end local v33    # "audios_array":[Ljava/lang/String;
    :cond_1
    const-string v4, "audio_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1290
    .local v24, "attached_audio_id":Ljava/lang/Long;
    const-string v4, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 1291
    .local v25, "attached_audio_owner_id":Ljava/lang/Long;
    const-string v4, "Kate.MessageThreadFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attached_audio_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attached_audio_owner_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1293
    .restart local v29    # "attachment":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    .end local v24    # "attached_audio_id":Ljava/lang/Long;
    .end local v25    # "attached_audio_owner_id":Ljava/lang/Long;
    .end local v29    # "attachment":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f07003d

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1298
    .end local v32    # "audios":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x4

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_6

    .line 1299
    const-string v4, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1300
    .restart local v32    # "audios":Ljava/lang/String;
    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1301
    const-string v4, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1302
    .restart local v33    # "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v7, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_5

    aget-object v29, v33, v4

    .line 1303
    .restart local v29    # "attachment":Ljava/lang/String;
    sget-object v8, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    sget-object v8, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1307
    .end local v29    # "attachment":Ljava/lang/String;
    .end local v33    # "audios_array":[Ljava/lang/String;
    :cond_4
    const-string v4, "audio_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1308
    .restart local v24    # "attached_audio_id":Ljava/lang/Long;
    const-string v4, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 1309
    .restart local v25    # "attached_audio_owner_id":Ljava/lang/Long;
    const-string v4, "Kate.MessageThreadFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attached_audio_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attached_audio_owner_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1311
    .restart local v29    # "attachment":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    .end local v24    # "attached_audio_id":Ljava/lang/Long;
    .end local v25    # "attached_audio_owner_id":Ljava/lang/Long;
    .end local v29    # "attachment":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f07003d

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1316
    .end local v32    # "audios":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x6

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_7

    .line 1317
    const-string v4, "video_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 1318
    .local v28, "attached_video_id":Ljava/lang/Long;
    const-string v4, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 1319
    .local v30, "attached_video_owner_id":Ljava/lang/Long;
    const-string v4, "Kate.MessageThreadFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attached_video_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attached_video_owner_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1321
    .restart local v29    # "attachment":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v7, "video"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f070506

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1325
    .end local v28    # "attached_video_id":Ljava/lang/Long;
    .end local v29    # "attachment":Ljava/lang/String;
    .end local v30    # "attached_video_owner_id":Ljava/lang/Long;
    :cond_7
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_8

    .line 1326
    const-string v4, "video_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 1327
    .restart local v28    # "attached_video_id":Ljava/lang/Long;
    const-string v4, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1328
    .local v30, "attached_video_owner_id":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1329
    .restart local v29    # "attachment":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v7, "video"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f070506

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1333
    .end local v28    # "attached_video_id":Ljava/lang/Long;
    .end local v29    # "attachment":Ljava/lang/String;
    .end local v30    # "attached_video_owner_id":J
    :cond_8
    const/4 v4, 0x5

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_9

    .line 1334
    const-string v4, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 1335
    .local v13, "uri":Landroid/net/Uri;
    const-string v4, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1336
    .local v5, "name":Ljava/lang/String;
    const-string v4, "desc"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1338
    .local v6, "desc":Ljava/lang/String;
    new-instance v34, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1339
    .local v34, "callback":Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;
    move-object/from16 v0, v34

    iput-object v5, v0, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->name:Ljava/lang/String;

    .line 1340
    new-instance v4, Lcom/perm/kate/photoupload/VideoUploader;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v34

    invoke-direct {v4, v7, v13, v8, v0}, Lcom/perm/kate/photoupload/VideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V

    const/4 v7, 0x0

    const-string v8, "all"

    const-string v9, "all"

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/photoupload/VideoUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1341
    const v4, 0x7f0704f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 1343
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "desc":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v34    # "callback":Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;
    :cond_9
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v4

    if-eqz v4, :cond_a

    sget v4, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_a

    .line 1344
    const-string v4, "latitude"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1345
    .local v36, "latitude":Ljava/lang/String;
    const-string v4, "longitude"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1346
    .local v37, "longitude":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MessageThreadFragment;->updateLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    .end local v36    # "latitude":Ljava/lang/String;
    .end local v37    # "longitude":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x7

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_b

    .line 1349
    const-string v4, "uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    .line 1350
    .local v40, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v4, "resize_option"

    const/4 v7, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1351
    .local v10, "resize_option":I
    const-string v4, "rotate"

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 1352
    .local v38, "rotate":I
    const v4, 0x7f070378

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/MessageThreadFragment;->displayToast(I)V

    .line 1353
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_11

    .line 1354
    new-instance v7, Lcom/perm/kate/photoupload/MessageUploader;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/MessageThreadFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-direct/range {v7 .. v15}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v7}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    .line 1358
    .end local v10    # "resize_option":I
    .end local v38    # "rotate":I
    .end local v40    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_b
    :goto_2
    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_c

    .line 1359
    const-string v4, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1361
    .restart local v13    # "uri":Landroid/net/Uri;
    new-instance v11, Lcom/perm/kate/photoupload/MessageUploader;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/MessageThreadFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-wide/from16 v18, v0

    invoke-direct/range {v11 .. v19}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v11}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    .line 1363
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_c
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_d

    .line 1364
    const-string v4, "doc_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 1365
    .local v26, "attached_doc_id":Ljava/lang/Long;
    const-string v4, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 1366
    .local v27, "attached_doc_owner_id":Ljava/lang/Long;
    const-string v4, "Kate.MessageThreadFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attached_doc_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attached_doc_owner_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doc"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1368
    .restart local v29    # "attachment":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v7, "doc"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    .end local v26    # "attached_doc_id":Ljava/lang/Long;
    .end local v27    # "attached_doc_owner_id":Ljava/lang/Long;
    .end local v29    # "attachment":Ljava/lang/String;
    :cond_d
    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_e

    .line 1373
    const-string v4, "file"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1374
    .local v35, "filepath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1375
    .local v17, "file":Ljava/io/File;
    new-instance v15, Lcom/perm/kate/photoupload/DocUploader;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment;->voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    move-object/from16 v22, v0

    const-string v23, "audio_message"

    invoke-direct/range {v15 .. v23}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    .line 1377
    .end local v17    # "file":Ljava/io/File;
    .end local v35    # "filepath":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v4, v0, :cond_f

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_f

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/MessageThreadFragment;->showVideoUploadActivity(Landroid/net/Uri;)V

    .line 1380
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    .line 1381
    const/16 v4, 0x7d4

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_10

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/MessageThreadFragment;->setCutomBackground(Landroid/net/Uri;)V

    .line 1388
    :cond_10
    :goto_3
    return-void

    .line 1356
    .restart local v10    # "resize_option":I
    .restart local v38    # "rotate":I
    .restart local v40    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_11
    new-instance v4, Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v4, v0, v1, v10}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;I)V

    invoke-virtual {v4}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1384
    .end local v10    # "resize_option":I
    .end local v38    # "rotate":I
    .end local v40    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v39

    .line 1385
    .local v39, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1386
    invoke-static/range {v39 .. v39}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 425
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 426
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 427
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callbackLastActivity:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 428
    return-void
.end method

.method onBackspace()V
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 1433
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2162
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2163
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideStickerHints()V

    .line 2164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 389
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 391
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 394
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 395
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.chat_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 396
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.message_uid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 397
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    .line 398
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->initQueue()V

    .line 399
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    .line 400
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "unread_count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 402
    .local v0, "unread_count":I
    if-nez p1, :cond_2

    .line 403
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    .line 404
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshOnlineStatusInThread()V

    .line 408
    :cond_2
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 411
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/perm/kate/StickerHints;->initIfRequired(JLandroid/app/Activity;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 158
    const v4, 0x7f0300ab

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 160
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e00eb

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    .line 161
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    sget v4, Lcom/perm/kate/BaseActivity;->Theme:I

    const v7, 0x7f0a00cc

    if-ne v4, v7, :cond_0

    .line 163
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const v7, 0x7f0201e9

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->sendOnEnterEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 167
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 172
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/16 v7, 0x4001

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 174
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/perm/kate/MessageThreadFragment;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->closeUnreadEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    .line 177
    const v4, 0x7f0e0240

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    .line 178
    const v4, 0x7f0e0113

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    .line 179
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v4, "key_messages_in_bubbles_1"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    .line 181
    iget-boolean v4, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    if-eqz v4, :cond_2

    .line 182
    const v4, 0x7f0e0111

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->getBgByTheme()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 184
    const v4, 0x7f0e023f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    .line 185
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkChatBackground()V

    .line 187
    :cond_2
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    .line 189
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->isReverseOrder()Z

    move-result v4

    iput-boolean v4, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    .line 190
    iget-boolean v4, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 192
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 195
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 197
    const v4, 0x7f0e00ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    .line 198
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->newMessageClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v4, 0x7f0e00ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->addAttachmentClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v4, 0x7f0e0242

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    .line 201
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->voiceClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 203
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_4
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayDraft()V

    .line 208
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$1;

    invoke-direct {v5, p0}, Lcom/perm/kate/MessageThreadFragment$1;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 225
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/MessageThreadActivity;

    iget-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Lcom/perm/kate/MessageThreadActivity;->registerEditText(Landroid/widget/EditText;)V

    .line 226
    :cond_5
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->showMessages()V

    .line 227
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayLastSeen()V

    .line 229
    const v4, 0x7f0e0116

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$2;

    invoke-direct {v5, p0}, Lcom/perm/kate/MessageThreadFragment$2;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v4, 0x7f0e0117

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$3;

    invoke-direct {v5, p0}, Lcom/perm/kate/MessageThreadFragment$3;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v4, 0x7f0e0241

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    .line 247
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    sget-boolean v6, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    const v4, 0x7f0e00e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/MessageThreadFragment$4;

    invoke-direct {v5, p0}, Lcom/perm/kate/MessageThreadFragment$4;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadFragment;->setButtonsBg(Landroid/view/View;)V

    .line 258
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 260
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_8

    const v1, 0x7f02013c

    .line 261
    .local v1, "res":I
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "res":I
    :cond_6
    :goto_2
    return-object v3

    :cond_7
    move v4, v6

    .line 176
    goto/16 :goto_0

    .line 260
    .restart local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_8
    const v1, 0x7f02013d

    goto :goto_1

    .line 263
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 264
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 265
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    instance-of v4, v2, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_6

    .line 267
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 268
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1496
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->destroy()V

    .line 1498
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 1499
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    .line 1500
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1501
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    .line 1502
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    .line 1503
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    .line 1504
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    .line 1505
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 1507
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1509
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    .line 1510
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    .line 1511
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 1512
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    .line 1514
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 1515
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 844
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 904
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 846
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/perm/kate/MessageThreadFragment;->showNewMessagesAcivity(Z)V

    goto :goto_0

    .line 849
    :pswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->editChat()V

    goto :goto_0

    .line 852
    :pswitch_2
    new-instance v6, Lcom/perm/kate/MessageThreadFragment$12;

    invoke-direct {v6, p0}, Lcom/perm/kate/MessageThreadFragment$12;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 857
    .local v6, "callback":Lcom/perm/kate/MessagesFragment$DeleteCallback;
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-wide v8, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/MessagesFragment;->deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V

    goto :goto_0

    .line 860
    .end local v6    # "callback":Lcom/perm/kate/MessagesFragment$DeleteCallback;
    :pswitch_3
    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    .line 861
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 864
    :pswitch_4
    new-instance v12, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 865
    .local v12, "intent":Landroid/content/Intent;
    const-string v0, "chat_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v12, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 866
    const-string v0, "user_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v12, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v12}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 870
    .end local v12    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    .local v10, "i":Landroid/content/Intent;
    const-string v0, "chat_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 872
    const-string v0, "user_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v10, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 873
    invoke-virtual {p0, v10}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 876
    .end local v10    # "i":Landroid/content/Intent;
    :pswitch_6
    new-instance v11, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    .local v11, "i1":Landroid/content/Intent;
    const-string v0, "chat_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 878
    const-string v0, "user_id"

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 879
    const-string v0, "thread_start"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 880
    invoke-virtual {p0, v11}, Lcom/perm/kate/MessageThreadFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 883
    .end local v11    # "i1":Landroid/content/Intent;
    :pswitch_7
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->makeSceenshot()V

    goto/16 :goto_0

    .line 886
    :pswitch_8
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->leaveConversation()V

    goto/16 :goto_0

    .line 889
    :pswitch_9
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-eqz v0, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showBackgroundDialog()V

    goto/16 :goto_0

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showGallery()V

    goto/16 :goto_0

    .line 895
    :pswitch_a
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->searchByUser()V

    goto/16 :goto_0

    .line 898
    :pswitch_b
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->disableNotifications()V

    goto/16 :goto_0

    .line 901
    :pswitch_c
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showMessageDatePicker()V

    goto/16 :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0395
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1051
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onPause()V

    .line 1052
    sput-wide v0, Lcom/perm/kate/KApplication;->user_in_dialog:J

    .line 1053
    sput-wide v0, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    .line 1054
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    .line 1056
    :cond_0
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    .line 1567
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1088
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onResume()V

    .line 1089
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    sput-wide v0, Lcom/perm/kate/KApplication;->user_in_dialog:J

    .line 1090
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    sput-wide v0, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    .line 1092
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;)V

    .line 1093
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 1099
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->prepareHeader()V

    .line 1102
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 1103
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_messages"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1104
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.typing"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z

    .line 1107
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1114
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 1117
    :try_start_0
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z

    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1119
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1124
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveDraft()V
    .locals 8

    .prologue
    .line 1553
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, "text":Ljava/lang/String;
    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 1557
    .local v2, "uid":J
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1558
    invoke-static {v2, v3, v0}, Lcom/perm/utils/TempMessages;->put(JLjava/lang/String;)V

    .line 1562
    .end local v0    # "text":Ljava/lang/String;
    .end local v2    # "uid":J
    :cond_0
    :goto_1
    return-void

    .line 1556
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    goto :goto_0

    .line 1560
    .restart local v2    # "uid":J
    :cond_2
    invoke-static {v2, v3}, Lcom/perm/utils/TempMessages;->clear(J)V

    goto :goto_1
.end method

.method public sendSticker(Ljava/lang/Integer;)V
    .locals 11
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 1794
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    const-string v1, ""

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    iget-wide v9, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v7, v6

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 1795
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 1796
    return-void
.end method

.method setVoiceButtonVisibility()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2167
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2180
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2173
    const/4 v0, 0x1

    .line 2174
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2175
    const/4 v0, 0x0

    .line 2176
    :cond_2
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2177
    const/4 v0, 0x0

    .line 2178
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2179
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 2178
    goto :goto_1

    :cond_5
    move v2, v3

    .line 2179
    goto :goto_2
.end method

.method protected showMessages()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    .line 578
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 580
    .local v1, "me":Lcom/perm/kate/api/User;
    new-instance v5, Lcom/perm/kate/MessageAdapter;

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/BaseActivity;

    iget-wide v8, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-direct {v5, v6, v2, v1, v3}, Lcom/perm/kate/MessageAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V

    iput-object v5, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 581
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/MessageAdapter;->setSelectedMessages(Ljava/util/ArrayList;)V

    .line 582
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v1    # "me":Lcom/perm/kate/api/User;
    :goto_1
    return-void

    .line 580
    .restart local v1    # "me":Lcom/perm/kate/api/User;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 583
    .end local v1    # "me":Lcom/perm/kate/api/User;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 585
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public showMyStickersActivity()V
    .locals 3

    .prologue
    .line 2119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2121
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2122
    return-void
.end method
