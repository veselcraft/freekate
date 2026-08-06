.class public Lcom/perm/kate/PopupActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PopupActivity.java"


# instance fields
.field private btn_close_popup:Landroid/widget/ImageButton;

.field private btn_new_message_send:Landroid/widget/ImageButton;

.field private chat_id:J

.field private closeClickListener:Landroid/view/View$OnClickListener;

.field private et_new_message:Landroid/widget/EditText;

.field private finishRunnable:Ljava/lang/Runnable;

.field private focusChangedListener:Landroid/view/View$OnFocusChangeListener;

.field private handler:Landroid/os/Handler;

.field private hasAnotherMessage:Z

.field private isTyping:Z

.field private listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private openClickListener:Landroid/view/View$OnClickListener;

.field private queue:Lcom/perm/kate/MessageSendQueue;

.field private sendClickListener:Landroid/view/View$OnClickListener;

.field private smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

.field private text:Ljava/lang/String;

.field private tv_account_name:Landroid/widget/TextView;

.field private tv_message_body:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    .line 50
    iput-boolean v0, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    .line 114
    new-instance v0, Lcom/perm/kate/PopupActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$1;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->focusChangedListener:Landroid/view/View$OnFocusChangeListener;

    .line 168
    new-instance v0, Lcom/perm/kate/PopupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$2;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    .line 239
    new-instance v0, Lcom/perm/kate/PopupActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$5;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->sendClickListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lcom/perm/kate/PopupActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$6;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->openClickListener:Landroid/view/View$OnClickListener;

    .line 270
    new-instance v0, Lcom/perm/kate/PopupActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$7;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->closeClickListener:Landroid/view/View$OnClickListener;

    .line 348
    new-instance v0, Lcom/perm/kate/PopupActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$8;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setIsTyping()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PopupActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeaderInUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeader()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->sendMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->showMessageThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PopupActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PopupActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PopupActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PopupActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->sendSticker(Ljava/lang/Integer;)V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 4
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 376
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 378
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 379
    iget-object v3, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 380
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 381
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 382
    return-void
.end method

.method private checkAccounts()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v1, v1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private dismissTimer()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void
.end method

.method private finishAfterSend()V
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    if-nez v0, :cond_0

    .line 259
    invoke-static {p0}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/PopupActivity;->finish()V

    .line 261
    return-void
.end method

.method private getUserInThread()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PopupActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/PopupActivity$3;-><init>(Lcom/perm/kate/PopupActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    return-void
.end method

.method private getValues(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    .line 147
    const-string v3, "text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "_text":Ljava/lang/String;
    const-string v3, "from_id"

    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 149
    .local v2, "_user_id":Ljava/lang/Long;
    const-string v3, "chat_id"

    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 150
    .local v0, "_chat_id":Ljava/lang/Long;
    iget-boolean v3, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    if-eqz v3, :cond_3

    .line 154
    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 155
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    .line 166
    :goto_0
    return-void

    .line 157
    :cond_2
    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    .line 158
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    goto :goto_0

    .line 162
    :cond_3
    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    .line 164
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    goto :goto_0
.end method

.method private initQueue()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 234
    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    .line 235
    .local v0, "id":J
    :goto_0
    invoke-static {v0, v1, v4, v5}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    .line 236
    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    .line 237
    return-void

    .line 234
    .end local v0    # "id":J
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    goto :goto_0
.end method

.method private initSmileKeyboard()V
    .locals 4

    .prologue
    .line 342
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v0}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 343
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const v1, 0x7f0e025b

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 344
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers_configure:Z

    .line 345
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 346
    return-void
.end method

.method static screenLightUp()Z
    .locals 3

    .prologue
    .line 334
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_screen_light_up"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private sendMessage()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 247
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "send_text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const v0, 0x7f0702df

    invoke-virtual {p0, v0}, Lcom/perm/kate/PopupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-wide/16 v9, 0x0

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 253
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->finishAfterSend()V

    goto :goto_0
.end method

.method private sendSticker(Ljava/lang/Integer;)V
    .locals 11
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 371
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    const-string v1, ""

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-wide/16 v9, 0x0

    move-object v7, v6

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 372
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->finishAfterSend()V

    .line 373
    return-void
.end method

.method private setIsTyping()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    .line 124
    invoke-static {p0}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->dismissTimer()V

    .line 126
    return-void
.end method

.method private setTimer()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->dismissTimer()V

    goto :goto_0
.end method

.method private setTop()V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/perm/kate/PopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 291
    .local v0, "wind":Landroid/view/Window;
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 292
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 293
    invoke-static {}, Lcom/perm/kate/PopupActivity;->screenLightUp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 296
    :cond_0
    return-void
.end method

.method static showAlways()Z
    .locals 3

    .prologue
    .line 338
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_show_popup_always"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showMessageThread()V
    .locals 6

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, "i":Landroid/content/Intent;
    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 280
    const-string v1, "com.perm.kate.chat_id"

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 283
    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/PopupActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-virtual {p0}, Lcom/perm/kate/PopupActivity;->finish()V

    .line 285
    return-void

    .line 282
    :cond_0
    const-string v1, "com.perm.kate.message_uid"

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "from_id"    # Ljava/lang/Long;
    .param p3, "chat_id"    # Ljava/lang/Long;

    .prologue
    .line 299
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_popup_reply"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, p2, p3}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const/4 v1, 0x0

    .line 306
    .local v1, "thread_id":Ljava/lang/Long;
    if-eqz p2, :cond_2

    .line 307
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 308
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, v1}, Lcom/perm/kate/notifications/MessagesNotification;->getShowMessage(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-static {}, Lcom/perm/kate/PopupActivity;->showAlways()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 312
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "i":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/PopupActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "from_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    const-string v2, "chat_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateEditTextBg()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/high16 v1, -0x76000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    return-void
.end method

.method private updateHeader()V
    .locals 9

    .prologue
    const v8, 0x7f0702de

    .line 189
    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 192
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    .local v0, "chat_name":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 200
    .end local v0    # "chat_name":Ljava/lang/CharSequence;
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 201
    .local v1, "u":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_3

    .line 202
    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 205
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->getUserInThread()V

    goto :goto_0
.end method

.method private updateHeaderInUiThread()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/perm/kate/PopupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v0, Lcom/perm/kate/PopupActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$4;-><init>(Lcom/perm/kate/PopupActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PopupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateTextField()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_message_body:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_message_body:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 58
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 67
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->setTheme(I)V

    .line 68
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 69
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    .line 71
    const v1, 0x7f0300df

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/PopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/PopupActivity;->getValues(Landroid/content/Intent;)V

    .line 73
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/PopupActivity;->finish()V

    .line 97
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_2
    const v1, 0x7f0e00b6

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->openClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0e011f

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_message_body:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_message_body:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->openClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0e02ae

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0e00eb

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    .line 83
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->focusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    const v1, 0x7f0e0263

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->btn_new_message_send:Landroid/widget/ImageButton;

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateEditTextBg()V

    .line 87
    :cond_3
    const v1, 0x7f0e02af

    invoke-virtual {p0, v1}, Lcom/perm/kate/PopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->btn_close_popup:Landroid/widget/ImageButton;

    .line 88
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->btn_new_message_send:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->sendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->btn_close_popup:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->closeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->checkAccounts()V

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeader()V

    .line 92
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateTextField()V

    .line 93
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->initQueue()V

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setTimer()V

    .line 95
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setTop()V

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->initSmileKeyboard()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    .line 326
    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    .line 327
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->destroy()V

    .line 329
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 330
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 331
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->onKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->getValues(Landroid/content/Intent;)V

    .line 139
    iget-boolean v0, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setTimer()V

    .line 141
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeader()V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateTextField()V

    .line 144
    return-void
.end method
