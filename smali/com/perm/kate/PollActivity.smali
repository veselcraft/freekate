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

.field private ll_content_placeholder:Landroid/widget/LinearLayout;

.field private owner_id:J

.field poll:Lcom/perm/kate/api/VkPoll;

.field private poll_id:J

.field private topic_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 104
    new-instance v0, Lcom/perm/kate/PollActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollActivity$2;-><init>(Lcom/perm/kate/PollActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 235
    new-instance v0, Lcom/perm/kate/PollActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollActivity$9;-><init>(Lcom/perm/kate/PollActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->callback2:Lcom/perm/kate/session/Callback;

    .line 249
    new-instance v0, Lcom/perm/kate/PollActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$10;-><init>(Lcom/perm/kate/PollActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->answerClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PollActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PollActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PollActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PollActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PollActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PollActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/PollActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;
    .param p1, "x1"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PollActivity;->addVoteInThread(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PollActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/PollActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PollActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/perm/kate/PollActivity;->topic_id:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/perm/kate/PollActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    return-void
.end method

.method private addVoteInThread(J)V
    .locals 1
    .param p1, "answer_id"    # J

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->showProgressBar(Z)V

    .line 227
    new-instance v0, Lcom/perm/kate/PollActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/PollActivity$8;-><init>(Lcom/perm/kate/PollActivity;J)V

    .line 232
    invoke-virtual {v0}, Lcom/perm/kate/PollActivity$8;->start()V

    .line 233
    return-void
.end method

.method private displayData()V
    .locals 10

    .prologue
    .line 80
    :try_start_0
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    if-nez v5, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const v5, 0x7f0e02ab

    invoke-virtual {p0, v5}, Lcom/perm/kate/PollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 83
    .local v4, "tv_poll_question":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v5, v5, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v5, 0x7f0e02ac

    invoke-virtual {p0, v5}, Lcom/perm/kate/PollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    .local v0, "anonymous_text":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v5, v5, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    if-eqz v5, :cond_3

    const v5, 0x7f070132

    :goto_1
    invoke-virtual {p0, v5}, Lcom/perm/kate/PollActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "details_text":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v6, v6, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-direct {p0, v6}, Lcom/perm/kate/PollActivity;->getTotalVotesString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v5, v5, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v5, v5, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    invoke-static {v5}, Lcom/perm/kate/api/VkPoll;->getPollAnswers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/VkPollAnswer;>;"
    if-eqz v1, :cond_0

    .line 91
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v5, v5, Lcom/perm/kate/api/VkPoll;->answer_id:Ljava/lang/Long;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v5, v5, Lcom/perm/kate/api/VkPoll;->answer_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 92
    :cond_2
    invoke-direct {p0, v1}, Lcom/perm/kate/PollActivity;->generateRadioButtons(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "anonymous_text":Landroid/widget/TextView;
    .end local v1    # "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/VkPollAnswer;>;"
    .end local v2    # "details_text":Ljava/lang/String;
    .end local v4    # "tv_poll_question":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {p0}, Lcom/perm/kate/PollActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "anonymous_text":Landroid/widget/TextView;
    .restart local v4    # "tv_poll_question":Landroid/widget/TextView;
    :cond_3
    const v5, 0x7f070201

    goto :goto_1

    .line 94
    .restart local v1    # "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/VkPollAnswer;>;"
    .restart local v2    # "details_text":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v5, v5, Lcom/perm/kate/api/VkPoll;->answer_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v5, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-boolean v5, v5, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    invoke-direct {p0, v1, v6, v7, v5}, Lcom/perm/kate/PollActivity;->generateProgressBars(Ljava/util/ArrayList;JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private displayDataOnUiThread()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/perm/kate/PollActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$3;-><init>(Lcom/perm/kate/PollActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/perm/kate/PollActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$4;-><init>(Lcom/perm/kate/PollActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method private generateProgressBars(Ljava/util/ArrayList;JZ)V
    .locals 18
    .param p2, "answer_id"    # J
    .param p4, "anonymous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/VkPollAnswer;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/VkPollAnswer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 174
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v7, "params2":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v8, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 177
    .local v8, "params3":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const-wide v14, 0x4052c00000000000L    # 75.0

    invoke-static {v14, v15}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v13

    const/4 v14, -0x2

    invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v9, "params4":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v14, v15}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v13

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-static {v14, v15}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v14

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v14, v15}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v13

    const/4 v14, 0x0

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    invoke-static/range {v16 .. v17}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    const/4 v13, 0x0

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-static {v14, v15}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v14, v15}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/VkPollAnswer;

    .line 183
    .local v4, "a":Lcom/perm/kate/api/VkPollAnswer;
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v11, "tv":Landroid/widget/TextView;
    iget-object v14, v4, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .local v5, "ll":Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    new-instance v10, Landroid/widget/ProgressBar;

    const/4 v14, 0x0

    const v15, 0x1010078

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14, v15}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    .local v10, "pb":Landroid/widget/ProgressBar;
    const/16 v14, 0x64

    invoke-virtual {v10, v14}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 190
    iget v14, v4, Lcom/perm/kate/api/VkPollAnswer;->rate:I

    invoke-virtual {v10, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 191
    invoke-virtual {v5, v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 193
    .local v12, "tv2":Landroid/widget/TextView;
    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v4, Lcom/perm/kate/api/VkPollAnswer;->rate:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "% ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/perm/kate/api/VkPollAnswer;->votes:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v5, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    if-nez p4, :cond_0

    .line 198
    iget-wide v14, v4, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 199
    const v14, 0x7f0e0080

    iget-object v15, v4, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/PollActivity;->answerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 203
    .end local v4    # "a":Lcom/perm/kate/api/VkPollAnswer;
    .end local v5    # "ll":Landroid/widget/LinearLayout;
    .end local v10    # "pb":Landroid/widget/ProgressBar;
    .end local v11    # "tv":Landroid/widget/TextView;
    .end local v12    # "tv2":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v14, 0x7f070242

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    new-instance v14, Lcom/perm/kate/PollActivity$6;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v14, v0, v1, v2}, Lcom/perm/kate/PollActivity$6;-><init>(Lcom/perm/kate/PollActivity;J)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void
.end method

.method private generateRadioButtons(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/VkPollAnswer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/VkPollAnswer;>;"
    const/4 v9, 0x1

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const/4 v8, 0x0

    .line 138
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 139
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 141
    new-instance v4, Landroid/widget/RadioGroup;

    invoke-direct {v4, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 142
    .local v4, "rg":Landroid/widget/RadioGroup;
    invoke-virtual {v4, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 143
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/perm/kate/PollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 144
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/VkPollAnswer;

    .line 148
    .local v0, "a":Lcom/perm/kate/api/VkPollAnswer;
    const v6, 0x7f0300ec

    invoke-virtual {v1, v6, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 149
    .local v3, "rb":Landroid/widget/RadioButton;
    iget-object v6, v0, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-wide v6, v0, Lcom/perm/kate/api/VkPollAnswer;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v4, v3, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 153
    .end local v0    # "a":Lcom/perm/kate/api/VkPollAnswer;
    .end local v3    # "rb":Landroid/widget/RadioButton;
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v6, 0x7f0702a2

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v5, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    new-instance v6, Lcom/perm/kate/PollActivity$5;

    invoke-direct {v6, p0, v4}, Lcom/perm/kate/PollActivity$5;-><init>(Lcom/perm/kate/PollActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method private getTotalVotesString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .param p1, "votes"    # Ljava/lang/Long;

    .prologue
    .line 265
    const-string v2, ""

    .line 266
    .local v2, "res":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 267
    const v0, 0x7f0702a3

    .line 268
    .local v0, "id_votes_string":I
    iget-object v3, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v3, v3, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 269
    .local v1, "mod":I
    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    const/16 v3, 0x14

    if-gt v1, v3, :cond_2

    .line 270
    const v0, 0x7f0702a3

    .line 278
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v4, v4, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .end local v0    # "id_votes_string":I
    .end local v1    # "mod":I
    :cond_1
    return-object v2

    .line 272
    .restart local v0    # "id_votes_string":I
    .restart local v1    # "mod":I
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    iget-object v3, v3, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 273
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 274
    const v0, 0x7f0702a4

    goto :goto_0

    .line 275
    :cond_3
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    .line 276
    const v0, 0x7f0702a5

    goto :goto_0
.end method

.method private refresh()V
    .locals 10

    .prologue
    .line 74
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    iget-wide v6, p0, Lcom/perm/kate/PollActivity;->topic_id:J

    iget-object v8, p0, Lcom/perm/kate/PollActivity;->callback:Lcom/perm/kate/session/Callback;

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->getPoll(JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->showProgressBar(Z)V

    .line 65
    new-instance v0, Lcom/perm/kate/PollActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollActivity$1;-><init>(Lcom/perm/kate/PollActivity;)V

    .line 70
    invoke-virtual {v0}, Lcom/perm/kate/PollActivity$1;->start()V

    .line 71
    return-void
.end method


# virtual methods
.method protected deleteVoteInThread(J)V
    .locals 1
    .param p1, "answer_id"    # J

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->showProgressBar(Z)V

    .line 217
    new-instance v0, Lcom/perm/kate/PollActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/PollActivity$7;-><init>(Lcom/perm/kate/PollActivity;J)V

    .line 222
    invoke-virtual {v0}, Lcom/perm/kate/PollActivity$7;->start()V

    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0300de

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f070387

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->setHeaderTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/PollActivity;->setupRefreshButton()V

    .line 43
    const v0, 0x7f0e02ad

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->ll_content_placeholder:Landroid/widget/LinearLayout;

    .line 44
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/perm/kate/PollActivity;->btn_vote:Landroid/widget/Button;

    const v1, 0x7f0702a2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->fl_vote:Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/PollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.poll_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/PollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollActivity;->owner_id:J

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/PollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.topic_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollActivity;->topic_id:J

    .line 50
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollActivity;->account_id:J

    .line 52
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/PollActivity;->poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/PollActivity;->account_id:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PollActivity;->poll:Lcom/perm/kate/api/VkPoll;

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->displayData()V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    .line 56
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/perm/kate/PollActivity;->refreshInThread()V

    .line 61
    return-void
.end method
