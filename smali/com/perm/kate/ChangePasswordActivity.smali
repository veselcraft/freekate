.class public Lcom/perm/kate/ChangePasswordActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ChangePasswordActivity.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

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

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$1;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 60
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$2;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$3;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 111
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/ChangePasswordActivity$5;-><init>(Lcom/perm/kate/ChangePasswordActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->successOnUiThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/ChangePasswordActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/ChangePasswordActivity;->errorOnUiThread(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->forceFocusToOldPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/ChangePasswordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->checkInputPasswords()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/perm/kate/ChangePasswordActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/ChangePasswordActivity;->disableFields(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->saveInThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ChangePasswordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/ChangePasswordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->old_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/ChangePasswordActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/ChangePasswordActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChangePasswordActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/ChangePasswordActivity;->updateToken(Ljava/lang/String;)V

    return-void
.end method

.method private checkInputPasswords()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->old_password:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "repeat_password":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->old_password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/perm/kate/ChangePasswordActivity;->forceFocusToOldPassword()V

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 91
    const v2, 0x7f070356

    invoke-virtual {p0, v2}, Lcom/perm/kate/ChangePasswordActivity;->displayToast(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/ChangePasswordActivity;->new_password:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 96
    const v2, 0x7f070357

    invoke-virtual {p0, v2}, Lcom/perm/kate/ChangePasswordActivity;->displayToast(I)V

    goto :goto_0
.end method

.method private disableFields(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v3, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 79
    iget-object v3, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v0, v2

    .line 79
    goto :goto_1

    :cond_2
    move v1, v2

    .line 80
    goto :goto_2
.end method

.method private errorOnUiThread(Z)V
    .locals 1
    .param p1, "focus_to_old"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/perm/kate/ChangePasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/ChangePasswordActivity$7;-><init>(Lcom/perm/kate/ChangePasswordActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private forceFocusToOldPassword()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/perm/kate/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 173
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 174
    return-void
.end method

.method private saveInThread()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$4;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    .line 108
    invoke-virtual {v0}, Lcom/perm/kate/ChangePasswordActivity$4;->start()V

    .line 109
    return-void
.end method

.method private successOnUiThread()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/perm/kate/ChangePasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/perm/kate/ChangePasswordActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChangePasswordActivity$6;-><init>(Lcom/perm/kate/ChangePasswordActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Session;->setAccessToken(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 144
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->setHeaderTitle(I)V

    .line 34
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_old_password:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->et_repeat_password:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->btn_save:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->btn_cancel:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/perm/kate/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/ChangePasswordActivity;->checkedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    return-void
.end method
