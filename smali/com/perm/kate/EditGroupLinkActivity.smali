.class public Lcom/perm/kate/EditGroupLinkActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditGroupLinkActivity.java"


# instance fields
.field private add_callback:Lcom/perm/kate/session/Callback;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private ed_link:Landroid/widget/EditText;

.field private ed_name:Landroid/widget/EditText;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private link:Lcom/perm/kate/api/Link;

.field private saveClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupLinkActivity$1;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditGroupLinkActivity$3;-><init>(Lcom/perm/kate/EditGroupLinkActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    .line 108
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditGroupLinkActivity$5;-><init>(Lcom/perm/kate/EditGroupLinkActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->add_callback:Lcom/perm/kate/session/Callback;

    .line 127
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupLinkActivity$6;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/api/Link;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/EditGroupLinkActivity;Lcom/perm/kate/api/Link;)Lcom/perm/kate/api/Link;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->save()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->createLink()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/EditGroupLinkActivity;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/EditGroupLinkActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->enableButtonsInUiThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->successInUiThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/perm/kate/EditGroupLinkActivity;->add_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditGroupLinkActivity;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/EditGroupLinkActivity;->disableButtons(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->finishWithResultOk()V

    return-void
.end method

.method private createLink()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    const-string v1, "http://"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 98
    invoke-direct {p0, v2}, Lcom/perm/kate/EditGroupLinkActivity;->disableButtons(Z)V

    .line 99
    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 100
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/perm/kate/EditGroupLinkActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/perm/kate/EditGroupLinkActivity$4;-><init>(Lcom/perm/kate/EditGroupLinkActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private disableButtons(Z)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_save:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_cancel:Landroid/widget/Button;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private enableButtonsInUiThread()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupLinkActivity$7;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishWithResultOk()V
    .locals 3

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    const-string v2, "link"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 167
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private save()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->disableButtons(Z)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditGroupLinkActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditGroupLinkActivity$2;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private successInUiThread()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupLinkActivity$8;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006d

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->group_id:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.link"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Link;

    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    if-eqz p1, :cond_1

    const p1, 0x7f0f00d1

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0365

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090104

    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    const p1, 0x7f090102

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 36
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_save:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_cancel:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    if-eqz p1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    iget-object v0, v0, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return-void
.end method
