.class public Lcom/perm/kate/ChangePasswordActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ChangePasswordActivity.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private et_new_password:Landroid/widget/EditText;

.field private et_old_password:Landroid/widget/EditText;

.field private et_repeat_password:Landroid/widget/EditText;

.field private new_password:Ljava/lang/String;

.field private old_password:Ljava/lang/String;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$1;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 58
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$2;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$3;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/ChangePasswordActivity$5;-><init>(Lcom/perm/kate/ChangePasswordActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->successOnUiThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/ChangePasswordActivity;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/ChangePasswordActivity;->errorOnUiThread(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->forceFocusToOldPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/ChangePasswordActivity;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->checkInputPasswords()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/perm/kate/ChangePasswordActivity;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/ChangePasswordActivity;->disableFields(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->saveInThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ChangePasswordActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/ChangePasswordActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/ChangePasswordActivity;->old_password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/ChangePasswordActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/ChangePasswordActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/ChangePasswordActivity;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/ChangePasswordActivity;->updateToken(Ljava/lang/String;)V

    return-void
.end method

.method private checkInputPasswords()Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->old_password:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->old_password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->forceFocusToOldPassword()V

    return v2

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    const v0, 0x7f0f03bb

    .line 89
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return v2

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v1, 0x7f0f0549

    .line 94
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_2
    return v0
.end method

.method private disableFields(Z)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method private errorOnUiThread(Z)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/ChangePasswordActivity$7;-><init>(Lcom/perm/kate/ChangePasswordActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private forceFocusToOldPassword()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    .line 170
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 171
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private saveInThread()V
    .locals 1

    .line 100
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$4;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private successOnUiThread()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$6;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateToken(Ljava/lang/String;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Session;->setAccessToken(Ljava/lang/String;)V

    .line 141
    sget-object p1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {p1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0072

    .line 31
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090120

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    const p1, 0x7f09011f

    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    const p1, 0x7f090122

    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ce

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
