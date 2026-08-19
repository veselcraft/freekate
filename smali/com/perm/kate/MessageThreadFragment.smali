.class public Lcom/perm/kate/MessageThreadFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MessageThreadFragment.java"


# static fields
.field static attachments:Ljava/util/ArrayList;

.field static attachments_objects:Ljava/util/ArrayList;

.field static forward_messages:Ljava/util/ArrayList;

.field static refresh_time:Ljava/util/HashMap;


# instance fields
.field private LAST_MENTION_PATTERN:Ljava/util/regex/Pattern;

.field account_id:J

.field private addAttachmentClick:Landroid/view/View$OnClickListener;

.field blind:Ljava/lang/Boolean;

.field private botButtonClickListener:Landroid/view/View$OnClickListener;

.field private final botButtonsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private botKeyboard:Lcom/perm/kate/api/BotKeyboard;

.field private botKeyboardButton:Landroid/widget/ImageView;

.field private botKeyboardButtonClick:Landroid/view/View$OnClickListener;

.field buttonCallback:Lcom/perm/kate/session/Callback;

.field callbackConversation:Lcom/perm/kate/session/Callback;

.field callbackLastActivity:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field callback_messages:Lcom/perm/kate/session/Callback;

.field private chat_id:J

.field editCallback:Lcom/perm/kate/session/Callback;

.field private et_new_message:Landroid/widget/EditText;

.field first_page_size:I

.field protected gifUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

.field group_id:J

.field handler:Landroid/os/Handler;

.field handler1:Landroid/os/Handler;

.field hideTypingRunnable:Ljava/lang/Runnable;

.field private image_background:Landroid/widget/ImageView;

.field inline_bot_buttons:Ljava/util/HashMap;

.field private instant_read:Z

.field private is_bot_keyboard_shown:Z

.field is_editting:Z

.field private last_activity:J

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_message_thread:Landroid/widget/ListView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProximity:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field members_downloaded:Z

.field mentionHintListener:Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;

.field private mentionHintsAdapter:Lcom/perm/kate/MentionsAdapter;

.field private mentionHintsView:Landroid/view/View;

.field private mentionHintsWindow:Landroid/widget/PopupWindow;

.field private mentionReplaceStr:Ljava/lang/String;

.field private message_uid:J

.field messages:Ljava/util/ArrayList;

.field messages_in_db:I

.field private newMessageClick:Landroid/view/View$OnClickListener;

.field new_voice:Z

.field private onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field onKeyListener:Landroid/view/View$OnKeyListener;

.field page_size:I

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field pinned_container:Landroid/view/View;

.field pinned_message_id:J

.field queue:Lcom/perm/kate/MessageSendQueue;

.field private read:Z

.field rec:Lcom/perm/kate/VoiceRecorder;

.field private receivers_registered:Z

.field reverse_sort_order:Z

.field rtt:Z

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field scroll_to_unread:Z

.field private selectedMessages:Ljava/util/ArrayList;

.field private selected_mode:Z

.field private selected_mode_for_delete:Z

.field private selected_mode_for_reply:Z

.field sendButton:Landroid/view/View;

.field sheduled:Z

.field public showBubbles:Z

.field speakerphone_disabled:Z

.field private state:I

.field stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

.field private stickerHintsView:Landroid/view/View;

.field private stickerHintsWindow:Landroid/widget/PopupWindow;

.field private thread_id:J

.field private thread_list_adapter:Lcom/perm/kate/MessageAdapter;

.field private tv_attachments_count:Landroid/widget/TextView;

.field private final typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private typingTextView:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field user:Lcom/perm/kate/api/User;

.field private users_chat_background:Z

.field private view_bot_buttons:Landroid/widget/LinearLayout;

.field voiceButton:Landroid/widget/ImageView;

.field private voiceClick:Landroid/view/View$OnClickListener;

.field protected voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

.field y:Landroid/hardware/SensorEventListener;


# direct methods
.method public static synthetic $r8$lambda$BeuwwUdRr2RRfJW_n7C6lIwToTU(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->lambda$showKeyboard$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ec7ynaPcN-_LF1kctflfAR4N98g(Lcom/perm/kate/MessageThreadFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->lambda$confirmUnpin$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6txddzx8-wJ2HkH7hH83BaNr9U(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/MessageThreadFragment;->lambda$confirmPin$0(Lcom/perm/kate/api/Message;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVTcZVfv_3AMUT_zEpQ4uIJC8J0(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/MessageThreadFragment;->lambda$editMessage$2(Lcom/perm/kate/api/Message;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yf3_OmsGpCJMitiGjhEs9pGUwHQ(Lcom/perm/kate/MessageThreadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->lambda$showRecordActivity$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ifmkM1-hxeMGjvUzHjLr0ygLQl0(Lcom/perm/kate/MessageThreadFragment;[FLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/MessageThreadFragment;->lambda$onOptionsItemSelected$3([FLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k7EaKhpVy92TuIbzv0snhjvGh1o(Lcom/perm/kate/MessageThreadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->lambda$showRecordActivity$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnJCclCZoxLw3coqZna3FEk8Lkk(Lcom/perm/kate/MessageThreadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->lambda$showRecordActivity$4(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    .line 2522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->refresh_time:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    const/16 v1, 0x1e

    .line 141
    iput v1, p0, Lcom/perm/kate/MessageThreadFragment;->page_size:I

    const/16 v1, 0x14

    .line 144
    iput v1, p0, Lcom/perm/kate/MessageThreadFragment;->first_page_size:I

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    .line 146
    new-instance v2, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v2}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 148
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    .line 149
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    .line 150
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    .line 151
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    .line 152
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    .line 153
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    .line 159
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_bot_keyboard_shown:Z

    const/4 v3, -0x1

    .line 167
    iput v3, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    .line 191
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isScrollToUnread()Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    .line 196
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->instant_read:Z

    .line 410
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->rtt:Z

    .line 411
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    .line 413
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->sheduled:Z

    const-string v3, "\\B(@\\w*)$"

    .line 438
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->LAST_MENTION_PATTERN:Ljava/util/regex/Pattern;

    .line 484
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->members_downloaded:Z

    .line 573
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$8;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$8;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintListener:Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;

    .line 671
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$9;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$9;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 813
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$11;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/perm/kate/MessageThreadFragment$11;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    .line 883
    iput v0, p0, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    .line 937
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    .line 940
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->inline_bot_buttons:Ljava/util/HashMap;

    .line 1025
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$13;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$13;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1339
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$18;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/perm/kate/MessageThreadFragment$18;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->editCallback:Lcom/perm/kate/session/Callback;

    .line 1555
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->speakerphone_disabled:Z

    .line 1753
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$27;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$27;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1775
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$28;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$28;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->newMessageClick:Landroid/view/View$OnClickListener;

    .line 1782
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$29;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$29;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->voiceClick:Landroid/view/View$OnClickListener;

    .line 1848
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$30;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$30;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1881
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$31;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$31;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->y:Landroid/hardware/SensorEventListener;

    .line 1913
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z

    .line 1941
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$32;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->addAttachmentClick:Landroid/view/View$OnClickListener;

    .line 1952
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$33;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1991
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$35;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/perm/kate/MessageThreadFragment$35;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 2030
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    .line 2033
    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->blind:Ljava/lang/Boolean;

    .line 2035
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$36;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$36;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2067
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$37;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$37;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 2077
    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->last_activity:J

    .line 2189
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$39;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$39;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    .line 2415
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$42;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$42;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    .line 2430
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$43;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$43;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 2524
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$45;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/perm/kate/MessageThreadFragment$45;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->callbackLastActivity:Lcom/perm/kate/session/Callback;

    .line 2547
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$46;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/perm/kate/MessageThreadFragment$46;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->buttonCallback:Lcom/perm/kate/session/Callback;

    .line 2579
    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    .line 2581
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$49;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageThreadFragment$49;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callbackConversation:Lcom/perm/kate/session/Callback;

    .line 2764
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$51;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$51;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 2789
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$52;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$52;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 3196
    iput-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->new_voice:Z

    .line 3298
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$60;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$60;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButtonClick:Landroid/view/View$OnClickListener;

    .line 3308
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$61;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$61;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botButtonsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3390
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$64;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$64;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botButtonClickListener:Landroid/view/View$OnClickListener;

    .line 3471
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$66;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$66;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->gifUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    return-void
.end method

.method private CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 17

    move-object/from16 v13, p0

    move/from16 v0, p8

    move-object/from16 v11, p9

    .line 1066
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    iget-boolean v1, v13, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    const/4 v2, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_1

    iget v1, v13, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    sub-int/2addr v1, v14

    if-le v0, v1, :cond_0

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v13, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    .line 1072
    iget-boolean v4, v13, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v4, :cond_2

    iget v4, v13, Lcom/perm/kate/MessageThreadFragment;->messages_in_db:I

    sub-int v4, v0, v4

    :goto_2
    move v6, v4

    goto :goto_3

    :cond_2
    iget-object v4, v13, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v4, v4, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v14

    sub-int/2addr v4, v0

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_3

    if-ltz v6, :cond_3

    .line 1074
    iget-object v4, v13, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v4, v4, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_3

    .line 1075
    iget-object v1, v13, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MessageSendQueue$MessageData;

    .line 1076
    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 1081
    :cond_3
    sget-object v4, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    if-eq v1, v4, :cond_4

    sget-object v7, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    if-ne v1, v7, :cond_5

    .line 1082
    :cond_4
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0f044a

    const/16 v9, 0x68

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_5
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1087
    iget-wide v9, v13, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v15, 0x0

    cmp-long v12, v9, v15

    if-nez v12, :cond_7

    if-nez v5, :cond_7

    .line 1089
    iget-object v9, v13, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1090
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f01c5

    const/16 v12, 0x67

    invoke-direct {v9, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1092
    :cond_6
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f0202

    const/16 v12, 0x65

    invoke-direct {v9, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_7
    :goto_4
    iget-wide v9, v13, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    cmp-long v12, v9, v15

    if-nez v12, :cond_8

    .line 1096
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f029e

    const/16 v12, 0x69

    invoke-direct {v9, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_8
    iget-wide v9, v13, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    cmp-long v12, v9, v15

    if-nez v12, :cond_9

    if-nez v5, :cond_9

    .line 1100
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f00ef

    invoke-virtual {v13, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x6d

    invoke-direct {v9, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_9
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1103
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1104
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f032e

    invoke-direct {v9, v10, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_a
    iget-wide v9, v13, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    cmp-long v12, v9, v15

    if-nez v12, :cond_c

    if-nez v5, :cond_c

    if-eqz v11, :cond_b

    .line 1109
    iget-object v9, v11, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1110
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f032b

    const/16 v12, 0x8

    invoke-direct {v9, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1112
    :cond_b
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v10, 0x7f0f032a

    const/4 v12, 0x7

    invoke-direct {v9, v10, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    move-object/from16 v10, p7

    .line 1114
    invoke-static {v10, v14}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 1115
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 1116
    new-instance v12, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0319

    const/4 v14, 0x5

    invoke-direct {v12, v2, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_d
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v12, 0x7f0f00b2

    const/4 v14, 0x6

    invoke-direct {v2, v12, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    invoke-static/range {p7 .. p7}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1120
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v12, 0x7f0f01da

    const/16 v14, 0x6e

    invoke-direct {v2, v12, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 p3, v9

    .line 1122
    iget-wide v9, v13, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    cmp-long v2, v9, v15

    if-lez v2, :cond_11

    .line 1123
    iget-wide v9, v11, Lcom/perm/kate/api/Message;->mid:J

    iget-wide v14, v13, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    cmp-long v2, v9, v14

    if-eqz v2, :cond_10

    .line 1124
    iget-object v2, v11, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_11

    .line 1125
    :cond_f
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v9, 0x7f0f03e5

    const/16 v10, 0x6b

    invoke-direct {v2, v9, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1128
    :cond_10
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v9, 0x7f0f0573

    const/16 v10, 0x6c

    invoke-direct {v2, v9, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_6
    if-eqz v5, :cond_12

    if-eqz v5, :cond_13

    if-eq v1, v4, :cond_12

    .line 1131
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    if-ne v1, v2, :cond_13

    .line 1132
    :cond_12
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00ba

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-wide/32 v1, 0x17340

    .line 1138
    iget-wide v9, v13, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v14, v11, Lcom/perm/kate/api/Message;->uid:J

    cmp-long v4, v9, v14

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    .line 1139
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v14, 0x3e8

    div-long/2addr v9, v14

    iget-wide v14, v11, Lcom/perm/kate/api/Message;->date:J

    sub-long/2addr v9, v14

    cmp-long v12, v9, v1

    if-gez v12, :cond_16

    iget-boolean v1, v11, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v1, :cond_15

    if-eqz v4, :cond_16

    .line 1140
    :cond_15
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01ec

    const/16 v4, 0x6a

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_16
    new-instance v14, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v14, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1144
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v15

    new-instance v12, Lcom/perm/kate/MessageThreadFragment$14;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    move-object v0, v12

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/perm/kate/MessageThreadFragment$14;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Ljava/lang/String;ZIJLjava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/Message;I)V

    invoke-virtual {v14, v15, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1210
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1211
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 1213
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1214
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1215
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :goto_8
    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 3

    .line 2893
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2894
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2895
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2896
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1, v2, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    .line 2898
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->setVoiceButtonVisibility()V

    .line 2899
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->setBotButtonsVisibility()V

    .line 2900
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    return-void
.end method

.method private UpdateAttachmentsCountOnUiThread()V
    .locals 2

    .line 2904
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2906
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$54;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$54;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->setMessageActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->checkStickerHints(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showConfirmDeleteMessagesDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->updateMessageText()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/MessageThreadFragment;)J
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getPeerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/MessageThreadFragment;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/ChatMember;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->insertMention(Lcom/perm/kate/api/ChatMember;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideMentionHints()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideStickerHints()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/EditText;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->checkMentionHints(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/MessageThreadFragment;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->refresh(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->storeInlineButtonsInMemory(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/MessageThreadFragment;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/MessageThreadFragment;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    return p0
.end method

.method static synthetic access$2302(Lcom/perm/kate/MessageThreadFragment;I)I
    .locals 0

    .line 121
    iput p1, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    return p1
.end method

.method static synthetic access$2400(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/MessageThreadFragment;)Lcom/perm/kate/MessageAdapter;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ListView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/perm/kate/MessageThreadFragment;->instant_read:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/MessageThreadFragment;J)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->selectMessage(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/MessageThreadFragment;J)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->selectMessageForDelete(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->setBotButtonsVisibility()V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 0

    .line 121
    invoke-direct/range {p0 .. p9}, Lcom/perm/kate/MessageThreadFragment;->CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->setAsRead(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/MessageThreadFragment;->markAsImportant(JLjava/lang/Boolean;I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/String;Lcom/perm/kate/api/Message;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/MessageThreadFragment;->editMessage(JLjava/lang/String;Lcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->confirmPin(Lcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->confirmUnpin()V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshConversation()V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/MessageThreadFragment;ZZ)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->deleteSelectedMessages(ZZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->sendClicked()V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showRecordActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MessageThreadFragment;Landroid/text/Editable;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->rtt(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$4000(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/perm/kate/MessageThreadFragment;->reportMessageAttachment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/perm/kate/MessageThreadFragment;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->setSpeakerphoneEnabled(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/TextView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->isVoiceAutoSend()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCountOnUiThread()V

    return-void
.end method

.method static synthetic access$4700(Lcom/perm/kate/MessageThreadFragment;Ljava/io/File;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->voiceUploadRetry(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->clearNewMessageEditText()V

    return-void
.end method

.method static synthetic access$4900(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayLastSeen()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    return p0
.end method

.method static synthetic access$5002(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotKeyboard;)Lcom/perm/kate/api/BotKeyboard;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    return-object p1
.end method

.method static synthetic access$502(Lcom/perm/kate/MessageThreadFragment;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showBotKeyboardInUiThread()V

    return-void
.end method

.method static synthetic access$5200(Lcom/perm/kate/MessageThreadFragment;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->showBotKeyboard(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/perm/kate/MessageThreadFragment;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_id:J

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hidePinned()V

    return-void
.end method

.method static synthetic access$5500(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$5600(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$5700(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->attachGeo()V

    return-void
.end method

.method static synthetic access$5800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showDocsActivity()V

    return-void
.end method

.method static synthetic access$5900(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showAttachments()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/MessageThreadFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showCreatePollActivity()V

    return-void
.end method

.method static synthetic access$6100(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->photoAttachmentsUploaded(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showAudioActivity()V

    return-void
.end method

.method static synthetic access$6500(Lcom/perm/kate/MessageThreadFragment;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$6600(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->attachVideo()V

    return-void
.end method

.method static synthetic access$6700(Lcom/perm/kate/MessageThreadFragment;Landroid/location/Location;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showGallery()V

    return-void
.end method

.method static synthetic access$6900(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->clearBackground()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$7000(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/perm/kate/MessageThreadFragment;->is_bot_keyboard_shown:Z

    return p0
.end method

.method static synthetic access$7100(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->resetBotKeyboardInUiThread()V

    return-void
.end method

.method static synthetic access$7200(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getBotButtons()V

    return-void
.end method

.method static synthetic access$7300(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->visibleBotKeyboard()V

    return-void
.end method

.method static synthetic access$7400(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/BotButton;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->actionBotButton(Lcom/perm/kate/api/BotButton;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/MessageThreadFragment;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    return p0
.end method

.method static synthetic access$900(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->forwardSelectedMessages()V

    return-void
.end method

.method private actionBotButton(Lcom/perm/kate/api/BotButton;)V
    .locals 2

    .line 3419
    iget-object v0, p1, Lcom/perm/kate/api/BotButton;->action_payload:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->checkPayload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3420
    iget-object v0, p1, Lcom/perm/kate/api/BotButton;->action_label:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/api/BotButton;->action_payload:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perm/kate/api/BotKeyboard;->author_id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/perm/kate/MessageThreadFragment;->sendBotCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3421
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/perm/kate/api/BotKeyboard;->one_time:Z

    if-eqz p1, :cond_2

    .line 3422
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->resetBotKeyboard()V

    :cond_2
    return-void
.end method

.method private attachGeo()V
    .locals 5

    .line 2756
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2757
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 2760
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getLocationWithCheck()V

    :goto_0
    const-string v0, "geo"

    .line 2761
    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->reportMessageAttachment(Ljava/lang/String;)V

    return-void
.end method

.method private attachVideo()V
    .locals 4

    .line 2997
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2998
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2999
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    .line 3000
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 3001
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private canDeleteForAll()Z
    .locals 11

    .line 1600
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1601
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1603
    :try_start_0
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/db/DataHelper;->fetchMessage(JJJ)Lcom/perm/kate/api/Message;

    move-result-object v4

    const-wide/32 v5, 0x17340

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    iget-wide v9, v4, Lcom/perm/kate/api/Message;->date:J

    sub-long/2addr v7, v9

    cmp-long v9, v7, v5

    if-gtz v9, :cond_3

    iget-boolean v4, v4, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v4, :cond_1

    iget-wide v3, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1611
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    return v1
.end method

.method private canReportSpam()Z
    .locals 11

    .line 1620
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1621
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1623
    :try_start_0
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/db/DataHelper;->fetchMessage(JJJ)Lcom/perm/kate/api/Message;

    move-result-object v4

    .line 1624
    iget-boolean v3, v4, Lcom/perm/kate/api/Message;->is_out:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    return v1

    :catchall_0
    move-exception v0

    .line 1627
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method

.method private cancelVoice()V
    .locals 2

    .line 3235
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    if-eqz v0, :cond_1

    .line 3236
    iget-boolean v1, v0, Lcom/perm/kate/VoiceRecorder;->isRecord:Z

    if-eqz v1, :cond_0

    .line 3237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/VoiceRecorder;->stop(Landroid/app/Activity;)Z

    .line 3238
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {v0}, Lcom/perm/kate/VoiceRecorder;->releasePlayer()V

    :cond_1
    const/4 v0, 0x0

    .line 3240
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->showVoiceRecorder(Z)V

    const/4 v0, 0x0

    .line 3241
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    return-void
.end method

.method private checkChatBackground()V
    .locals 7

    .line 692
    :try_start_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 693
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/MessageThreadBgHelper;->take(J)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "key_use_chat_background"

    .line 696
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 697
    iget-boolean v5, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-eqz v5, :cond_5

    .line 698
    :cond_2
    iget-boolean v5, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    const/4 v6, 0x0

    if-nez v5, :cond_3

    const-string v2, "key_chat_background"

    .line 699
    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 700
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 701
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 702
    iget-boolean v3, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-static {v2, v6}, Lcom/perm/kate/MessageThreadBackground;->get(Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 703
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 704
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 705
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private checkDeleteMessages()V
    .locals 3

    .line 2290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    .line 2293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_delete:Z

    const v2, 0x7f0f00ba

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkForwardMessages()V
    .locals 4

    .line 2327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2329
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    if-nez v0, :cond_2

    .line 2331
    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode_for_reply:Z

    .line 2332
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    if-eqz v2, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->selected_mode:Z

    const v2, 0x7f0f0202

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkMentionHints(Ljava/lang/String;)V
    .locals 5

    .line 417
    :try_start_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 424
    :cond_1
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 426
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->getChatMentionHints(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 427
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->showMentionHints(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideMentionHints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 434
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private checkPayload(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3400
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3401
    invoke-static {p1}, Lcom/perm/kate/api/BotButton;->parseButtonTypeFromPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "location"

    .line 3402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3403
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->attachGeo()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkStickerHints(Ljava/lang/String;)V
    .locals 2

    .line 611
    :try_start_0
    invoke-static {}, Lcom/perm/kate/StickerHints;->getShowStickerHints()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 618
    :cond_1
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 621
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/StickerHints;->get(Ljava/lang/String;J)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 622
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 623
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->showStickerHints([I)V

    goto :goto_0

    .line 625
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideStickerHints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 627
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 628
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private clearBackground()V
    .locals 5

    .line 3129
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 3130
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/MessageThreadBgHelper;->clear(J)V

    .line 3131
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3132
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3133
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3135
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkChatBackground()V

    return-void
.end method

.method private clearNewMessageEditText()V
    .locals 5

    .line 1763
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 1766
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1767
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 1768
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/TempMessages;->clear(J)V

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    .line 1770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    .line 1771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    .line 1772
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    return-void
.end method

.method private closeUnreadEnabled()Z
    .locals 3

    .line 3107
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_close_unread"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private confirmPin(Lcom/perm/kate/api/Message;)V
    .locals 2

    .line 1231
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03ef

    .line 1232
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f03e5

    .line 1233
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1234
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;)V

    const p1, 0x7f0f05a7

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f0f037a

    const/4 v1, 0x0

    .line 1235
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1236
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 1237
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1238
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private confirmUnpin()V
    .locals 3

    .line 1242
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03ef

    .line 1243
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f0573

    .line 1244
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1245
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    const v2, 0x7f0f05a7

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1247
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1248
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1249
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAddAttachmentDialog()V
    .locals 7

    .line 2666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2668
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2669
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0052

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03cc

    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->internalGalleryEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03cb

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03cd

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03c5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2678
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0421

    const/16 v4, 0x6b

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    :cond_2
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04ea

    const/16 v4, 0x65

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f051d

    const/16 v4, 0x66

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01a4

    const/16 v4, 0x67

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01a3

    const/16 v4, 0x68

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_3

    .line 2684
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0185

    const/16 v4, 0x6c

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    :cond_3
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04a0

    const/16 v4, 0x69

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2687
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/MessageThreadFragment$50;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/MessageThreadFragment$50;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2750
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 2751
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2752
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 4

    .line 2919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2920
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045d

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2922
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2923
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2924
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/MessageThreadFragment$55;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/MessageThreadFragment$55;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2940
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 2941
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2942
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 5

    .line 2970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2971
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0460

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2972
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2973
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00f7

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2974
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2975
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/MessageThreadFragment$56;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/MessageThreadFragment$56;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2991
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 2992
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2993
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createMentionHintsPopup()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 600
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsView:Landroid/view/View;

    const v1, 0x7f090214

    .line 601
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 603
    new-instance v2, Lcom/perm/kate/MentionsAdapter;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintListener:Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/perm/kate/MentionsAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsAdapter:Lcom/perm/kate/MentionsAdapter;

    .line 604
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 606
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private createStickerHintsPopup()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c011e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    const v1, 0x7f090114

    .line 683
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 684
    new-instance v1, Lcom/perm/kate/smile/StickerAdapter;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v5, v4, [I

    invoke-direct {v1, v2, v3, v5}, Lcom/perm/kate/smile/StickerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V

    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    .line 685
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 687
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    const-wide v2, 0x4052c00000000000L    # 75.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private deleteSelectedMessages(ZZ)V
    .locals 9

    .line 1681
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1682
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v7, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->deleteMessage(JJJ)Z

    goto :goto_0

    .line 1683
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 1684
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1685
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$25;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/perm/kate/MessageThreadFragment$25;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;ZZ)V

    .line 1698
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1699
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    return-void
.end method

.method private disableNotifications()V
    .locals 7

    .line 3185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/perm/utils/ChatNotificationsHelper;->setDisabledChat(Landroid/content/Context;JJZ)V

    if-eqz v0, :cond_0

    const v0, 0x7f0f0532

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0538

    .line 3188
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private displayAsRead(Ljava/util/ArrayList;)V
    .locals 4

    .line 1735
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 1737
    iget-boolean v2, v1, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v2, :cond_0

    iget-wide v2, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1738
    iput-boolean v2, v1, Lcom/perm/kate/api/Message;->read_state:Z

    goto :goto_0

    .line 1739
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private displayDraft()V
    .locals 5

    .line 716
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 717
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/TempMessages;->take(J)Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 721
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    goto :goto_1

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :goto_1
    return-void
.end method

.method private displayLastSeen()V
    .locals 7

    .line 2486
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2488
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 2489
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 2492
    :cond_1
    iget-object v0, v1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-wide v3, v0, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 2493
    iget-object v0, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2494
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    iget-wide v5, v4, Lcom/perm/kate/api/User;->last_seen:J

    iget-object v4, v4, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v5, v6, v0, v4}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2495
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 2497
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private downloadChatMembers()V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->members_downloaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->members_downloaded:Z

    .line 489
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$7;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editMessage(JLjava/lang/String;Lcom/perm/kate/api/Message;)V
    .locals 9

    .line 1289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    .line 1290
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011d

    .line 1291
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1293
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v1, v2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 1295
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1296
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1297
    invoke-virtual {p3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v8, Lcom/perm/kate/MessageThreadFragment$17;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    move-wide v5, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/perm/kate/MessageThreadFragment$17;-><init>(Lcom/perm/kate/MessageThreadFragment;Landroid/widget/EditText;JLcom/perm/kate/api/Message;)V

    const p1, 0x7f0f02a6

    .line 1299
    invoke-virtual {v0, p1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1324
    iget-wide p1, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const p1, 0x7f0f0187

    .line 1326
    new-instance p2, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p4, v1}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;Landroid/widget/EditText;)V

    invoke-virtual {p3, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1333
    :cond_0
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 1334
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1335
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1336
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 3

    .line 2783
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 2785
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2786
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x7

    invoke-static {p1, p0, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method private forwardSelectedMessages()V
    .locals 5

    .line 2314
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2315
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2316
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2317
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "com.perm.kate.only_members"

    .line 2319
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.new_message"

    const/4 v3, 0x1

    .line 2320
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.forward_messages"

    .line 2321
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 2322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2323
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    return-void
.end method

.method public static getBgByTheme()I
    .locals 2

    .line 2641
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f080138

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f0800df

    return v0

    :sswitch_0
    const v0, 0x7f080139

    return v0

    :sswitch_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000cd -> :sswitch_1
        0x7f1000cf -> :sswitch_1
        0x7f1000d7 -> :sswitch_1
        0x7f1000db -> :sswitch_0
    .end sparse-switch
.end method

.method private getBotButtons()V
    .locals 1

    .line 2560
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$47;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$47;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2566
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getChatMentionHints(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->LAST_MENTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 442
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->mentionReplaceStr:Ljava/lang/String;

    const-string v0, "MENTION"

    .line 443
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 445
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {p1, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchChatFullMembers(J)Ljava/util/ArrayList;

    move-result-object p1

    const-string v4, "mtf_fetchChatFullMembers"

    .line 446
    invoke-static {v2, v3, v4, v1}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mentionReplaceStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 449
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mentionReplaceStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/ChatMember;

    .line 451
    iget-object v4, v3, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    if-eqz v4, :cond_2

    .line 452
    iget-object v4, v4, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v4, v4, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 453
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v4, v4, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 454
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v5, v5, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_2
    iget-object v4, v3, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    if-eqz v4, :cond_0

    .line 459
    iget-object v4, v4, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v3, v3, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-object v1

    .line 469
    :cond_4
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->downloadChatMembers()V

    .line 472
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    const v1, 0x7f0f0044

    .line 473
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v1, ""

    .line 474
    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v1, "all"

    .line 475
    iput-object v1, v0, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 476
    new-instance v1, Lcom/perm/kate/api/ChatMember;

    invoke-direct {v1, v0}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/User;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_5
    return-object v1
.end method

.method private getEditedMessageId()J
    .locals 3

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v1, :cond_0

    .line 403
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 404
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 405
    iget-boolean v2, v1, Lcom/perm/kate/api/Message;->is_out:Z

    if-eqz v2, :cond_1

    .line 406
    iget-wide v0, v1, Lcom/perm/kate/api/Message;->mid:J

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getExtFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 3504
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 3505
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 3507
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_0

    .line 3508
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "gif"

    return-object p1
.end method

.method private getLocation()V
    .locals 2

    .line 3013
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 3014
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$57;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$57;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 3023
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    return-void
.end method

.method private getLocationWithCheck()V
    .locals 1

    .line 3006
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3007
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showGoogleMapsActivity()V

    goto :goto_0

    .line 3009
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getLocation()V

    :goto_0
    return-void
.end method

.method public static getMessagesFromDb(JJJZJ)Ljava/util/ArrayList;
    .locals 29

    .line 959
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 960
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 963
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 964
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move/from16 v14, p6

    move-wide/from16 v15, p7

    invoke-virtual/range {v7 .. v16}, Lcom/perm/kate/db/DataHelper;->fetchMessagesThread(JJJZJ)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v0, "have_attachments"

    .line 965
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v8, "is_out"

    .line 966
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "read_state"

    .line 967
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "date"

    .line 968
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "body"

    .line 969
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "message_id"

    .line 971
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "uid"

    .line 972
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "important"

    .line 973
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "action"

    .line 974
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v4, "action_mid"

    .line 975
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-wide/from16 v17, v1

    :try_start_2
    const-string v1, "action_text"

    .line 976
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "update_time"

    .line 977
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-wide/from16 v19, v5

    const-string v5, "attachments"

    .line 978
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 980
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 981
    new-instance v6, Lcom/perm/kate/api/Message;

    invoke-direct {v6}, Lcom/perm/kate/api/Message;-><init>()V

    .line 985
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-wide/16 v25, 0x1

    cmp-long v27, v21, v25

    if-nez v27, :cond_0

    const/16 v21, 0x1

    goto :goto_1

    :cond_0
    const/16 v21, 0x0

    :goto_1
    if-eqz v21, :cond_1

    move/from16 p0, v0

    .line 987
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 p1, v2

    move-object/from16 v21, v3

    move-wide/from16 v2, p4

    :try_start_3
    invoke-static {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v7

    move-object/from16 v2, v21

    goto/16 :goto_9

    :cond_1
    move/from16 p0, v0

    move/from16 p1, v2

    move-object/from16 v21, v3

    move-wide/from16 v2, p4

    .line 989
    :goto_2
    :try_start_4
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    cmp-long v0, v27, v25

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v6, Lcom/perm/kate/api/Message;->is_out:Z

    .line 990
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    cmp-long v0, v27, v25

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v6, Lcom/perm/kate/api/Message;->read_state:Z

    .line 991
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/perm/kate/api/Message;->date:J

    .line 992
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 996
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/perm/kate/api/Message;->mid:J

    .line 997
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/perm/kate/api/Message;->uid:J

    .line 998
    invoke-interface {v7, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_5

    .line 999
    :try_start_5
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v2, v25

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    const/16 v23, 0x0

    :goto_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 1001
    :cond_5
    :try_start_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v6, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 1002
    :goto_6
    invoke-interface {v7, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_6

    .line 1003
    :try_start_7
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1004
    :cond_6
    :try_start_8
    invoke-interface {v7, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v0, :cond_7

    .line 1005
    :try_start_9
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1006
    :cond_7
    :try_start_a
    invoke-interface {v7, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v0, :cond_8

    .line 1007
    :try_start_b
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    move/from16 v0, p1

    .line 1008
    :try_start_c
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v2, :cond_9

    .line 1009
    :try_start_d
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/perm/kate/api/Message;->update_time:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_9
    move-object/from16 v2, v21

    .line 1010
    :try_start_e
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    move v2, v0

    move/from16 v0, p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_8

    :cond_a
    move-object v2, v3

    const-string v0, "mtf_getMessagesFromDb"

    move-wide/from16 v3, v19

    const/4 v1, 0x0

    .line 1012
    invoke-static {v3, v4, v0, v1}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1018
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-wide/from16 v17, v1

    :goto_7
    move-object v2, v3

    :goto_8
    move-object v4, v7

    goto :goto_9

    :catchall_5
    move-exception v0

    move-wide/from16 v17, v1

    move-object v2, v3

    const/4 v1, 0x0

    move-object v4, v1

    .line 1014
    :goto_9
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1015
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v4, :cond_b

    .line 1018
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_b
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessagesFromDb took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v0, v17

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.MessageThreadFragm"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_6
    move-exception v0

    if-eqz v4, :cond_c

    .line 1018
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1019
    :cond_c
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)V
    .locals 7

    .line 856
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 858
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 859
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 860
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 861
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    :cond_1
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 865
    :goto_1
    iget-object v3, v2, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Attachment;

    .line 866
    iget-object v5, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 867
    iget-object v5, v4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v5, v5, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v5, v6}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v5

    if-nez v5, :cond_3

    .line 868
    iget-object v4, v4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v4, v4, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 870
    :cond_3
    iget-object v4, v4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v4, v4, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 872
    :cond_4
    iget-object v2, v2, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 875
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 876
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private getPeerId()J
    .locals 5

    .line 3178
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x77359400

    .line 3181
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method static getTextToCopy(Ljava/lang/String;Lcom/perm/kate/api/Message;)Ljava/lang/String;
    .locals 2

    .line 1221
    iget-object p1, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 1222
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1225
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object p0, p0, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private getUnreadIncomingMessages()Ljava/util/ArrayList;
    .locals 4

    .line 1831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1834
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1835
    :goto_0
    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v2, :cond_1

    if-ltz v1, :cond_4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1836
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 1837
    iget-boolean v3, v2, Lcom/perm/kate/api/Message;->is_out:Z

    if-nez v3, :cond_2

    .line 1838
    iget-boolean v3, v2, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v3, :cond_4

    .line 1839
    iget-wide v2, v2, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_2
    iget-boolean v2, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private hideMentionHints()V
    .locals 1

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionReplaceStr:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private hidePinned()V
    .locals 3

    .line 1523
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    invoke-static {v0, v1, v2}, Lcom/perm/utils/HiddenPinnedMessages;->hide(Ljava/lang/Long;J)V

    .line 1524
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideStickerHints()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private initQueue()V
    .locals 5

    .line 770
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    neg-long v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 771
    :goto_0
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    .line 772
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    .line 774
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v1, v2}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/MessageSendQueue;->session:Lcom/perm/kate/session/Session;

    return-void
.end method

.method private insertMention(Lcom/perm/kate/api/ChatMember;)V
    .locals 8

    .line 583
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    const-string v1, ") "

    const-string v2, " ("

    if-eqz v0, :cond_1

    .line 584
    iget-wide v3, v0, Lcom/perm/kate/api/User;->uid:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 585
    iget-object p1, v0, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    goto :goto_0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-wide v3, v3, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    iget-object p1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 589
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "club"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    iget-wide v3, v3, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    iget-object p1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionReplaceStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 592
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 593
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    invoke-interface {v3, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public static isBrokenSamsungDevice()Z
    .locals 2

    .line 1587
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScrollToUnread()Z
    .locals 3

    .line 3192
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_messages_scroll_to_unread"

    const/4 v2, 0x1

    .line 3193
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVoiceAutoSend()Z
    .locals 3

    .line 3295
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voice_auto_send"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static isVoiceButtonEnabled()Z
    .locals 3

    .line 3291
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voice_button"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$confirmPin$0(Lcom/perm/kate/api/Message;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1234
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->pinMessage(Lcom/perm/kate/api/Message;)V

    return-void
.end method

.method private synthetic lambda$confirmUnpin$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1245
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->unpinMessage()V

    return-void
.end method

.method private synthetic lambda$editMessage$2(Lcom/perm/kate/api/Message;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1327
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    const-class v0, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p3, p4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1328
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    const-string p2, "message"

    .line 1329
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1330
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getPeerId()J

    move-result-wide p1

    const-string p4, "peer_id"

    invoke-virtual {p3, p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0xd

    .line 1331
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$3([FLandroid/content/DialogInterface;I)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    iget-object v0, v0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-object v0, v0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    aget p1, p1, p3

    invoke-virtual {v0, p1}, Lcom/perm/kate/AttachmentsHelper;->setVoiceSpeed(F)V

    .line 1506
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showKeyboard$7()V
    .locals 3

    .line 3518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3520
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3521
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$showRecordActivity$4(Landroid/view/View;)V
    .locals 0

    .line 3217
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->sendVoice()V

    return-void
.end method

.method private synthetic lambda$showRecordActivity$5(Landroid/view/View;)V
    .locals 0

    .line 3218
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->cancelVoice()V

    return-void
.end method

.method private synthetic lambda$showRecordActivity$6(Landroid/view/View;)V
    .locals 1

    .line 3219
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/VoiceRecorder;->play(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private leaveConversation()V
    .locals 3

    .line 3071
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$58;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$58;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 3090
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00ad

    .line 3091
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0220

    .line 3092
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 3093
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 3094
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 3095
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 1982
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$34;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1988
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeSceenshot()V
    .locals 1

    .line 3067
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/ScreenshotHelper;->makeScreenshot(Landroid/app/Activity;)V

    return-void
.end method

.method private markAsImportant(JLjava/lang/Boolean;I)V
    .locals 7

    .line 1354
    new-instance v6, Lcom/perm/kate/MessageThreadFragment$19;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/MessageThreadFragment$19;-><init>(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V

    .line 1380
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static onlineWarning(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private photoAttachmentsUploaded(Ljava/util/ArrayList;Z)V
    .locals 4

    .line 2797
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2799
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 2800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2801
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 2803
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/MessageThreadFragment$53;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/perm/kate/MessageThreadFragment$53;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pinMessage(Lcom/perm/kate/api/Message;)V
    .locals 1

    .line 1253
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageThreadFragment$15;-><init>(Lcom/perm/kate/MessageThreadFragment;Lcom/perm/kate/api/Message;)V

    .line 1267
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private prepareHeader()V
    .locals 2

    .line 787
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageThreadActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageThreadActivity;->prepareHeader(Lcom/perm/kate/api/User;)V

    return-void
.end method

.method private refresh(I)V
    .locals 14

    const/4 v0, 0x1

    .line 801
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 802
    iget v0, p0, Lcom/perm/kate/MessageThreadFragment;->first_page_size:I

    .line 803
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->scroll_to_unread:Z

    const/16 v2, 0xc8

    if-eqz v1, :cond_1

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, 0xa

    :cond_0
    if-le v0, v2, :cond_1

    const/16 v9, 0xc8

    goto :goto_0

    :cond_1
    move v9, v0

    .line 809
    :goto_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v3

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/perm/kate/MessageThreadFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual/range {v3 .. v13}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 810
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method private refreshConversation()V
    .locals 1

    .line 2570
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$48;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$48;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2576
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshInThread(I)V
    .locals 1

    const/4 v0, 0x1

    .line 791
    iput v0, p0, Lcom/perm/kate/MessageThreadFragment;->state:I

    .line 792
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageThreadFragment$10;-><init>(Lcom/perm/kate/MessageThreadFragment;I)V

    .line 797
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshOnlineStatusInThread()V
    .locals 6

    .line 2503
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v0, v1}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2507
    :cond_0
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->refresh_time:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2508
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-void

    .line 2511
    :cond_1
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$44;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$44;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2518
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static reportMessageAttachment(Ljava/lang/String;)V
    .locals 5

    .line 3251
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    .line 3252
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x9

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 3254
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "type"

    .line 3255
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    const-string v1, "MESSAGE_ATTACHMENT"

    .line 3256
    invoke-static {v1, v0, p0}, Lcom/perm/kate/Helper;->reportEvent(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 880
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;Z)V

    return-void
.end method

.method private requeryOnUiThread(Ljava/lang/Integer;Z)V
    .locals 2

    .line 885
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 887
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment$12;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetBotKeyboard()V
    .locals 2

    .line 3434
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    const/4 v0, 0x0

    .line 3435
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    .line 3436
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private resetBotKeyboardInUiThread()V
    .locals 2

    .line 3440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3442
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$65;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$65;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rtt(Landroid/text/Editable;)V
    .locals 17

    move-object/from16 v0, p0

    .line 339
    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->rtt:Z

    if-nez v1, :cond_0

    return-void

    .line 341
    :cond_0
    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 342
    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->sheduled:Z

    if-nez v1, :cond_2

    .line 343
    iput-boolean v2, v0, Lcom/perm/kate/MessageThreadFragment;->sheduled:Z

    .line 344
    iget-object v1, v0, Lcom/perm/kate/MessageThreadFragment;->handler1:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 345
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/MessageThreadFragment;->handler1:Landroid/os/Handler;

    .line 346
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/MessageThreadFragment;->handler1:Landroid/os/Handler;

    new-instance v3, Lcom/perm/kate/MessageThreadFragment$5;

    invoke-direct {v3, v0}, Lcom/perm/kate/MessageThreadFragment$5;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    :cond_2
    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    if-nez v1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_3

    .line 357
    iget-object v4, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v8, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    sget-object v10, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    sget-object v11, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const/4 v12, 0x0

    iget-wide v13, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    sget-object v15, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v4 .. v16}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 361
    iput-boolean v2, v0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    :cond_3
    return-void
.end method

.method private searchByUser()V
    .locals 4

    .line 3171
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_messages"

    const/4 v2, 0x1

    .line 3172
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3173
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getPeerId()J

    move-result-wide v1

    const-string v3, "com.perm.kate.peer_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3174
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private selectMessage(J)V
    .locals 2

    .line 2298
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2301
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2303
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2304
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkForwardMessages()V

    return-void
.end method

.method private selectMessageForDelete(J)V
    .locals 2

    .line 2281
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2284
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2287
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkDeleteMessages()V

    return-void
.end method

.method private sendClicked()V
    .locals 14

    .line 2378
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->rtt:Z

    if-nez v0, :cond_1

    .line 2379
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    sget-object v7, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    sget-object v8, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    sget-object v12, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V

    .line 2380
    :cond_1
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    if-eqz v0, :cond_2

    .line 2382
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->updateMessageText()V

    const/4 v0, 0x0

    .line 2383
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    .line 2385
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->clearNewMessageEditText()V

    .line 2386
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    .line 2387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->onlineWarning(Landroid/app/Activity;)V

    return-void
.end method

.method private sendOnEnterEnabled()Z
    .locals 3

    .line 2441
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_send_on_enter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private sendVoice()V
    .locals 11

    .line 3223
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    if-nez v0, :cond_0

    return-void

    .line 3224
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/VoiceRecorder;->stop(Landroid/app/Activity;)Z

    move-result v0

    .line 3225
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {v1}, Lcom/perm/kate/VoiceRecorder;->releasePlayer()V

    if-eqz v0, :cond_1

    .line 3227
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    iget-object v0, v0, Lcom/perm/kate/VoiceRecorder;->filepath:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3228
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lcom/perm/kate/MessageThreadFragment;->voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const-string v10, "audio_message"

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    :cond_1
    const/4 v0, 0x0

    .line 3230
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->showVoiceRecorder(Z)V

    const/4 v0, 0x0

    .line 3231
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    return-void
.end method

.method private setAsRead(Ljava/lang/String;)V
    .locals 3

    .line 1703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->setAsRead(Ljava/util/ArrayList;)V

    return-void
.end method

.method private setAsRead(Ljava/util/ArrayList;)V
    .locals 9

    .line 1710
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const/4 v2, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->setMessageReadState(Ljava/util/ArrayList;ZJJ)J

    .line 1712
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->displayAsRead(Ljava/util/ArrayList;)V

    .line 1714
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$26;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageThreadFragment$26;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;)V

    .line 1721
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1725
    sget-object p1, Lcom/perm/kate/KApplication;->newMessageCounter:Lcom/perm/kate/Counter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/perm/kate/Counter;->decrease(I)V

    .line 1730
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v7, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->setUnreadCountInChat(JJIJ)V

    return-void
.end method

.method private setBotButtonsVisibility()V
    .locals 3

    .line 3333
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3335
    :goto_0
    sget-object v2, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    .line 3337
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 3339
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 3340
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private setCutomBackground(Landroid/net/Uri;)V
    .locals 5

    .line 3157
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 3158
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/perm/kate/MessageThreadBackground;->makeLocalCopy(Landroid/net/Uri;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object p1

    .line 3159
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/perm/utils/MessageThreadBgHelper;->put(JLjava/lang/String;)V

    .line 3160
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[message_thread_background]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/utils/MemoryCache;->remove(Ljava/lang/String;)V

    .line 3161
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkChatBackground()V

    return-void
.end method

.method private setMessageActivity()V
    .locals 7

    .line 2079
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 2081
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2082
    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->last_activity:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 2083
    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->last_activity:J

    .line 2084
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$38;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$38;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2092
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method static setOffline()V
    .locals 2

    .line 2408
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2410
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2412
    invoke-virtual {v0, v1, v1}, Lcom/perm/kate/session/Session;->setOffline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private setSpeakerphoneEnabled(Z)V
    .locals 2

    .line 1529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1539
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->speakerphone_disabled:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 1541
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 1542
    iput-boolean p1, p0, Lcom/perm/kate/MessageThreadFragment;->speakerphone_disabled:Z

    return-void
.end method

.method private showAttachments()V
    .locals 3

    .line 3060
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3061
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AttachmentsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.is_thread_attachments"

    const/4 v2, 0x1

    .line 3062
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3063
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAudioActivity()V
    .locals 4

    .line 2946
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2947
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2948
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    .line 2949
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 2950
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showBackgroundDialog()V
    .locals 4

    .line 3111
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0f02af

    .line 3113
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f00ba

    .line 3114
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0f04ee

    .line 3115
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/MessageThreadFragment$59;

    invoke-direct {v3, p0}, Lcom/perm/kate/MessageThreadFragment$59;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 3116
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3125
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showBotKeyboard(Z)V
    .locals 3

    .line 3356
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 3360
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    iget-boolean v0, v0, Lcom/perm/kate/api/BotKeyboard;->inline:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3363
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/Helper;->hideKeyboard(Landroid/app/Activity;)V

    .line 3364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageThreadActivity;

    iget-object v0, v0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->onKeyDown()Z

    if-eqz p1, :cond_2

    .line 3367
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3368
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->botButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/BotKeyboardHelper;->fillKeyboard(Lcom/perm/kate/api/BotKeyboard;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 3369
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 3370
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->visibleBotKeyboard()V

    goto :goto_0

    .line 3373
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/perm/kate/MessageThreadFragment$63;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$63;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private showBotKeyboardInUiThread()V
    .locals 2

    .line 3344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3346
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$62;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$62;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showConfirmDeleteMessagesDialog()V
    .locals 12

    .line 1636
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->canDeleteForAll()Z

    move-result v6

    .line 1637
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->canReportSpam()Z

    move-result v7

    .line 1638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f0900aa

    .line 1639
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/CheckBox;

    const v0, 0x7f09029d

    .line 1640
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/CheckBox;

    .line 1641
    new-instance v11, Lcom/perm/kate/MessageThreadFragment$22;

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move-object v3, v9

    move v4, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/MessageThreadFragment$22;-><init>(Lcom/perm/kate/MessageThreadFragment;ZLandroid/widget/CheckBox;ZLandroid/widget/CheckBox;)V

    .line 1653
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$23;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1659
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$24;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$24;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1665
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f01d8

    .line 1666
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    if-nez v6, :cond_0

    if-eqz v7, :cond_2

    .line 1668
    :cond_0
    invoke-virtual {v2, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/16 v3, 0x8

    if-nez v6, :cond_1

    .line 1670
    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    if-nez v7, :cond_2

    .line 1672
    invoke-virtual {v10, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_2
    const v3, 0x7f0f05a7

    .line 1674
    invoke-virtual {v2, v3, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x7f0f037a

    .line 1675
    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1676
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1677
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCreatePollActivity()V
    .locals 3

    .line 3464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3465
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "save"

    const/4 v2, 0x1

    .line 3467
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 3468
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showDocsActivity()V
    .locals 4

    .line 3053
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3054
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "select"

    const/4 v2, 0x1

    .line 3055
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 3056
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showGallery()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "IntentReset"
        }
    .end annotation

    .line 3147
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 3148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x7d4

    .line 3149
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3152
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showGoogleMapsActivity()V
    .locals 3

    .line 3046
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3047
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3048
    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showHiddenPinned()V
    .locals 2

    .line 1518
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/HiddenPinnedMessages;->show(Ljava/lang/Long;)V

    .line 1519
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showMentionHints(Ljava/util/ArrayList;)V
    .locals 8

    .line 543
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createMentionHintsPopup()V

    .line 549
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    const/16 v0, 0xa8

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2a

    .line 554
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    int-to-double v2, v0

    .line 556
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v5, v1, -0x1

    .line 557
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 559
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_1

    .line 564
    :cond_4
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_5

    .line 565
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/widget/EditText;->getWidth()I

    move-result v6

    const/4 v7, -0x2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_1

    .line 567
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 569
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsAdapter:Lcom/perm/kate/MentionsAdapter;

    iput-object p1, v0, Lcom/perm/kate/MentionsAdapter;->members:Ljava/util/ArrayList;

    .line 570
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showMessageDatePicker()V
    .locals 8

    .line 1559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 1560
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x2

    .line 1561
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x5

    .line 1562
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1565
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1566
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1030073

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :cond_0
    move-object v3, v0

    .line 1567
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/perm/kate/MessageThreadFragment$21;

    invoke-direct {v4, p0}, Lcom/perm/kate/MessageThreadFragment$21;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1582
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1583
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showNewMessagesAcivity(Z)V
    .locals 3

    .line 1743
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1744
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1745
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-string v2, "com.perm.kate.chat_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1747
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.perm.kate.message_text"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x2

    .line 1749
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1750
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    return-void
.end method

.method private showRecordActivity()V
    .locals 3

    .line 3200
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->new_voice:Z

    if-nez v0, :cond_0

    .line 3201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/RecordEpisodeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0xb

    .line 3203
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 3207
    :cond_0
    new-instance v0, Lcom/perm/kate/VoiceRecorder;

    invoke-direct {v0}, Lcom/perm/kate/VoiceRecorder;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    .line 3208
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {v0, v1}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 3209
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/perm/utils/TimerTextView;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VoiceRecorder;->init(Lcom/perm/utils/TimerTextView;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3211
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->rec:Lcom/perm/kate/VoiceRecorder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/VoiceRecorder;->start(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 3213
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->showVoiceRecorder(Z)V

    .line 3214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090417

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3215
    sget-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v1, :cond_3

    .line 3216
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3217
    :cond_3
    new-instance v1, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda6;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda4;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda5;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 3

    .line 2954
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2955
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "com.perm.kate.select_video"

    .line 2957
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x6

    .line 2958
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "com.perm.kate.select_audio"

    .line 2960
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 2961
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private showStickerHints([I)V
    .locals 5

    .line 647
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 654
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->createStickerHintsPopup()V

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 657
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const-wide v3, 0x405b800000000000L    # 110.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    iput-object p1, v0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    .line 668
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showVideoUploadActivity(Landroid/net/Uri;)V
    .locals 3

    .line 3099
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoUploadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.is_private"

    const/4 v2, 0x1

    .line 3101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 3103
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showVoiceRecorder(Z)V
    .locals 4

    .line 3245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f090416

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private speakerphoneReset()V
    .locals 2

    .line 1548
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1551
    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->speakerphone_disabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1552
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method

.method private storeInlineButtonsInMemory(Ljava/util/ArrayList;)V
    .locals 4

    .line 2024
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 2026
    iget-object v1, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/perm/kate/api/BotKeyboard;->inline:Z

    if-eqz v1, :cond_0

    .line 2027
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->inline_bot_buttons:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unpinMessage()V
    .locals 1

    .line 1271
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$16;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1285
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3035
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3037
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3038
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3040
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 3041
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCountOnUiThread()V

    :cond_0
    return-void
.end method

.method private updateLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3027
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 3028
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 3029
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 3030
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method private updateMessageText()V
    .locals 5

    .line 367
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getEditedMessageId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-nez v2, :cond_1

    return-void

    .line 374
    :cond_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    new-instance v3, Lcom/perm/kate/MessageThreadFragment$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/perm/kate/MessageThreadFragment$6;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;J)V

    .line 396
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private visibleBotKeyboard()V
    .locals 2

    .line 3383
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3385
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 3386
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_bot_keyboard_shown:Z

    .line 3387
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/BotKeyboardHelper;->getImageBotKeyboardActive()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private voiceUploadRetry(Ljava/io/File;)V
    .locals 2

    .line 2225
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0598

    .line 2226
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$41;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/MessageThreadFragment$41;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/io/File;)V

    const p1, 0x7f0f044a

    .line 2227
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/MessageThreadFragment$40;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadFragment$40;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    const v1, 0x7f0f01c5

    .line 2233
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2240
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2241
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2242
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method addSmile(Ljava/lang/String;)V
    .locals 3

    .line 2268
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 2271
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 2272
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 2273
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public clearSelectedMessages()V
    .locals 1

    .line 2308
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2309
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkForwardMessages()V

    .line 2310
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkDeleteMessages()V

    return-void
.end method

.method public displayThread(JJ)V
    .locals 1

    .line 2462
    iput-wide p1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 2463
    iput-wide p3, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 2464
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayDraft()V

    .line 2465
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide p2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2466
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;Z)V

    .line 2467
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayLastSeen()V

    .line 2468
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->initQueue()V

    .line 2469
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->resetBotKeyboard()V

    const/4 p1, 0x0

    .line 2470
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    .line 2471
    iget-wide p1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 2472
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshOnlineStatusInThread()V

    .line 2475
    :cond_0
    iget-wide p1, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    .line 2476
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshConversation()V

    goto :goto_0

    .line 2478
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    iget-wide p1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    .line 2480
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getBotButtons()V

    .line 2482
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->cancelVoice()V

    return-void
.end method

.method editChat()V
    .locals 4

    .line 1592
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1593
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1594
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-string v3, "com.perm.kate.chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1595
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1596
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 8

    .line 1385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 1386
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1387
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const v0, 0x7f090111

    .line 1388
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0901b3

    .line 1389
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1391
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    if-nez v0, :cond_1

    const v0, 0x7f0900c4

    .line 1392
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1393
    :cond_1
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    const v1, 0x7f0902c5

    if-nez v0, :cond_2

    .line 1394
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1397
    :cond_2
    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const v0, 0x7f0900f5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    const v5, 0x7f090248

    .line 1398
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0902af

    .line 1399
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f0902c0

    .line 1400
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v5, 0x7f090048

    .line 1401
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1402
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1403
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1405
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v1

    .line 1406
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v1, :cond_4

    const v1, 0x7f0f01f3

    goto :goto_0

    :cond_4
    const v1, 0x7f0f01e8

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1407
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_5

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_6

    :cond_5
    const v0, 0x7f0903fd

    .line 1408
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1409
    :cond_6
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_8

    .line 1410
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_message_id:J

    invoke-static {v0, v1, v2}, Lcom/perm/utils/HiddenPinnedMessages;->isHidden(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0902cf

    .line 1411
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    const v0, 0x7f090168

    .line 1413
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    :goto_1
    const v0, 0x7f090418

    .line 1416
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 1417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_9

    .line 1418
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1420
    :cond_9
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1421
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getVoiceSpeed()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    :cond_a
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_2
    return v5
.end method

.method public hideBotKeyboard()V
    .locals 2

    .line 3426
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->is_bot_keyboard_shown:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 3427
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3428
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_bot_keyboard_shown:Z

    .line 3429
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/perm/kate/BotKeyboardHelper;->getImageBotKeyboard(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public isReverseOrder()Z
    .locals 3

    const-string v0, "1"

    .line 1934
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_messages_reverse_2"

    .line 1935
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method markAllAsRead()V
    .locals 2

    .line 1820
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    if-nez v0, :cond_0

    return-void

    .line 1823
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getUnreadIncomingMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1824
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1826
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->setAsRead(Ljava/util/ArrayList;)V

    .line 1827
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/KateWidgetMessages;->displayNewData(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 36

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "doc"

    const-string v5, "video"

    const-string v6, "poll"

    .line 2099
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object v8, v1, Lcom/perm/kate/MessageThreadFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v7, v0, v2, v3, v8}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-ne v0, v7, :cond_0

    if-ne v2, v8, :cond_0

    .line 2101
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->clearNewMessageEditText()V

    :cond_0
    const/16 v9, 0xd

    const/4 v10, 0x0

    if-ne v0, v9, :cond_1

    if-ne v2, v8, :cond_1

    .line 2105
    invoke-direct {v1, v10}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    :cond_1
    const/4 v9, 0x1

    if-eqz v0, :cond_2

    const/4 v11, 0x4

    if-ne v0, v11, :cond_4

    :cond_2
    if-ne v2, v8, :cond_4

    const-string v11, "audios"

    .line 2107
    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 2108
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, ","

    .line 2109
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2110
    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 2111
    sget-object v15, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    sget-object v14, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    const-string v15, "audio"

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2115
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0f0053

    invoke-static {v11, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v11, 0x6

    const-string v12, "_"

    const-string v13, "Kate.MessageThreadFragm"

    const-string v14, "owner_id"

    const-wide/16 v9, 0x0

    if-eq v0, v11, :cond_5

    const/4 v11, 0x3

    if-ne v0, v11, :cond_6

    :cond_5
    if-ne v2, v8, :cond_6

    :try_start_1
    const-string v11, "video_id"

    .line 2118
    invoke-virtual {v3, v11, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2119
    invoke-virtual {v3, v14, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 2120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attached_video_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " attached_video_owner_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2122
    sget-object v10, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    sget-object v9, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v9, 0x7f0f058b

    const/4 v10, 0x1

    invoke-static {v5, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    const/4 v5, 0x5

    const-string v9, "uri"

    if-ne v0, v5, :cond_7

    if-ne v2, v8, :cond_7

    .line 2127
    :try_start_2
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const-string v10, "name"

    .line 2128
    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "desc"

    .line 2129
    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2131
    new-instance v11, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;

    invoke-direct {v11, v1}, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 2132
    iput-object v10, v11, Lcom/perm/kate/MessageThreadFragment$MyVideoUploadCallback;->name:Ljava/lang/String;

    .line 2133
    new-instance v15, Lcom/perm/kate/photoupload/VideoUploader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v15, v7, v5, v8, v11}, Lcom/perm/kate/photoupload/VideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Lcom/perm/kate/photoupload/VideoUploadCallback;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v15

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v25}, Lcom/perm/kate/photoupload/VideoUploader;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    const v5, 0x7f0f057e

    .line 2134
    invoke-virtual {v1, v5}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 2136
    :cond_7
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    if-ne v0, v5, :cond_8

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    const-string v5, "latitude"

    .line 2137
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "longitude"

    .line 2138
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2139
    invoke-direct {v1, v5, v7}, Lcom/perm/kate/MessageThreadFragment;->updateLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v5, 0x7

    if-ne v0, v5, :cond_a

    const/4 v5, -0x1

    if-ne v2, v5, :cond_a

    const-string v5, "uris"

    .line 2142
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v7, "resize_option"

    const/4 v8, 0x2

    .line 2143
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "rotate"

    const/4 v10, 0x0

    .line 2144
    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const v10, 0x7f0f03e1

    .line 2145
    invoke-virtual {v1, v10}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 2146
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 2147
    new-instance v10, Lcom/perm/kate/photoupload/MessageUploader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v28

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, Landroid/net/Uri;

    iget-object v5, v1, Lcom/perm/kate/MessageThreadFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v33, 0x0

    move-object v8, v12

    iget-wide v11, v1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object/from16 v27, v10

    move/from16 v30, v7

    move-object/from16 v31, v5

    move-wide/from16 v34, v11

    invoke-direct/range {v27 .. v35}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v10}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    goto :goto_1

    :cond_9
    move-object v8, v12

    .line 2149
    new-instance v10, Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    invoke-direct {v10, v1, v5, v7}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;-><init>(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;I)V

    invoke-virtual {v10}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->start()V

    goto :goto_1

    :cond_a
    move-object v8, v12

    :goto_1
    const/16 v5, 0x8

    if-ne v0, v5, :cond_b

    const/4 v5, -0x1

    if-ne v2, v5, :cond_b

    .line 2152
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 2154
    new-instance v5, Lcom/perm/kate/photoupload/MessageUploader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v19

    const/16 v21, 0x0

    iget-object v7, v1, Lcom/perm/kate/MessageThreadFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    iget-wide v9, v1, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object/from16 v18, v5

    move-object/from16 v22, v7

    move-wide/from16 v25, v9

    invoke-direct/range {v18 .. v26}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v5}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    :cond_b
    const/16 v5, 0xa

    if-ne v0, v5, :cond_c

    const/4 v5, -0x1

    if-ne v2, v5, :cond_c

    const-string v5, "doc_id"

    const-wide/16 v9, 0x0

    .line 2157
    invoke-virtual {v3, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2158
    invoke-virtual {v3, v14, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2159
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attached_doc_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " attached_doc_owner_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2161
    sget-object v7, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2162
    sget-object v5, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    :cond_c
    iget-boolean v4, v1, Lcom/perm/kate/MessageThreadFragment;->new_voice:Z

    if-nez v4, :cond_d

    const/16 v4, 0xb

    if-ne v0, v4, :cond_d

    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    const-string v4, "file"

    .line 2166
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2167
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2168
    new-instance v4, Lcom/perm/kate/photoupload/DocUploader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    iget-object v14, v1, Lcom/perm/kate/MessageThreadFragment;->voiceUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const-string v15, "audio_message"

    move-object v7, v4

    invoke-direct/range {v7 .. v15}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    :cond_d
    const/4 v4, 0x1

    if-ne v4, v0, :cond_e

    const/4 v4, -0x1

    if-ne v2, v4, :cond_e

    .line 2171
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/perm/kate/MessageThreadFragment;->showVideoUploadActivity(Landroid/net/Uri;)V

    :cond_e
    const/16 v4, 0xc

    if-ne v0, v4, :cond_f

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f

    const-string v4, "poll_id"

    const-wide/16 v7, 0x0

    .line 2174
    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2176
    sget-object v5, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    sget-object v4, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2179
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    const/16 v4, 0x7d4

    if-ne v0, v4, :cond_10

    const/4 v0, -0x1

    if-ne v2, v0, :cond_10

    .line 2181
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/perm/kate/MessageThreadFragment;->setCutomBackground(Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2185
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_10
    :goto_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 779
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 780
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 781
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 782
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->callbackLastActivity:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 783
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->editCallback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method onBackspace()V
    .locals 1

    .line 2277
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    return-void
.end method

.method public onCommitContent(Landroid/net/Uri;)V
    .locals 13

    .line 3492
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageThreadFragment;->getExtFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3497
    new-instance v0, Lcom/perm/kate/photoupload/DocUploader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v11, p0, Lcom/perm/kate/MessageThreadFragment;->gifUploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v4 .. v12}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    const p1, 0x7f0f0581

    .line 3498
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 3261
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3262
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideStickerHints()V

    .line 3263
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->hideMentionHints()V

    .line 3264
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 729
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 731
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 734
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 735
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 736
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.chat_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    .line 737
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.message_uid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    .line 738
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_id:J

    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    .line 740
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->initQueue()V

    .line 741
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "unread_count"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_3

    .line 745
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    .line 746
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 747
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshOnlineStatusInThread()V

    .line 750
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 751
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->refreshConversation()V

    goto :goto_0

    .line 752
    :cond_2
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 753
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->getBotButtons()V

    .line 756
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 759
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/perm/kate/StickerHints;->initIfRequired(JLandroid/app/Activity;)V

    .line 761
    :cond_4
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 762
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 763
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment;->mProximity:Landroid/hardware/Sensor;

    .line 766
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "instant_read"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/MessageThreadFragment;->instant_read:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c00ba

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09011e

    .line 202
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    .line 203
    check-cast p2, Lcom/perm/kate/GifEditText;

    invoke-virtual {p2, p0}, Lcom/perm/kate/GifEditText;->setBaseFragment(Lcom/perm/kate/BaseFragment;)V

    .line 204
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 205
    sget p2, Lcom/perm/kate/BaseActivity;->Theme:I

    const p3, 0x7f1000df

    if-ne p2, p3, :cond_0

    .line 206
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const p3, 0x7f0800df

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->sendOnEnterEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 208
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 210
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 215
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    const/16 p3, 0x4001

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 217
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->closeUnreadEnabled()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    const p2, 0x7f0903f4

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    const p2, 0x7f090216

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    .line 222
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "key_messages_in_bubbles_2"

    .line 223
    invoke-interface {p2, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->showBubbles:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0902ac

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->getBgByTheme()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const v1, 0x7f090178

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->image_background:Landroid/widget/ImageView;

    .line 228
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->checkChatBackground()V

    .line 230
    :cond_3
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->user:Lcom/perm/kate/api/User;

    .line 232
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->isReverseOrder()Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->reverse_sort_order:Z

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 235
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 238
    :cond_4
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p3, 0x7f090082

    .line 240
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    .line 241
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->newMessageClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09005f

    .line 242
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->addAttachmentClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090415

    .line 243
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    .line 244
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->voiceClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result p3

    if-nez p3, :cond_5

    .line 246
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const p3, 0x7f090276

    .line 249
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->pinned_container:Landroid/view/View;

    .line 251
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayDraft()V

    .line 252
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$1;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/MessageThreadActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Lcom/perm/kate/MessageThreadActivity;->registerEditText(Landroid/widget/EditText;)V

    .line 274
    :cond_6
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->showMessages()V

    .line 275
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->displayLastSeen()V

    const p3, 0x7f09007b

    .line 277
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$2;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09007a

    .line 283
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$3;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090351

    .line 300
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->tv_attachments_count:Landroid/widget/TextView;

    .line 301
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0902d4

    .line 304
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$4;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;)V

    const-string p3, "rtt"

    .line 313
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/MessageThreadFragment;->rtt:Z

    .line 315
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 317
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f080200

    goto :goto_1

    :cond_7
    const p2, 0x7f080201

    .line 318
    :goto_1
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    const p2, 0x7f090058

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButton:Landroid/widget/ImageView;

    .line 322
    iget-object p3, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboardButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901c7

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    .line 325
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->isVoiceAutoSend()Z

    move-result p2

    if-nez p2, :cond_9

    const p2, 0x7f090417

    .line 326
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0f00c9

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 328
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 329
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    instance-of p2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_9

    .line 331
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 2339
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    if-eqz v0, :cond_0

    .line 2340
    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 2341
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 2342
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->clearSelectedMessages()V

    .line 2343
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 2344
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2345
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    .line 2346
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 2347
    check-cast v1, Lcom/perm/kate/GifEditText;

    invoke-virtual {v1, v0}, Lcom/perm/kate/GifEditText;->setBaseFragment(Lcom/perm/kate/BaseFragment;)V

    .line 2348
    :cond_2
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    .line 2349
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->typingTextView:Landroid/widget/TextView;

    .line 2350
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->handler:Landroid/os/Handler;

    .line 2351
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 2353
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    .line 2354
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2355
    :cond_3
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsWindow:Landroid/widget/PopupWindow;

    .line 2356
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsView:Landroid/view/View;

    .line 2357
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 2358
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    .line 2360
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    .line 2361
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2362
    :cond_4
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsWindow:Landroid/widget/PopupWindow;

    .line 2363
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsView:Landroid/view/View;

    .line 2364
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintListener:Lcom/perm/kate/MentionsAdapter$MentionSelectedListener;

    .line 2365
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mentionHintsAdapter:Lcom/perm/kate/MentionsAdapter;

    .line 2367
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->view_bot_buttons:Landroid/widget/LinearLayout;

    .line 2368
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->botKeyboard:Lcom/perm/kate/api/BotKeyboard;

    .line 2370
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2371
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mProximity:Landroid/hardware/Sensor;

    .line 2372
    iput-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->y:Landroid/hardware/SensorEventListener;

    .line 2374
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onKeyDown()Z
    .locals 1

    .line 3456
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->is_bot_keyboard_shown:Z

    if-eqz v0, :cond_0

    .line 3457
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1429
    const-class v1, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "user_id"

    const-string v6, "chat_id"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v5, "1"

    aput-object v5, v2, v4

    const-string v4, "1.5"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v2, v4

    new-array v1, v1, [F

    .line 1499
    fill-array-data v1, :array_0

    .line 1500
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f0597

    .line 1501
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1503
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getVoiceSpeed()F

    move-result v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v5

    new-instance v6, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, v1}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda3;-><init>(Lcom/perm/kate/MessageThreadFragment;[F)V

    .line 1502
    invoke-virtual {v4, v2, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1508
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 1509
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1510
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1489
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->confirmUnpin()V

    goto/16 :goto_0

    .line 1461
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1462
    iget-wide v7, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1463
    iget-wide v6, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "thread_start"

    .line 1464
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1465
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1495
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->showHiddenPinned()V

    goto/16 :goto_0

    .line 1474
    :sswitch_4
    iget-boolean v1, v0, Lcom/perm/kate/MessageThreadFragment;->users_chat_background:Z

    if-eqz v1, :cond_0

    .line 1475
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->showBackgroundDialog()V

    goto/16 :goto_0

    .line 1477
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->showGallery()V

    goto/16 :goto_0

    .line 1480
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->searchByUser()V

    goto/16 :goto_0

    .line 1449
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1450
    iget-wide v2, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1451
    iget-wide v2, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1452
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1431
    :sswitch_7
    invoke-direct {v0, v4}, Lcom/perm/kate/MessageThreadFragment;->showNewMessagesAcivity(Z)V

    goto :goto_0

    .line 1486
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->showMessageDatePicker()V

    goto :goto_0

    .line 1468
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->makeSceenshot()V

    goto :goto_0

    .line 1471
    :sswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->leaveConversation()V

    goto :goto_0

    .line 1492
    :sswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->hidePinned()V

    goto :goto_0

    .line 1434
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->editChat()V

    goto :goto_0

    .line 1483
    :sswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->disableNotifications()V

    goto :goto_0

    .line 1437
    :sswitch_e
    new-instance v12, Lcom/perm/kate/MessageThreadFragment$20;

    invoke-direct {v12, v0}, Lcom/perm/kate/MessageThreadFragment$20;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1442
    iget-wide v6, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v8, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    iget-wide v10, v0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    iget-wide v14, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static/range {v6 .. v15}, Lcom/perm/kate/MessagesFragment;->deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V

    goto :goto_0

    .line 1445
    :sswitch_f
    iput-boolean v4, v0, Lcom/perm/kate/MessageThreadFragment;->read:Z

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1455
    :sswitch_10
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1456
    iget-wide v3, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1457
    iget-wide v3, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1458
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1514
    :goto_0
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f090048 -> :sswitch_10
        0x7f0900c4 -> :sswitch_f
        0x7f0900ec -> :sswitch_e
        0x7f0900f5 -> :sswitch_d
        0x7f090111 -> :sswitch_c
        0x7f090168 -> :sswitch_b
        0x7f0901b3 -> :sswitch_a
        0x7f090222 -> :sswitch_9
        0x7f09022d -> :sswitch_8
        0x7f090248 -> :sswitch_7
        0x7f0902af -> :sswitch_6
        0x7f0902c0 -> :sswitch_5
        0x7f0902c5 -> :sswitch_4
        0x7f0902cf -> :sswitch_3
        0x7f090337 -> :sswitch_2
        0x7f0903fd -> :sswitch_1
        0x7f090418 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public onPause()V
    .locals 2

    .line 1804
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-wide/16 v0, 0x0

    .line 1805
    sput-wide v0, Lcom/perm/kate/KApplication;->user_in_dialog:J

    .line 1806
    sput-wide v0, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    .line 1807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    .line 1809
    :cond_0
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1811
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1812
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->speakerphoneReset()V

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->y:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1815
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1816
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->cancelVoice()V

    :cond_3
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    const/4 v0, 0x0

    .line 2458
    invoke-direct {p0, v0}, Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1796
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 1797
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->showRecordActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1868
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 1869
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    sput-wide v0, Lcom/perm/kate/KApplication;->user_in_dialog:J

    .line 1870
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    sput-wide v0, Lcom/perm/kate/KApplication;->chat_in_dialog:J

    .line 1872
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;J)V

    .line 1874
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->y:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mProximity:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1899
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 1901
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 1903
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->prepareHeader()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1904
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread(Ljava/lang/Integer;Z)V

    .line 1905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.perm.kate.intent.action.new_messages"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1906
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.perm.kate.intent.action.typing"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1907
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->botButtonsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.perm.kate.intent.action.bot_buttons"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1908
    iput-boolean v1, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z

    .line 1910
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1917
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 1920
    :try_start_0
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z

    if-eqz v0, :cond_0

    .line 1921
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1922
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1923
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->botButtonsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1924
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment;->receivers_registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1927
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1928
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public saveDraft()V
    .locals 6

    .line 2445
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 2446
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2447
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2448
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    :goto_0
    const-string v3, ""

    .line 2449
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2450
    invoke-static {v1, v2, v0}, Lcom/perm/utils/TempMessages;->put(JLjava/lang/String;)V

    goto :goto_1

    .line 2452
    :cond_1
    invoke-static {v1, v2}, Lcom/perm/utils/TempMessages;->clear(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public sendBotCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 15

    move-object v0, p0

    .line 3412
    iget-wide v1, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 3413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->getFullMentionForBot(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    move-object v3, v2

    .line 3414
    :goto_0
    iget-object v2, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v4, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v6, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v14, p2

    invoke-virtual/range {v2 .. v14}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V

    .line 3415
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    return-void
.end method

.method public sendSticker(Ljava/lang/Integer;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2818
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v1, 0x0

    if-eqz v2, :cond_1

    .line 2822
    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    move-object v10, v3

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 2823
    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    move-object v11, v3

    goto :goto_1

    :cond_2
    move-object v11, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 2824
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    :cond_3
    move-object v15, v1

    .line 2826
    iget-object v4, v0, Lcom/perm/kate/MessageThreadFragment;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v6, v0, Lcom/perm/kate/MessageThreadFragment;->message_uid:J

    iget-wide v8, v0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    iget-wide v13, v0, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    const/16 v16, 0x0

    const-string v5, ""

    move-object/from16 v12, p1

    invoke-virtual/range {v4 .. v16}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 2831
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    .line 2832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    .line 2833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    .line 2834
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->UpdateAttachmentsCount()V

    .line 2837
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/MessageThreadFragment;->requeryOnUiThread()V

    return-void
.end method

.method setVoiceButtonVisibility()V
    .locals 8

    .line 3268
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3271
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    .line 3275
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 3280
    :goto_0
    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 3284
    :goto_1
    sget-object v3, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    const/4 v0, 0x0

    .line 3286
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->voiceButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3287
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->sendButton:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showKeyboard()V
    .locals 4

    .line 3515
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3516
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment;->et_new_message:Landroid/widget/EditText;

    new-instance v1, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageThreadFragment$$ExternalSyntheticLambda7;-><init>(Lcom/perm/kate/MessageThreadFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected showMessages()V
    .locals 10

    const/4 v0, 0x1

    .line 945
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 947
    new-instance v2, Lcom/perm/kate/MessageAdapter;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/BaseActivity;

    iget-wide v5, p0, Lcom/perm/kate/MessageThreadFragment;->chat_id:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/perm/kate/MessageAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V

    iput-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 948
    iget-object v1, v2, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    invoke-virtual {v1, p0}, Lcom/perm/kate/MessageAdapterCore;->setMessageThreadFragment(Lcom/perm/kate/MessageThreadFragment;)V

    .line 949
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessageAdapter;->setSelectedMessages(Ljava/util/ArrayList;)V

    .line 950
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/MessageThreadFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 952
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 953
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 954
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public showMyStickersActivity()V
    .locals 3

    .line 3165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
