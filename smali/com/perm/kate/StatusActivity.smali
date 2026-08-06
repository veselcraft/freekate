.class public Lcom/perm/kate/StatusActivity;
.super Lcom/perm/kate/BaseActivity;
.source "StatusActivity.java"


# instance fields
.field private add_smile:Landroid/widget/ImageButton;

.field private btn_status_clear:Landroid/widget/Button;

.field private btn_status_save:Landroid/widget/Button;

.field callback:Lcom/perm/kate/session/Callback;

.field callback_save:Lcom/perm/kate/session/Callback;

.field private clear_OnClickListerer:Landroid/view/View$OnClickListener;

.field private group_id:Ljava/lang/Long;

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private status:Ljava/lang/String;

.field private tb_status:Landroid/widget/EditText;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/perm/kate/StatusActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/StatusActivity$2;-><init>(Lcom/perm/kate/StatusActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/StatusActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 101
    new-instance v0, Lcom/perm/kate/StatusActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatusActivity$3;-><init>(Lcom/perm/kate/StatusActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatusActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/perm/kate/StatusActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/StatusActivity$4;-><init>(Lcom/perm/kate/StatusActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/StatusActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 141
    new-instance v0, Lcom/perm/kate/StatusActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatusActivity$5;-><init>(Lcom/perm/kate/StatusActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatusActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/perm/kate/StatusActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatusActivity$6;-><init>(Lcom/perm/kate/StatusActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatusActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/StatusActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/StatusActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/StatusActivity;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/perm/kate/StatusActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/StatusActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/StatusActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->status:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/StatusActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatusActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/StatusActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/StatusActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/StatusActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 4
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 164
    iget-object v3, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 165
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 166
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 167
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v5, 0x7f0300ff

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->setContentView(I)V

    .line 36
    const v5, 0x7f0701e2

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->setHeaderTitle(I)V

    .line 37
    const v5, 0x7f0e0333

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    .line 38
    const v5, 0x7f0e0335

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/perm/kate/StatusActivity;->btn_status_save:Landroid/widget/Button;

    .line 39
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->btn_status_save:Landroid/widget/Button;

    iget-object v6, p0, Lcom/perm/kate/StatusActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v5, 0x7f0e025b

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/perm/kate/StatusActivity;->add_smile:Landroid/widget/ImageButton;

    .line 41
    const v5, 0x7f0e0334

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/perm/kate/StatusActivity;->btn_status_clear:Landroid/widget/Button;

    .line 42
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->btn_status_clear:Landroid/widget/Button;

    iget-object v6, p0, Lcom/perm/kate/StatusActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/StatusActivity;->user_id:J

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.group_id"

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 45
    .local v0, "_group_id":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    .line 47
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/perm/kate/StatusActivity;->showProgressBar(Z)V

    .line 48
    new-instance v5, Lcom/perm/kate/StatusActivity$1;

    invoke-direct {v5, p0}, Lcom/perm/kate/StatusActivity$1;-><init>(Lcom/perm/kate/StatusActivity;)V

    .line 53
    invoke-virtual {v5}, Lcom/perm/kate/StatusActivity$1;->start()V

    .line 54
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 55
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v6, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v2

    .line 56
    .local v2, "group":Lcom/perm/kate/api/Group;
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 57
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    iget-object v6, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .end local v2    # "group":Lcom/perm/kate/api/Group;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 64
    .local v3, "text":Landroid/text/Editable;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 65
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v3, v6}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 68
    :cond_2
    new-instance v5, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v5}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/StatusActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 69
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v6, p0, Lcom/perm/kate/StatusActivity;->add_smile:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/StatusActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v5, p0, v6, v7}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V

    .line 70
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v6, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 71
    return-void

    .line 59
    .end local v3    # "text":Landroid/text/Editable;
    :cond_3
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, p0, Lcom/perm/kate/StatusActivity;->user_id:J

    invoke-virtual {v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v4

    .line 60
    .local v4, "user":Lcom/perm/kate/api/User;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 61
    iget-object v5, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    iget-object v6, v4, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
