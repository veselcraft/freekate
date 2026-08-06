.class public Lcom/perm/kate/NewNoteActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/NewNoteActivity$TextChangedListener;
    }
.end annotation


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field callback:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private counter:Landroid/widget/TextView;

.field private send_clickListener:Landroid/view/View$OnClickListener;

.field private tb_text:Landroid/widget/EditText;

.field private tb_title:Landroid/widget/EditText;

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/perm/kate/NewNoteActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$1;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/perm/kate/NewNoteActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewNoteActivity$2;-><init>(Lcom/perm/kate/NewNoteActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 99
    new-instance v0, Lcom/perm/kate/NewNoteActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$4;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_title:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->btn_save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/NewNoteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->onConfirmCancel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewNoteActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->counter:Landroid/widget/TextView;

    return-object v0
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/perm/kate/NewNoteActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$3;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/perm/kate/NewNoteActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$7;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method private onConfirmCancel()Z
    .locals 5

    .prologue
    .line 118
    iget-object v2, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/NewNoteActivity$6;

    invoke-direct {v4, p0}, Lcom/perm/kate/NewNoteActivity$6;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    new-instance v4, Lcom/perm/kate/NewNoteActivity$5;

    invoke-direct {v4, p0}, Lcom/perm/kate/NewNoteActivity$5;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    .line 127
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 131
    const/4 v2, 0x1

    .line 133
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0300b8

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f070477

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->setHeaderTitle(I)V

    .line 35
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    new-instance v1, Lcom/perm/kate/NewNoteActivity$TextChangedListener;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewNoteActivity$TextChangedListener;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_title:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0e0264

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->counter:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->btn_save:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/NewNoteActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->btn_cancel:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/NewNoteActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
