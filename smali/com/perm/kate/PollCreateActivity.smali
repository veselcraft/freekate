.class public Lcom/perm/kate/PollCreateActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PollCreateActivity.java"


# instance fields
.field private addAnswer_OnClickListerer:Landroid/view/View$OnClickListener;

.field private answer_placeholder:Landroid/widget/LinearLayout;

.field private answers:Ljava/util/ArrayList;

.field private btn_add_answer:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_create_poll:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private cb_anonymous_voting:Landroid/widget/CheckBox;

.field private cb_limited_voting_time:Landroid/widget/CheckBox;

.field private cb_multiple_options:Landroid/widget/CheckBox;

.field private deleteClickListener:Landroid/view/View$OnClickListener;

.field private delete_answers:Ljava/util/ArrayList;

.field private edit_answers:Ljava/util/ArrayList;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private edit_mode:Z

.field private endDateClickListener:Landroid/view/View$OnClickListener;

.field private end_date:Ljava/lang/Long;

.field private et_answers:Ljava/util/ArrayList;

.field private et_question:Landroid/widget/EditText;

.field private fr_add_answer:Landroid/view/View;

.field private is_anonymous:Z

.field private is_multiple:Z

.field private limitedTimeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private ll:Landroid/widget/LinearLayout$LayoutParams;

.field private ll2:Landroid/widget/LinearLayout$LayoutParams;

.field private owner_id:J

.field private poll:Lcom/perm/kate/api/VkPoll;

.field private question:Ljava/lang/String;

.field private save:Z

.field private send_clickListener:Landroid/view/View$OnClickListener;

.field private tv_end_date:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/perm/kate/PollCreateActivity;->is_anonymous:Z

    .line 52
    iput-boolean v0, p0, Lcom/perm/kate/PollCreateActivity;->is_multiple:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answers:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->edit_answers:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->delete_answers:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/perm/kate/PollCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$1;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/perm/kate/PollCreateActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollCreateActivity$2;-><init>(Lcom/perm/kate/PollCreateActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    .line 160
    new-instance v0, Lcom/perm/kate/PollCreateActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollCreateActivity$3;-><init>(Lcom/perm/kate/PollCreateActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 192
    new-instance v0, Lcom/perm/kate/PollCreateActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$5;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 238
    new-instance v0, Lcom/perm/kate/PollCreateActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$9;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->addAnswer_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/perm/kate/PollCreateActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$10;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->deleteClickListener:Landroid/view/View$OnClickListener;

    .line 322
    new-instance v0, Lcom/perm/kate/PollCreateActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$11;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->limitedTimeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 358
    new-instance v0, Lcom/perm/kate/PollCreateActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$12;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->endDateClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/perm/kate/PollCreateActivity;->edit_mode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/api/VkPoll;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/PollCreateActivity;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/Long;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/perm/kate/PollCreateActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->delete_answers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/perm/kate/PollCreateActivity;->save:Z

    return p0
.end method

.method static synthetic access$200(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/perm/kate/PollCreateActivity;->is_anonymous:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->onConfirmCancel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/perm/kate/PollCreateActivity;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/perm/kate/PollCreateActivity;->is_anonymous:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->createAnswerEditText()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/PollCreateActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/perm/kate/PollCreateActivity;->deleteAnswerItem(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->tv_end_date:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->updateEndDate()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->showSelectDateActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->cb_anonymous_voting:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/perm/kate/PollCreateActivity;->is_multiple:Z

    return p0
.end method

.method static synthetic access$402(Lcom/perm/kate/PollCreateActivity;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/perm/kate/PollCreateActivity;->is_multiple:Z

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->cb_multiple_options:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->answers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->edit_answers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    return-object p0
.end method

.method private createAnswerEditText()V
    .locals 9

    .line 246
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->getAnswerEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->ll:Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/perm/kate/PollCreateActivity;->ll:Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-virtual {v1, v4, v7, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->ll:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->ll2:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 253
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4045000000000000L    # 42.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/perm/kate/PollCreateActivity;->ll2:Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->ll2:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->getHLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 258
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity;->deleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity;->ll:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity;->ll2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 264
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity;->answer_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->fr_add_answer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private deleteAnswerItem(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 295
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 298
    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity;->delete_answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answer_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->fr_add_answer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private displayData()V
    .locals 6

    .line 366
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v1, v1, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v0, v0, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 368
    invoke-static {v0}, Lcom/perm/kate/api/VkPoll;->getPollAnswers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 369
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->createAnswerEditText()V

    .line 371
    iget-object v3, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/VkPollAnswer;

    iget-object v4, v4, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/VkPollAnswer;

    iget-wide v4, v4, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cb_anonymous_voting:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v2, v2, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cb_anonymous_voting:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cb_multiple_options:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v2, v2, Lcom/perm/kate/api/VkPoll;->multiple:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 378
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cb_multiple_options:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v0, v0, Lcom/perm/kate/api/VkPoll;->end_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cb_limited_voting_time:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 381
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v0, v0, Lcom/perm/kate/api/VkPoll;->end_date:Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    .line 382
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->tv_end_date:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->updateEndDate()V

    :cond_1
    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .line 185
    new-instance v0, Lcom/perm/kate/PollCreateActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$4;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .line 230
    new-instance v0, Lcom/perm/kate/PollCreateActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$8;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAnswerEditText()Landroid/widget/EditText;
    .locals 3

    .line 274
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f011d

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    return-object v0
.end method

.method private getDeleteButton()Landroid/widget/ImageButton;
    .locals 6

    .line 307
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00ba

    .line 308
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08008a

    goto :goto_0

    :cond_0
    const v1, 0x7f08008b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 310
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    .line 311
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/4 v1, 0x0

    .line 312
    invoke-static {v1}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-object v0
.end method

.method private getHLinearLayout()Landroid/widget/LinearLayout;
    .locals 2

    .line 317
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private initEndDate()V
    .locals 6

    .line 336
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 338
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 339
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 340
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0xb

    .line 341
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    .line 342
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 343
    new-instance v5, Ljava/util/Date;

    add-int/lit16 v2, v2, -0x76c

    invoke-direct {v5, v2, v3, v1}, Ljava/util/Date;-><init>(III)V

    .line 344
    invoke-virtual {v5, v4}, Ljava/util/Date;->setHours(I)V

    .line 345
    invoke-virtual {v5, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 346
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    return-void
.end method

.method private onConfirmCancel()Z
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    const-string v1, ""

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 214
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    new-instance v3, Lcom/perm/kate/PollCreateActivity$7;

    invoke-direct {v3, p0}, Lcom/perm/kate/PollCreateActivity$7;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    .line 215
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    new-instance v3, Lcom/perm/kate/PollCreateActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/PollCreateActivity$6;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    .line 220
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showSelectDateActivity()V
    .locals 3

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    const-class v1, Lcom/perm/kate/PublishDateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    const-string v2, "com.perm.kate.publish_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0xb

    .line 393
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateEndDate()V
    .locals 6

    .line 350
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->initEndDate()V

    .line 353
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->tv_end_date:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    :try_start_0
    const-string p1, "publish_date"

    const-wide/16 v0, 0x0

    .line 401
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 403
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->end_date:Ljava/lang/Long;

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->updateEndDate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 408
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 63
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004c

    .line 64
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f03f7

    .line 65
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "save"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/PollCreateActivity;->save:Z

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "poll"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/VkPoll;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 69
    :cond_0
    iput-boolean v3, p0, Lcom/perm/kate/PollCreateActivity;->edit_mode:Z

    .line 70
    iget-wide v3, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    .line 71
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    :cond_1
    const p1, 0x7f090121

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    .line 74
    iget-boolean v0, p0, Lcom/perm/kate/PollCreateActivity;->edit_mode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0f02a6

    goto :goto_0

    :cond_2
    const v0, 0x7f0f01e0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 75
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->btn_cancel:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005e

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->btn_add_answer:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->addAnswer_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090138

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->fr_add_answer:Landroid/view/View;

    const p1, 0x7f090044

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->answer_placeholder:Landroid/widget/LinearLayout;

    const p1, 0x7f0900a8

    .line 82
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->cb_anonymous_voting:Landroid/widget/CheckBox;

    const p1, 0x7f0900af

    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->cb_multiple_options:Landroid/widget/CheckBox;

    const p1, 0x7f0900ae

    .line 84
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->cb_limited_voting_time:Landroid/widget/CheckBox;

    .line 85
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->limitedTimeCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090369

    .line 86
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->tv_end_date:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->endDateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 89
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 90
    iget-boolean p1, p0, Lcom/perm/kate/PollCreateActivity;->edit_mode:Z

    if-eqz p1, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->displayData()V

    goto :goto_1

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->createAnswerEditText()V

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->createAnswerEditText()V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 207
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
