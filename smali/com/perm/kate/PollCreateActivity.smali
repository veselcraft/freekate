.class public Lcom/perm/kate/PollCreateActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PollCreateActivity.java"


# instance fields
.field private addAnswer_OnClickListerer:Landroid/view/View$OnClickListener;

.field private answer:Ljava/lang/String;

.field private answer2:Ljava/lang/String;

.field private answer_placholder:Landroid/widget/LinearLayout;

.field private answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btn_add_answer:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_create_poll:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private ch_anonymous_voting:Landroid/widget/CheckBox;

.field private et_answer:Landroid/widget/EditText;

.field private et_answer2:Landroid/widget/EditText;

.field private et_answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private et_question:Landroid/widget/EditText;

.field private fr_add_answer:Landroid/view/View;

.field private is_anonymous:Z

.field private ll:Landroid/widget/LinearLayout$LayoutParams;

.field private owner_id:J

.field private question:Ljava/lang/String;

.field private send_clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/PollCreateActivity;->is_anonymous:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answers:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/perm/kate/PollCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$1;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/perm/kate/PollCreateActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PollCreateActivity$2;-><init>(Lcom/perm/kate/PollCreateActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 134
    new-instance v0, Lcom/perm/kate/PollCreateActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$4;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/perm/kate/PollCreateActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$8;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->addAnswer_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/PollCreateActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/PollCreateActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->onConfirmCancel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->getAnswerEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->ll:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/perm/kate/PollCreateActivity;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->ll:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answer_placholder:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/PollCreateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->fr_add_answer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->answer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/PollCreateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answer2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/perm/kate/PollCreateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity;->answer2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answer2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/PollCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/perm/kate/PollCreateActivity;->is_anonymous:Z

    return v0
.end method

.method static synthetic access$602(Lcom/perm/kate/PollCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/perm/kate/PollCreateActivity;->is_anonymous:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->ch_anonymous_voting:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/perm/kate/PollCreateActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$3;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/perm/kate/PollCreateActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PollCreateActivity$7;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method private getAnswerEditText()Landroid/widget/EditText;
    .locals 4

    .prologue
    .line 198
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "et":Landroid/widget/EditText;
    const v2, 0x7f0700d1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 200
    invoke-virtual {p0}, Lcom/perm/kate/PollCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 201
    .local v0, "dp":I
    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 202
    return-object v1
.end method

.method private onConfirmCancel()Z
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->question:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f07044c

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/PollCreateActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/PollCreateActivity$6;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    new-instance v3, Lcom/perm/kate/PollCreateActivity$5;

    invoke-direct {v3, p0}, Lcom/perm/kate/PollCreateActivity$5;-><init>(Lcom/perm/kate/PollCreateActivity;)V

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 166
    const/4 v1, 0x1

    .line 168
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f070387

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->setHeaderTitle(I)V

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/PollCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    .line 48
    iget-wide v0, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PollCreateActivity;->owner_id:J

    .line 50
    :cond_0
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0e00f3

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answer:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_answer2:Landroid/widget/EditText;

    .line 53
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 55
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_create_poll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_cancel:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_add_answer:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->btn_add_answer:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity;->addAnswer_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->fr_add_answer:Landroid/view/View;

    .line 61
    const v0, 0x7f0e00f5

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->answer_placholder:Landroid/widget/LinearLayout;

    .line 62
    const v0, 0x7f0e00f7

    invoke-virtual {p0, v0}, Lcom/perm/kate/PollCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/perm/kate/PollCreateActivity;->ch_anonymous_voting:Landroid/widget/CheckBox;

    .line 63
    iget-object v0, p0, Lcom/perm/kate/PollCreateActivity;->et_question:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/PollCreateActivity;->setButtonsBg()V

    .line 65
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 144
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/perm/kate/PollCreateActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
