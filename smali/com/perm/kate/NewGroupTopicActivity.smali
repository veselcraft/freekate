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

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
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
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewGroupTopicActivity;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewGroupTopicActivity;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewGroupTopicActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/NewGroupTopicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/EditText;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_title:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/NewGroupTopicActivity;)Landroid/widget/Button;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_save:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewGroupTopicActivity;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewGroupTopicActivity;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/perm/kate/NewGroupTopicActivity;->from_group:Z

    return p0
.end method

.method static synthetic access$602(Lcom/perm/kate/NewGroupTopicActivity;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->from_group:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0f0209

    .line 164
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 165
    new-instance v1, Lcom/perm/kate/NewGroupTopicActivity$8;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewGroupTopicActivity$8;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 172
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 173
    invoke-virtual {v2, v0, v3, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0512

    .line 174
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0398

    .line 175
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 176
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .line 99
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$3;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .line 136
    new-instance v0, Lcom/perm/kate/NewGroupTopicActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewGroupTopicActivity$6;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConfirmCancel()Z
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 110
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    new-instance v3, Lcom/perm/kate/NewGroupTopicActivity$5;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewGroupTopicActivity$5;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 111
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    new-instance v3, Lcom/perm/kate/NewGroupTopicActivity$4;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewGroupTopicActivity$4;-><init>(Lcom/perm/kate/NewGroupTopicActivity;)V

    .line 116
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00cc

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f00b4

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09033a

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_title:Landroid/widget/EditText;

    const p1, 0x7f090329

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_text:Landroid/widget/EditText;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->group_id:J

    const p1, 0x7f090090

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_save:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090092

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_settings:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->btn_settings:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/perm/kate/NewGroupTopicActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
