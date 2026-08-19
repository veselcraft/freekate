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
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/StatusActivity;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/perm/kate/StatusActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/StatusActivity;->status:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/StatusActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->status:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/StatusActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/StatusActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 2

    .line 161
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 163
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 164
    iget-object p1, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 165
    iget-object v1, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 166
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c011b

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f023d

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090326

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    const p1, 0x7f090096

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->btn_status_save:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090036

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->add_smile:Landroid/widget/ImageButton;

    const p1, 0x7f090095

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->btn_status_clear:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/StatusActivity;->user_id:J

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    :cond_0
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 48
    new-instance p1, Lcom/perm/kate/StatusActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/StatusActivity$1;-><init>(Lcom/perm/kate/StatusActivity;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 54
    iget-object p1, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_1

    .line 55
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v0, p0, Lcom/perm/kate/StatusActivity;->user_id:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 64
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 68
    :cond_3
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p1}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 69
    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->add_smile:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1, p0, v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V

    .line 70
    iget-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, p0, Lcom/perm/kate/StatusActivity;->tb_status:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    return-void
.end method
