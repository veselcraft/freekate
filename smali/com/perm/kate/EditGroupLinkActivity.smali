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

    .prologue
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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    return-object v0
.end method

.method static synthetic access$002(Lcom/perm/kate/EditGroupLinkActivity;Lcom/perm/kate/api/Link;)Lcom/perm/kate/api/Link;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Link;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->save()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->createLink()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/EditGroupLinkActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->enableButtonsInUiThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->successInUiThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->add_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/EditGroupLinkActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/EditGroupLinkActivity;->disableButtons(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditGroupLinkActivity;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/EditGroupLinkActivity;->finishWithResultOk()V

    return-void
.end method

.method private createLink()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 89
    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "web_address":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 106
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_1
    move-object v0, v2

    .line 97
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/perm/kate/EditGroupLinkActivity;->disableButtons(Z)V

    .line 99
    invoke-virtual {p0, v5}, Lcom/perm/kate/EditGroupLinkActivity;->showProgressBar(Z)V

    .line 100
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/perm/kate/EditGroupLinkActivity$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/perm/kate/EditGroupLinkActivity$4;-><init>(Lcom/perm/kate/EditGroupLinkActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private disableButtons(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    if-nez v0, :cond_0

    .line 137
    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_save:Landroid/widget/Button;

    if-nez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_cancel:Landroid/widget/Button;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    return-void

    :cond_1
    move v0, v2

    .line 135
    goto :goto_0

    :cond_2
    move v0, v2

    .line 137
    goto :goto_1

    :cond_3
    move v0, v2

    .line 138
    goto :goto_2

    :cond_4
    move v1, v2

    .line 139
    goto :goto_3
.end method

.method private enableButtonsInUiThread()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupLinkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupLinkActivity$7;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private finishWithResultOk()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "link"

    iget-object v2, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/EditGroupLinkActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupLinkActivity;->finish()V

    .line 169
    return-void
.end method

.method private save()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    .line 60
    invoke-direct {p0, v2}, Lcom/perm/kate/EditGroupLinkActivity;->disableButtons(Z)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/perm/kate/EditGroupLinkActivity;->showProgressBar(Z)V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/EditGroupLinkActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/EditGroupLinkActivity$2;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method private successInUiThread()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupLinkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/perm/kate/EditGroupLinkActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditGroupLinkActivity$8;-><init>(Lcom/perm/kate/EditGroupLinkActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->group_id:J

    .line 28
    iget-wide v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->group_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupLinkActivity;->finish()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/EditGroupLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Link;

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    .line 33
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    if-eqz v0, :cond_2

    const v0, 0x7f070099

    :goto_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->setHeaderTitle(I)V

    .line 34
    const v0, 0x7f0e014c

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0e014d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_save:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditGroupLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_cancel:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    iget-object v1, v1, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity;->link:Lcom/perm/kate/api/Link;

    iget-object v1, v1, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_link:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 33
    :cond_2
    const v0, 0x7f070303

    goto :goto_1
.end method
