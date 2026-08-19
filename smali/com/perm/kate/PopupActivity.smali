.class public Lcom/perm/kate/PopupActivity;
.super Landroidx/fragment/app/FragmentActivity;
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

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    .line 51
    iput-boolean v0, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    .line 106
    new-instance v0, Lcom/perm/kate/PopupActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$1;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->focusChangedListener:Landroid/view/View$OnFocusChangeListener;

    .line 160
    new-instance v0, Lcom/perm/kate/PopupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$2;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Lcom/perm/kate/PopupActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$5;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->sendClickListener:Landroid/view/View$OnClickListener;

    .line 256
    new-instance v0, Lcom/perm/kate/PopupActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$6;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->openClickListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lcom/perm/kate/PopupActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$7;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->closeClickListener:Landroid/view/View$OnClickListener;

    .line 338
    new-instance v0, Lcom/perm/kate/PopupActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$8;-><init>(Lcom/perm/kate/PopupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PopupActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setIsTyping()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PopupActivity;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/PopupActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeaderInUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PopupActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeader()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PopupActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->sendMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PopupActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->showMessageThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PopupActivity;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PopupActivity;)Landroid/widget/EditText;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/PopupActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->sendSticker(Ljava/lang/Integer;)V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 2

    .line 366
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 368
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 369
    iget-object p1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 370
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 371
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method private checkAccounts()V
    .locals 2

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->account:Lcom/perm/kate/account/Account;

    iget-object v1, v1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private dismissTimer()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private finishAfterSend()V
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    if-nez v0, :cond_0

    .line 252
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;J)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getUserInThread()V
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PopupActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/PopupActivity$3;-><init>(Lcom/perm/kate/PopupActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getValues(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "text"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_id"

    const-wide/16 v2, 0x0

    .line 140
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "chat_id"

    .line 141
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 142
    iget-boolean v4, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    if-eqz v4, :cond_3

    .line 146
    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    iget-wide v1, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    goto :goto_0

    .line 149
    :cond_2
    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/perm/kate/PopupActivity;->hasAnotherMessage:Z

    goto :goto_0

    .line 154
    :cond_3
    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    .line 156
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    :goto_0
    return-void
.end method

.method private initQueue()V
    .locals 5

    .line 227
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    .line 228
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/MessageSendQueueManager;->getQueue(JJ)Lcom/perm/kate/MessageSendQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    .line 229
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private initSmileKeyboard()V
    .locals 4

    .line 332
    new-instance v0, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v0}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const v1, 0x7f090036

    .line 333
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PopupActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 334
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perm/kate/smile/SmileKeyboard;->show_stickers_configure:Z

    .line 335
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    return-void
.end method

.method static screenLightUp()Z
    .locals 3

    .line 324
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
    .locals 12

    .line 240
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f033c

    .line 242
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v3, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    iget-wide v5, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 246
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->finishAfterSend()V

    return-void
.end method

.method private sendSticker(Ljava/lang/Integer;)V
    .locals 11

    .line 361
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->queue:Lcom/perm/kate/MessageSendQueue;

    iget-wide v2, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    iget-wide v4, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-string v1, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    .line 362
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->finishAfterSend()V

    return-void
.end method

.method private setIsTyping()V
    .locals 3

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    .line 116
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;J)V

    .line 117
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->dismissTimer()V

    return-void
.end method

.method private setTimer()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->dismissTimer()V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setTop()V
    .locals 2

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x80000

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 286
    invoke-static {}, Lcom/perm/kate/PopupActivity;->screenLightUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x200000

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method static showAlways()Z
    .locals 3

    .line 328
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

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    iget-wide v1, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v3, "com.perm.kate.chat_id"

    .line 273
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 275
    :cond_0
    iget-wide v1, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    const-string v3, "com.perm.kate.message_uid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static startPopupActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3

    .line 292
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_popup_reply"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0, p2, p3}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 297
    :cond_1
    invoke-static {p3, p2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    .line 298
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, v0, v1}, Lcom/perm/kate/notifications/MessagesNotification;->getShowMessage(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 300
    :cond_2
    invoke-static {}, Lcom/perm/kate/PopupActivity;->showAlways()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-lez v0, :cond_3

    return-void

    .line 302
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 303
    const-class v1, Lcom/perm/kate/PopupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "text"

    .line 306
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "from_id"

    .line 307
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "chat_id"

    .line 308
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateEditTextBg()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/high16 v2, -0x76000000

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateHeader()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    const-wide/16 v2, 0x0

    const v4, 0x7f0f033b

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    .line 185
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 193
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 198
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->getUserInThread()V

    :goto_0
    return-void
.end method

.method private updateHeaderInUiThread()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/perm/kate/PopupActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PopupActivity$4;-><init>(Lcom/perm/kate/PopupActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextField()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->tv_message_body:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 59
    sget p1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 60
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 61
    invoke-static {p0}, Lcom/perm/kate/ForceLocale;->changeLocale(Landroid/content/Context;)V

    const p1, 0x7f0c00fa

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->getValues(Landroid/content/Intent;)V

    .line 65
    iget-object p1, p0, Lcom/perm/kate/PopupActivity;->text:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->user_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/PopupActivity;->chat_id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f0903de

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PopupActivity;->tv_title:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->openClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09038e

    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PopupActivity;->tv_message_body:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->openClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090349

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PopupActivity;->tv_account_name:Landroid/widget/TextView;

    const p1, 0x7f09011e

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/PopupActivity;->et_new_message:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->focusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p1, 0x7f090083

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/PopupActivity;->btn_new_message_send:Landroid/widget/ImageButton;

    .line 77
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateEditTextBg()V

    :cond_1
    const p1, 0x7f090070

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/PopupActivity;->btn_close_popup:Landroid/widget/ImageButton;

    .line 80
    iget-object p1, p0, Lcom/perm/kate/PopupActivity;->btn_new_message_send:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->sendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/PopupActivity;->btn_close_popup:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->closeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->checkAccounts()V

    .line 83
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeader()V

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateTextField()V

    .line 85
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->initQueue()V

    .line 86
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setTimer()V

    .line 87
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setTop()V

    .line 88
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->initSmileKeyboard()V

    return-void

    .line 66
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->handler:Landroid/os/Handler;

    .line 316
    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->finishRunnable:Ljava/lang/Runnable;

    .line 317
    iget-object v1, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v1}, Lcom/perm/kate/smile/SmileKeyboard;->destroy()V

    .line 319
    :cond_0
    iput-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 320
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/perm/kate/PopupActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->onKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 379
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/perm/kate/PopupActivity;->getValues(Landroid/content/Intent;)V

    .line 131
    iget-boolean p1, p0, Lcom/perm/kate/PopupActivity;->isTyping:Z

    if-nez p1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->setTimer()V

    .line 133
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateHeader()V

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PopupActivity;->updateTextField()V

    return-void
.end method
