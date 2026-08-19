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

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/perm/kate/NewNoteActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$1;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lcom/perm/kate/NewNoteActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewNoteActivity$2;-><init>(Lcom/perm/kate/NewNoteActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 100
    new-instance v0, Lcom/perm/kate/NewNoteActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$4;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewNoteActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/EditText;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/EditText;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewNoteActivity;->tb_title:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/Button;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewNoteActivity;->btn_save:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->finishOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewNoteActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/NewNoteActivity;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->onConfirmCancel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewNoteActivity;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/NewNoteActivity;->counter:Landroid/widget/TextView;

    return-object p0
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .line 93
    new-instance v0, Lcom/perm/kate/NewNoteActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$3;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishOnUiThread()V
    .locals 1

    .line 138
    new-instance v0, Lcom/perm/kate/NewNoteActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$7;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConfirmCancel()Z
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 122
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    new-instance v3, Lcom/perm/kate/NewNoteActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewNoteActivity$6;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    .line 123
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    new-instance v3, Lcom/perm/kate/NewNoteActivity$5;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewNoteActivity$5;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    .line 128
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 131
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
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00cb

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0506

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090329

    .line 36
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity;->tb_text:Landroid/widget/EditText;

    .line 37
    new-instance v0, Lcom/perm/kate/NewNoteActivity$TextChangedListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewNoteActivity$TextChangedListener;-><init>(Lcom/perm/kate/NewNoteActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f09033a

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity;->tb_title:Landroid/widget/EditText;

    const p1, 0x7f0900df

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity;->counter:Landroid/widget/TextView;

    const p1, 0x7f090090

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity;->btn_save:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity;->btn_cancel:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity;->tb_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/perm/kate/NewNoteActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
