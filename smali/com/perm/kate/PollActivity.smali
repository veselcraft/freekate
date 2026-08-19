.class public Lcom/perm/kate/PollActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PollActivity.java"


# instance fields
.field private account_id:J

.field private answerClickListener:Landroid/view/View$OnClickListener;

.field private btn_vote:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field callback2:Lcom/perm/kate/session/Callback;

.field private fl_vote:Landroid/view/View;

.field private is_board:Z

.field private ll_content_placeholder:Landroid/widget/LinearLayout;

.field private owner_id:J

.field poll:Lcom/perm/kate/api/VkPoll;

.field private poll_id:J

.field show_results:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/perm/kate/PollActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollActivity$2;-><init>(Lcom/perm/kate/PollActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 299
    new-instance v0, Lcom/perm/kate/PollActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollActivity$10;-><init>(Lcom/perm/kate/PollActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->callback2:Lcom/perm/kate/session/Callback;

    .line 313
    new-instance v0, Lcom/perm/kate/PollActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$11;-><init>(Lcom/perm/kate/PollActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->answerClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/perm/kate/PollActivity;->show_results:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PollActivity;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PollActivity;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/PollActivity;->addVoteInThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PollActivity;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/PollActivity;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PollActivity;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/perm/kate/PollActivity;->is_board:Z

    return p0
.end method

.method static synthetic access$900(Lcom/perm/kate/PollActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    return-void
.end method

.method private addVoteInThread(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 291
    new-instance v0, Lcom/perm/kate/PollActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PollActivity$9;-><init>(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09039c

    .line 88
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v1, v1, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09039b

    .line 90
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v1, v1, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f01a0

    goto :goto_0

    :cond_1
    const v1, 0x7f0f025b

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v1, v1, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/perm/kate/PollActivity;->getTotalVotesString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v0, v0, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 95
    invoke-static {v0}, Lcom/perm/kate/api/VkPoll;->getPollAnswers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v1, v1, Lcom/perm/kate/api/VkPoll;->answer_ids_json:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/api/VkPoll;->getAnswerIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v3, v2, Lcom/perm/kate/api/VkPoll;->can_vote:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/perm/kate/PollActivity;->show_results:Z

    if-nez v3, :cond_3

    .line 100
    iget-boolean v1, v2, Lcom/perm/kate/api/VkPoll;->multiple:Z

    if-eqz v1, :cond_2

    .line 101
    invoke-direct {p0, v0}, Lcom/perm/kate/PollActivity;->generateCheckBoxes(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 103
    :cond_2
    invoke-direct {p0, v0}, Lcom/perm/kate/PollActivity;->generateRadioButtons(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v2, v2, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/PollActivity;->generateProgressBars(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private displayDataOnUiThread()V
    .locals 1

    .line 132
    new-instance v0, Lcom/perm/kate/PollActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$3;-><init>(Lcom/perm/kate/PollActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .line 141
    new-instance v0, Lcom/perm/kate/PollActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$4;-><init>(Lcom/perm/kate/PollActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private generateCheckBoxes(Ljava/util/ArrayList;)V
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 193
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 195
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/VkPollAnswer;

    .line 198
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 199
    iget-object v5, v3, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-wide v5, v3, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 201
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->getCheckBoxBg()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 202
    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v0, 0x7f0f02f8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 208
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    new-instance v0, Lcom/perm/kate/PollActivity$6;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/PollActivity$6;-><init>(Lcom/perm/kate/PollActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private generateProgressBars(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 228
    iget-object v2, v0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 232
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v7, 0x4052c00000000000L    # 75.0

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 233
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    invoke-static {v9, v10}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v11

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v11

    invoke-virtual {v5, v4, v13, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 235
    invoke-static {v9, v10}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-virtual {v6, v13, v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 236
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-virtual {v3, v4, v13, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/VkPollAnswer;

    .line 238
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 239
    iget-object v10, v7, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v10, v0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    new-instance v11, Landroid/widget/ProgressBar;

    const v12, 0x1010078

    const/4 v14, 0x0

    invoke-direct {v11, v0, v14, v12}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v12, 0x64

    .line 244
    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 245
    iget v12, v7, Lcom/perm/kate/api/VkPollAnswer;->rate:I

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 246
    invoke-virtual {v10, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x5

    .line 248
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 249
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v7, Lcom/perm/kate/api/VkPollAnswer;->rate:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "% ("

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v7, Lcom/perm/kate/api/VkPollAnswer;->votes:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v10, v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v12, v0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v12, v9

    if-nez p3, :cond_1

    .line 253
    iget-wide v8, v7, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v8, 0x7f090329

    .line 254
    iget-object v9, v7, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v10, v8, v9}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 255
    iget-object v8, v0, Lcom/perm/kate/PollActivity;->answerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_1
    iget-wide v7, v7, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v12

    const/4 v8, 0x1

    .line 258
    invoke-virtual {v7, v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 259
    invoke-virtual {v11, v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x1

    .line 262
    iget-object v2, v0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v2, v2, Lcom/perm/kate/api/VkPoll;->can_vote:Z

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, v0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v2, v0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v3, 0x7f0f029c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 266
    iget-object v2, v0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    new-instance v3, Lcom/perm/kate/PollActivity$7;

    invoke-direct {v3, v0, v1}, Lcom/perm/kate/PollActivity$7;-><init>(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 276
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private generateRadioButtons(Ljava/util/ArrayList;)V
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 151
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    const-string v3, "layout_inflater"

    .line 154
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/VkPollAnswer;

    const v6, 0x7f0c0108

    .line 159
    invoke-virtual {v3, v6, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 160
    iget-object v6, v4, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-wide v6, v4, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->getCheckBoxBg()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 163
    invoke-virtual {v1, v5, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v0, 0x7f0f02f8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 169
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    new-instance v0, Lcom/perm/kate/PollActivity$5;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/PollActivity$5;-><init>(Lcom/perm/kate/PollActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getCheckBoxBg()I
    .locals 1

    .line 187
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080147

    goto :goto_0

    :cond_0
    const v0, 0x7f080148

    :goto_0
    return v0
.end method

.method private getTotalVotesString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_3

    .line 332
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object p1, p1, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    long-to-int p1, v0

    const/4 v0, 0x5

    const v1, 0x7f0f02f9

    if-lt p1, v0, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object p1, p1, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    rem-long/2addr v2, v4

    long-to-int p1, v2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v1, 0x7f0f02fa

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    const v1, 0x7f0f02fb

    .line 342
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v0, v0, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private refresh()V
    .locals 8

    .line 80
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    iget-wide v3, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    iget-boolean v5, p0, Lcom/perm/kate/PollActivity;->is_board:Z

    iget-object v6, p0, Lcom/perm/kate/PollActivity;->callback:Lcom/perm/kate/session/Callback;

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPoll(JJZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 71
    new-instance v0, Lcom/perm/kate/PollActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$1;-><init>(Lcom/perm/kate/PollActivity;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showEditActivity()V
    .locals 4

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PollCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    iget-wide v1, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "save"

    const/4 v2, 0x1

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    const-string v2, "poll"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 390
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected deleteVoteInThread(J)V
    .locals 1

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 281
    new-instance v0, Lcom/perm/kate/PollActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/PollActivity$8;-><init>(Lcom/perm/kate/PollActivity;J)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    const v3, 0x7f0f0448

    .line 360
    invoke-interface {p1, v2, v1, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/perm/kate/api/VkPoll;->can_edit:Z

    if-eqz v3, :cond_1

    iget-boolean v0, v0, Lcom/perm/kate/api/VkPoll;->is_board:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/16 v3, 0x1f9

    const v4, 0x7f0f01ec

    .line 363
    invoke-interface {p1, v2, v0, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 395
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xa

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 44
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00f9

    .line 45
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f03f7

    .line 46
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f0901ce

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    const p1, 0x7f090090

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v0, 0x7f0f02f8

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    const p1, 0x7f09014c

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.poll_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_board"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/PollActivity;->is_board:Z

    .line 56
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollActivity;->account_id:J

    .line 58
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    .line 59
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayData()V

    .line 61
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 350
    invoke-virtual {p0, p1}, Lcom/perm/kate/PollActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 372
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 381
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->showEditActivity()V

    return v1

    .line 374
    :cond_1
    iget-boolean p1, p0, Lcom/perm/kate/PollActivity;->show_results:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/perm/kate/PollActivity;->show_results:Z

    .line 375
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayData()V

    return v1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    return-void
.end method
