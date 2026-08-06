.class public Lcom/perm/kate/NewGroupTopicActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewGroupTopicActivity.java"


# instance fields
.field private btn_save:Landroid/widget/Button;

.field private btn_settings:Landroid/widget/ImageButton;

.field callback:Lcom/perm/kate/session/Callback;

.field private from_group:Z

.field private group_id:J

.field private send_clickListener:Landroid/view/View$OnClickListener;

.field private settings_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tb_text:Landroid/widget/EditText;

.field private tb_title:Landroid/widget/EditText;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->from_group:Z

    .line 48
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$1;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewGroupTopicActivity$2;-><init>(Lcom/perm/kate/NewGroupTopicActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 144
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$7;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_title:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewGroupTopicActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewGroupTopicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->from_group:Z

    return v0
.end method

.method static synthetic access$602(Lcom/perm/kate/NewGroupTopicActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->from_group:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 163
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 164
    .local v0, "items":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    const v4, 0x7f0701ad

    invoke-virtual {p0, v4}, Lcom/perm/kate/NewGroupTopicActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3

    .line 165
    new-instance v1, Lcom/perm/kate/NewGroupTopicActivity$8;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewGroupTopicActivity$8;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 172
    .local v1, "save_listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v3, v0, v5, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070483

    .line 174
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070334

    .line 175
    invoke-virtual {v3, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07015d

    .line 176
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 177
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$3;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$6;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method private onConfirmCancel()Z
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/NewGroupTopicActivity$5;

    invoke-direct {v4, p0}, Lcom/perm/kate/NewGroupTopicActivity$5;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    new-instance v4, Lcom/perm/kate/NewGroupTopicActivity$4;

    invoke-direct {v4, p0}, Lcom/perm/kate/NewGroupTopicActivity$4;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 120
    const/4 v2, 0x1

    .line 122
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0300b9

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->setHeaderTitle(I)V

    .line 37
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_title:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_text:Landroid/widget/EditText;

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/NewGroupTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->group_id:J

    .line 40
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_save:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f0e019e

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewGroupTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_settings:Landroid/widget/ImageButton;

    .line 43
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_settings:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_settings:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 46
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
